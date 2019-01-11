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
import android.provider.Settings;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.AppCompatButton;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;

public class MaishapayPaymentActivity extends AppCompatActivity {

    public static final String EXTRA_MAISHAPAY_CONFIGURATION = "config";
    public static final String EXTRA_PAYMENT = "payment_data";
    public static final int REQUEST_SPLASH_SCREEN = 1;
    public static final int REQUEST_LOGIN = 2;

    private TextView nomMarchant;
    private LinearLayout mLinearLayout;
    private TextView tv_tax;
    private TextView tv_shipping;
    private TextView tv_prix_ht;
    private RecyclerView mRecyclerView;
    private ProgressBar mProgressBar;
    private AppCompatButton mAppCompatButton;
    private MaishapayConfiguration configuration;
    private MaishapayPayment mMaishapayPayment;
    private MaishapayClient maishapayClient;
    private CompositeDisposable compositeDisposable = new CompositeDisposable();
    private AlertDialog dialog;
    private DialogInterface.OnClickListener negativeDialodButton = new android.content.DialogInterface.OnClickListener() {
        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            dialog.dismiss();
        }
    };

    private DialogInterface.OnClickListener positiveDialodButton = new DialogInterface.OnClickListener() {
        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                dialog.dismiss();
                startActivity(new Intent(Settings.ACTION_WIRELESS_SETTINGS));
            } catch (Exception ex) {
                dialog.dismiss();
            }
        }
    };
    private Toolbar mToolbar;
    private ArticleAdapter mAdapter;

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

        if (! MaishapayUserSessionManager.isFirstLaunsh(this))
            startActivityForResult(new Intent(this, MaishapaySplashScreenActivity.class), REQUEST_SPLASH_SCREEN);
        else if (! MaishapayUserSessionManager.isUserExist(this)) {
            Intent intent = new Intent(this, MaishapayLoginActivity.class);
            intent.putExtra(EXTRA_MAISHAPAY_CONFIGURATION, configuration);
            startActivityForResult(intent, REQUEST_LOGIN);
        }

        mLinearLayout = findViewById(R.id.layout);
        mRecyclerView = findViewById(R.id.recycler_view);
        tv_prix_ht = findViewById(R.id.prix_ht);
        tv_shipping = findViewById(R.id.prix_transport);
        tv_tax = findViewById(R.id.prix_tax);
        mProgressBar = findViewById(R.id.progressbar);
        nomMarchant = findViewById(R.id.marchant_nom);
        mAppCompatButton = findViewById(R.id.appCompatButtonPayer);

        tv_tax.setText(String.format("%s %s", MaishapayPaymentActivity.truncFloat(mMaishapayPayment.getDetails().getTax().floatValue()), mMaishapayPayment.getCurrencyPayment().getCurrencyName()));
        tv_shipping.setText(String.format("%s %s", MaishapayPaymentActivity.truncFloat(mMaishapayPayment.getDetails().getShipping().floatValue()), mMaishapayPayment.getCurrencyPayment().getCurrencyName()));
        tv_prix_ht.setText(String.format("%s %s", MaishapayPaymentActivity.truncFloat(mMaishapayPayment.getDetails().getSubTotal().floatValue()), mMaishapayPayment.getCurrencyPayment().getCurrencyName()));

        mAdapter = new ArticleAdapter(mMaishapayPayment.getItems());
        RecyclerView.LayoutManager mLayoutManager = new LinearLayoutManager(getApplicationContext());
        mRecyclerView.setLayoutManager(mLayoutManager);
        mRecyclerView.setItemAnimator(new DefaultItemAnimator());
        // recyclerView.addItemDecoration(new ItemDividerDecoration(this, LinearLayoutManager.VERTICAL));
        mRecyclerView.setAdapter(mAdapter);
        mRecyclerView.addOnItemTouchListener(new RecyclerViewTouchListener(getApplicationContext(), mRecyclerView, new RecyclerViewClickListener() {
            @Override
            public void onClick(View view, int position) {
                Toast.makeText(getApplicationContext(), mMaishapayPayment.getItems().get(position).getName() + " is clicked!", Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onLongClick(View view, int position) {
                Toast.makeText(getApplicationContext(), mMaishapayPayment.getItems().get(position).getName() + " is long pressed!", Toast.LENGTH_SHORT).show();

            }
        }));

        mAppCompatButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Toast.makeText(MaishapayPaymentActivity.this, "Paiement effectuer avec succes.", Toast.LENGTH_LONG).show();
            }
        });

        compositeDisposable.add(maishapayClient.request_payment(configuration.getDevApiKey(), mMaishapayPayment.getTotalAmount().toString(), mMaishapayPayment.getCurrencyPayment().getCurrencyName())
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new Consumer<PaymentResponse>() {
                    @Override
                    public void accept(PaymentResponse response) {
                        Log.e("Maishapay", response.getResultat()+"");
                        switch (response.getResultat()) {
                            case 0: {
                                setResult(Activity.RESULT_CANCELED);
                                finish();
                                break;
                            }

                            default: {
                                enabledControls(true);
                                nomMarchant.setText(response.getApi_info().getProject_name());
                                mAppCompatButton.setText(String.format("Payer %s %s", MaishapayPaymentActivity.truncFloat(Float.valueOf(response.getMontant())), response.getMonnaie()));
                                break;
                            }
                        }
                    }
                }, new Consumer<Throwable>() {
                    @Override
                    public void accept(Throwable throwable) {
                        enabledControls(true);
                        showDialog();
                    }
                }));
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if(resultCode == Activity.RESULT_OK) {
            switch (requestCode) {
                case REQUEST_SPLASH_SCREEN : {
                    Intent intent = new Intent(this, MaishapayLoginActivity.class);
                    intent.putExtra(EXTRA_MAISHAPAY_CONFIGURATION, configuration);
                    startActivityForResult(intent, REQUEST_LOGIN);
                    break;
                }

                case REQUEST_LOGIN : {
                    enabledControls(false);
                    compositeDisposable.add(maishapayClient.request_payment(configuration.getDevApiKey(), mMaishapayPayment.getTotalAmount().toString(), mMaishapayPayment.getCurrencyPayment().getCurrencyName())
                            .subscribeOn(Schedulers.io())
                            .observeOn(AndroidSchedulers.mainThread())
                            .subscribe(new Consumer<PaymentResponse>() {
                                @Override
                                public void accept(PaymentResponse response) {
                                    switch (response.getResultat()) {
                                        case 0: {
                                            enabledControls(true);
                                            Snackbar.make(findViewById(R.id.root), R.string.msg_login_error, Snackbar.LENGTH_LONG).show();
                                            break;
                                        }

                                        default: {
                                            enabledControls(true);
                                            nomMarchant.setText(response.getApi_info().getProject_name());
                                            mAppCompatButton.setText(String.format("Payer %s %s", MaishapayPaymentActivity.truncFloat(Float.valueOf(response.getMontant())), response.getMonnaie()));

                                            break;
                                        }
                                    }
                                }
                            }, new Consumer<Throwable>() {
                                @Override
                                public void accept(Throwable throwable) {
                                    enabledControls(true);
                                    showDialog();
                                }
                            }));
                    break;
                }

                default:
                    break;
            }
        } else {
            finish();
        }
    }

    private void enabledControls(boolean isEnabled){
        if(isEnabled) {
            mProgressBar.setVisibility(View.GONE);
            mLinearLayout.setVisibility(View.VISIBLE);
            mAppCompatButton.setVisibility(View.VISIBLE);
        } else {
            mProgressBar.setVisibility(View.VISIBLE);
            mLinearLayout.setVisibility(View.GONE);
            mAppCompatButton.setVisibility(View.GONE);
        }
    }

    private void initClient(Intent intent) {
        MaishapayConfiguration configuration = intent.getParcelableExtra(EXTRA_MAISHAPAY_CONFIGURATION);
        maishapayClient = MaishapayClient.getInstance(this, configuration.getEnvironment());
    }

    private void showDialog() {
        dialog = new AlertDialog.Builder(this)
                .setIcon(android.R.drawable.ic_dialog_info)
                .setTitle(R.string.reessayer)
                .setMessage(R.string.msg_network_error)
                .setNegativeButton(R.string.annuler, negativeDialodButton)
                .setPositiveButton(R.string.parametres, positiveDialodButton)
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
}
