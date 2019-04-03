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

package com.maishapay.ui.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.Spinner;
import android.widget.Toast;

import com.crashlytics.android.Crashlytics;
import com.maishapay.R;
import com.maishapay.model.client.response.EpargneResponse;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.EpargnePersonellePresenter;
import com.maishapay.ui.dialog.DialogConfirmEpargneFragment;
import com.maishapay.ui.dialog.PossitiveButtonConfirmListener;
import com.maishapay.ui.qrcode.DecoderActivity;
import com.maishapay.util.Constants;
import com.maishapay.view.EpargnePersonelleView;
import com.nmaltais.calcdialog.CalcDialog;

import org.fabiomsr.moneytextview.MoneyTextView;

import java.math.BigDecimal;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;
import dmax.dialog.SpotsDialog;
import io.fabric.sdk.android.Fabric;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

import static com.maishapay.ui.activities.DrawerActivity.EXTRA_EPARGNE_DRAWER;


public class EpargnePersonnelleActivity extends BaseActivity<EpargnePersonellePresenter, EpargnePersonelleView> implements CalcDialog.CalcDialogCallback, PossitiveButtonConfirmListener, EpargnePersonelleView {

    private static final int REQUEST_QRCODE = 1;
    public static final int RESULT_TRANSFERT_EPARGNE_OK = 2;
    private static final int DIALOG_REQUEST_CODE = 0;

    private static String CDF = "Francs congolais (CDF)";
    private static String USD = "Dollars (USD)";

    private static String CDF_CURRENCY = "FC";
    private static String USD_CURRENCY = "USD";
    public static final String EXTRA_REFRESH = "refresh";

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    @BindView(R.id.SP_TypeEnvoi)
    Spinner SP_TypeEnvoi;
    @BindView(R.id.ET_Montant)
    MoneyTextView ET_Montant;

    private SpotsDialog progressDialog;
    private DialogConfirmEpargneFragment dialogConfirmEpargneFragment;
    private static String userCurrency;
    private boolean flagTransfert = false;
    private CalcDialog calcDialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Fabric.with(this, new Crashlytics());
        setContentView(R.layout.epargne_personnelle_activity);
        ButterKnife.bind(this);

        logUser();

        toolbar.setTitle("Epargne personnelle");
        setSupportActionBar(toolbar);

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        initProgressBar();

        SP_TypeEnvoi.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                String[] currencies = getResources().getStringArray(R.array.option_devise);

                if (currencies[i].equals(CDF))
                    userCurrency = CDF_CURRENCY;
                else
                    userCurrency = USD_CURRENCY;

