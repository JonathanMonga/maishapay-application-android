/*
 * Copyright 2018 Jonathan Monga.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.maishapay.sdk.android;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.AppCompatButton;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.List;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;

public class MaishapayPaymentActivity extends AppCompatActivity implements PossitiveButtonConfirmListener {

    public static final String EXTRA_MAISHAPAY_CONFIGURATION = "config";
    public static final String EXTRA_PAYMENT = "payment_data";
    public static final int REQUEST_SPLASH_SCREEN = 1;
    public static final int REQUEST_LOGIN = 2;
    private static String PIN;
    private static boolean confirmation = false;

    private PaymentResponse mPaymentResponse;
    private TextView nomMarchant;
    private LinearLayout mLinearLayout;
    private RelativeLayout mTaxLinearLayout;
    private RelativeLayout mPrixHTLinearLayout;
    private RelativeLayout mTransportLinearLayout;
    private TextView tv_tax;
    private TextView tv_confirmation;
    private TextView tv_shipping;
    private TextView tv_prix_ht;
    private RecyclerView mRecyclerView;
    private LinearLayout mProgressBarInitialization;
    private RelativeLayout mProgressBarConfirmation;
    private AppCompatButton mAppCompatButtonPayer;
    private AppCompatButton mAppCompatButtonConfirmer;
    private MaishapayConfiguration configuration;
    private MaishapayPayment mMaishapayPayment;
    private MaishapayClient maishapayClient;
    private DialogConfirmPaymentFragment dialogForgotFragment;
    private CompositeDisposable compositeDisposable = new CompositeDisposable();
    private AlertDialog dialog;
    private DialogInterface.OnClickListener negativeDialodButton = new android.content.DialogInterface.OnClickListener() {
        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            finish();
            dialog.dismiss();
        }
    };

    private DialogInterface.OnClickListener positiveDialodButton = new DialogInterface.OnClickListener() {
        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            dialog.dismiss();
            if (confirmation)
                confirmPayment(PIN);
            else
                checkPayment();

        }
    };

    private Toolbar mToolbar;
    private ArticleAdapter mAdapter;
    private MaishapayPaymentItem maishapayPaymentItem;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        overridePendingTransition(android.R.anim.slide_in_left, android.R.anim.slide_in_left);
        setContentView(R.layout.payment_activity);

        mToolbar = findViewById(R.id.toolbar_actionbar);
        setSupportActionBar(mToolbar);

        configuration = getIntent().getParcelableExtra(MaishapayPaymentActivity.EXTRA_MAISHAPAY_CONFIGURATION);
        mMaishapayPayment = getIntent().getParcelableExtra(MaishapayPaymentActivity.EXTRA_PAYMENT);

        initClient(getIntent());

        if (!MaishapayUserSessionManager.isFirstLaunsh(this))
            startActivityForResult(new Intent(this, MaishapaySplashScreenActivity.class), REQUEST_SPLASH_SCREEN);
        else if (!MaishapayUserSessionManager.isUserExist(this)) {
            Intent intent = new Intent(this, MaishapayLoginActivity.class);
            intent.putExtra(EXTRA_MAISHAPAY_CONFIGURATION, configuration);
            startActivityForResult(intent, REQUEST_LOGIN);
        }

        mLinearLayout = findViewById(R.id.layout);
        mTaxLinearLayout = findViewById(R.id.tax_layout);
        mPrixHTLinearLayout = findViewById(R.id.prix_ht_layout);
        mTransportLinearLayout = findViewById(R.id.transport_layout);
        mRecyclerView = findViewById(R.id.recycler_view);
        tv_confirmation = findViewById(R.id.tv_confirmation);
        tv_prix_ht = findViewById(R.id.prix_ht);
        tv_shipping = findViewById(R.id.prix_transport);
        tv_tax = findViewById(R.id.prix_tax);
        mProgressBarInitialization = findViewById(R.id.progressbarIntialization);
        mProgressBarConfirmation = findViewById(R.id.progressbarConfirmation);
        nomMarchant = findViewById(R.id.marchant_nom);
        mAppCompatButtonPayer = findViewById(R.id.appCompatButtonPayer);
        mAppCompatButtonConfirmer = findViewById(R.id.appCompatButtonConfirmer);
        mLinearLayout.setVisibility(View.GONE);

        if (mMaishapayPayment.getDetails() != null) {
            if (mMaishapayPayment.getDetails().getTax() == null)
                mTaxLinearLayout.setVisibility(View.GONE);
            else
                tv_tax.setText(String.format("%s %%", MaishapayPaymentActivity.truncFloat(mMaishapayPayment.getDetails().getTax().floatValue())));

            if (mMaishapayPayment.getDetails().getShipping() == null)
                mTransportLinearLayout.setVisibility(View.GONE);
            else
                tv_shipping.setText(String.format("%s %s", MaishapayPaymentActivity.truncFloat(mMaishapayPayment.getDetails().getShipping().floatValue()), mMaishapayPayment.getCurrencyPayment().getCurrencyName()));

            tv_prix_ht.setText(String.format("%s %s", MaishapayPaymentActivity.truncFloat(mMaishapayPayment.getDetails().getSubTotal().floatValue()), mMaishapayPayment.getCurrencyPayment().getCurrencyName()));
        } else {
            mTaxLinearLayout.setVisibility(View.GONE);
            mTransportLinearLayout.setVisibility(View.GONE);
            mPrixHTLinearLayout.setVisibility(View.GONE);
        }

        if (mMaishapayPayment.getItems().size() > 0)
            mAdapter = new ArticleAdapter(mMaishapayPayment.getItems());
        else {
            maishapayPaymentItem = new MaishapayPaymentItem(mMaishapayPayment.getName(), mMaishapayPayment.getDescription(), mMaishapayPayment.getTotalAmount().doubleValue(), mMaishapayPayment.getCurrencyPayment(), 1);
            List<MaishapayPaymentItem> maishapayPaymentItems = new ArrayList<>();
            maishapayPaymentItems.add(maishapayPaymentItem);
            mAdapter = new ArticleAdapter(maishapayPaymentItems);
        }

        RecyclerView.LayoutManager mLayoutManager = new LinearLayoutManager(getApplicationContext());
        mRecyclerView.setLayoutManager(mLayoutManager);
        mRecyclerView.setItemAnimator(new DefaultItemAnimator());
        mRecyclerView.addItemDecoration(new ItemDividerDecoration(this, LinearLayoutManager.VERTICAL));
        mRecyclerView.setAdapter(mAdapter);
        mRecyclerView.addOnItemTouchListener(new RecyclerViewTouchListener(getApplicationContext(), mRecyclerView, new RecyclerViewClickListener() {
            @Override
            public void onClick(View view, int position) {
                if (mMaishapayPayment.getItems().size() > 0)
                    showDescription(String.format("%s\n%s", mMaishapayPayment.getItems().get(position).getName(), mMaishapayPayment.getItems().get(position).getDescription()));
                else
                    showDescription(String.format("%s\n%s", maishapayPaymentItem.getName(), maishapayPaymentItem.getDescription()));
            }

            @Override
            public void onLongClick(View view, int position) {
                if (mMaishapayPayment.getItems().size() > 0)
                    showDescription(String.format("%s\n%s", mMaishapayPayment.getItems().get(position).getName(), mMaishapayPayment.getItems().get(position).getDescription()));
                else
                    showDescription(String.format("%s\n%s", maishapayPaymentItem.getName(), maishapayPaymentItem.getDescription()));
            }
        }));

        mAppCompatButtonPayer.setEnabled(false);
        checkPayment();

        mAppCompatButtonConfirmer.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                confirmPayment(PIN);
            }
        });
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (resultCode == Activity.RESULT_OK) {
            switch (requestCode) {
                case REQUEST_SPLASH_SCREEN: {
                    Intent intent = new Intent(this, MaishapayLoginActivity.class);
                    intent.putExtra(EXTRA_MAISHAPAY_CONFIGURATION, configuration);
                    startActivityForResult(intent, REQUEST_LOGIN);
                    break;
                }

                case REQUEST_LOGIN: {
                    enabledControls(false);
                    checkPayment();
                    break;
                }

                default:
                    break;
            }
        } else {
            finish();
        }
    }

    private void checkPayment() {
        enabledControls(false);
        compositeDisposable.add(maishapayClient.request_payment(configuration.getDevApiKey(), mMaishapayPayment.getTotalAmount().toString(), mMaishapayPayment.getCurrencyPayment().getCurrencyName())
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new Consumer<PaymentResponse>() {
                    @Override
                    public void accept(final PaymentResponse response) {
                        mPaymentResponse = response;

                        switch (response.getResultat()) {
                            case 0: {
                                setResult(Activity.RESULT_CANCELED);
                                finish();
                                break;
                            }

                            default: {
                                enabledControls(true);
                                nomMarchant.setText(response.getApi_info().getProject_name());
                                mAppCompatButtonPayer.setText(String.format("Payer %s %s", MaishapayPaymentActivity.truncFloat(Float.valueOf(response.getMontant())), response.getMonnaie()));

                                mAppCompatButtonPayer.setEnabled(true);
                                mAppCompatButtonPayer.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View view) {
                                        FragmentManager fm = getSupportFragmentManager();
                                        dialogForgotFragment = DialogConfirmPaymentFragment.newInstance(response.getApi_info().getProject_name());
                                        dialogForgotFragment.show(fm, "DialogConfirmTransfertFragment");
                                    }
                                });
                                break;
                            }
                        }
                    }
                }, new Consumer<Throwable>() {
                    @Override
                    public void accept(Throwable throwable) {
                        showDialogSettings();
                    }
                }));
    }

    private void enabledControls(boolean isEnabled) {
        if (isEnabled) {
            mProgressBarInitialization.setVisibility(View.GONE);
            mLinearLayout.setVisibility(View.VISIBLE);
        } else {
            mProgressBarInitialization.setVisibility(View.VISIBLE);
            mLinearLayout.setVisibility(View.GONE);
        }
    }

    private void initClient(Intent intent) {
        MaishapayConfiguration configuration = intent.getParcelableExtra(EXTRA_MAISHAPAY_CONFIGURATION);
        maishapayClient = MaishapayClient.getInstance(this, configuration.getEnvironment());
    }

    private void showDialogSettings() {
        dialog = new AlertDialog.Builder(this)
                .setTitle(R.string.reessayer)
                .setCancelable(false)
                .setMessage(R.string.msg_network_error)
                .setNegativeButton(R.string.annuler, negativeDialodButton)
                .setPositiveButton(R.string.parametres, positiveDialodButton)
                .show();
    }

    private void showDescription(String description) {
        dialog = new AlertDialog.Builder(this)
                .setTitle(R.string.description)
                .setMessage(description)
                .show();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        compositeDisposable.clear();
    }

    public static String truncFloat(float number) {
        DecimalFormat df = new DecimalFormat("#######.##");
        DecimalFormatSymbols dfs = new DecimalFormatSymbols();
        dfs.setDecimalSeparator(',');
        df.setDecimalFormatSymbols(dfs);
        return df.format(BigDecimal.valueOf(number).setScale(2, BigDecimal.ROUND_HALF_UP).floatValue());
    }

    @Override
    public void positiveClicked(String pin) {
        confirmation = true;
        dialogForgotFragment.dismiss();
        MaishapayPaymentActivity.PIN = pin;
        mAppCompatButtonPayer.setVisibility(View.GONE);
        mAppCompatButtonConfirmer.setVisibility(View.VISIBLE);
        tv_confirmation.setVisibility(View.VISIBLE);
        tv_confirmation.setText(String.format("Vous etes sur le point de payer %s %s", truncFloat(Float.valueOf(mPaymentResponse.getMontant())), mPaymentResponse.getMonnaie()));
        mAppCompatButtonConfirmer.setText("Confirmer");
    }

    private void confirmPayment(String pin) {
        mProgressBarConfirmation.setVisibility(View.VISIBLE);
        compositeDisposable.add(maishapayClient.transfert_compte_confirmation(pin, mPaymentResponse.getApi_info().getTelephone(), MaishapayUserSessionManager.getCurrentUser(this).getTelephone(), mPaymentResponse.getMonnaie(), mPaymentResponse.getMontant())
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new Consumer<TransactionConfirmationResponse>() {
                    @Override
                    public void accept(final TransactionConfirmationResponse response) {
                        switch (response.getResultat()) {
                            case 0: {
                                mProgressBarConfirmation.setVisibility(View.GONE);
                                Toast.makeText(MaishapayPaymentActivity.this, "Une erreur se produite", Toast.LENGTH_LONG).show();
                                break;
                            }

                            default: {
                                mProgressBarConfirmation.setVisibility(View.GONE);
                                setResult(Activity.RESULT_OK);
                                finish();
                                break;
                            }
                        }
                    }
                }, new Consumer<Throwable>() {
                    @Override
                    public void accept(Throwable throwable) {
                        mProgressBarConfirmation.setVisibility(View.GONE);
                        showDialogSettings();
                    }
                }));
    }
}