                ET_Montant.setAmount(ET_Montant.getAmount(), userCurrency);
            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {

            }
        });

        calcDialog = CalcDialog.newInstance(DIALOG_REQUEST_CODE);

        BigDecimal bigDecimal = new BigDecimal(ET_Montant.getAmount());

        calcDialog.setValue(bigDecimal)
                .setFormatSymbols(',', '.')
                .setShowSignButton(true)
                .setShowAnswerButton(true)
                .setSignCanBeChanged(true, bigDecimal.signum())
                .setClearDisplayOnOperation(true)
                .setShowZeroWhenNoValue(true)
                .setMaxValue(new BigDecimal(1000000))
                .setMaxDigits(7, 2);
    }

    private void logUser() {
        // TODO: Use the current user's information
        // You can call any combination of these three methods
        if(UserPrefencesManager.getCurrentUser() != null) {
            Crashlytics.setUserIdentifier(UserPrefencesManager.getCurrentUser().getTelephone());
            Crashlytics.setUserEmail(UserPrefencesManager.getCurrentUser().getEmail());
            Crashlytics.setUserName(UserPrefencesManager.getCurrentUser().getPrenom() + " " + UserPrefencesManager.getCurrentUser().getNom());
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                finish();
                return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @OnClick(R.id.qrcode)
    public void qrCodeClicked() {
        Intent intent = new Intent(this, DecoderActivity.class);
        startActivityForResult(intent, REQUEST_QRCODE);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == REQUEST_QRCODE) {
            if (resultCode == Activity.RESULT_OK) {
                String text = data.getStringExtra(DecoderActivity.EXTRA_QRCODE);
                Toast.makeText(this, text, Toast.LENGTH_LONG).show();
            }
        }
    }

    @OnClick(R.id.BTN_Tranfert)
    public void transfertClicked() {
        if (ET_Montant.getAmount() == 0F) {
            toastMessage(String.format(getString(R.string.erro_campo), "Montant"), R.id.ET_Montant);
            return;
        }

        enabledControls(false);
        getPresenter().transfertEpargnePersonelle("", UserPrefencesManager.getCurrentUser().getTelephone(), userCurrency, String.valueOf(ET_Montant.getAmount()));
    }

    private void initProgressBar() {
        progressDialog = new SpotsDialog(this, R.style.Custom);
    }
    @Override
    public void showTranfertError(int type) {
        enabledControls(true);
        if (type == 0)
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Désolé, vous ne disposez pas de compte epargne, veuillez en créer pour faire ce tranfert.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
        else if (type == 2)
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Désolé, votre solde est insuffisant pour ce transfert.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
    }

    @Override
    public void showConfimationError(int type) {
        dialogConfirmEpargneFragment.dismiss();
        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Votre transfert à echoué, veuillez recommencer.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
    }

    @Override
    public void finishToConfirm() {
        flagTransfert = false;
        dialogConfirmEpargneFragment.dismiss();
        if(getIntent().hasExtra(EXTRA_EPARGNE_DRAWER)) {
            setResult(RESULT_TRANSFERT_EPARGNE_OK);
        } else {
            Intent intent = new Intent();
            intent.putExtra(EXTRA_REFRESH, true);
            setResult(Activity.RESULT_OK, intent);
        }

        finish();
    }

    @Override
    public void finishToTranfert(EpargneResponse epargneResponse) {
        flagTransfert = true;

        FragmentManager fm = getSupportFragmentManager();
        dialogConfirmEpargneFragment = DialogConfirmEpargneFragment.newInstance(String.valueOf(ET_Montant.getAmount()), userCurrency);
        dialogConfirmEpargneFragment.show(fm, "DialogConfirmEpargneFragment");
    }

    @Override
    public void enabledControls(boolean isEnabled) {
        if (isEnabled) {
            progressDialog.dismiss();
        } else {
            progressDialog.show();
        }
    }

    @NonNull
    @Override
    public EpargnePersonellePresenter providePresenter() {
        return new EpargnePersonellePresenter();
    }

    private void toastMessage(String message, int view) {
        findViewById(view).startAnimation(AnimationUtils.loadAnimation(this, R.anim.shake));
        Toast.makeText(this, message, Toast.LENGTH_LONG).show();
    }

    @Override
    public void positiveClicked(String pin) {
        enabledControls(false);
        getPresenter().confirmTransfertEpargne("", UserPrefencesManager.getCurrentUser().getTelephone(), userCurrency, String.valueOf(ET_Montant.getAmount()));
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @OnClick(R.id.ET_Montant)
    public void ET_MontantClicked(){
        FragmentManager fm = getSupportFragmentManager();

        if (fm.findFragmentByTag("calc_dialog") == null) {
            calcDialog.show(fm, "calc_dialog");
        }
    }

    @Override
    public void onUnknownError(String errorMessage) {
        enabledControls(true);

        Constants.showOnUnknownError(findViewById(R.id.root), new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                enabledControls(false);

                if(flagTransfert)
                    getPresenter().confirmTransfertEpargne("", UserPrefencesManager.getCurrentUser().getTelephone(), userCurrency, String.valueOf(ET_Montant.getAmount()));
                else
                    getPresenter().transfertEpargnePersonelle("", UserPrefencesManager.getCurrentUser().getTelephone(), userCurrency, String.valueOf(ET_Montant.getAmount()));
            }
        });
    }

    @Override
    public void onTimeout() {
        enabledControls(true);

        Constants.showOnTimeoutErro(findViewById(R.id.root), new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                enabledControls(false);
                if(flagTransfert)
                    getPresenter().confirmTransfertEpargne("", UserPrefencesManager.getCurrentUser().getTelephone(), userCurrency, String.valueOf(ET_Montant.getAmount()));
                else
                    getPresenter().transfertEpargnePersonelle("", UserPrefencesManager.getCurrentUser().getTelephone(), userCurrency, String.valueOf(ET_Montant.getAmount()));
            }
        });
    }

    @Override
    public void onNetworkError() {
        enabledControls(true);

        Constants.showOnNetworkError(findViewById(R.id.root), new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                enabledControls(false);
                if(flagTransfert)
                    getPresenter().confirmTransfertEpargne("", UserPrefencesManager.getCurrentUser().getTelephone(), userCurrency, String.valueOf(ET_Montant.getAmount()));
                else
                    getPresenter().transfertEpargnePersonelle("", UserPrefencesManager.getCurrentUser().getTelephone(), userCurrency, String.valueOf(ET_Montant.getAmount()));
            }
        });
    }

    @Override
    public void onValueEntered(int requestCode, @Nullable BigDecimal value) {
        ET_Montant.setAmount(value.floatValue(), userCurrency);
    }
}
