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

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

import com.maishapay.R;
import com.maishapay.model.client.response.BaseResponse;
import com.maishapay.model.client.response.TransfertResponse;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.TranfertConfirmationPresenter;
import com.maishapay.ui.dialog.DialogConfirmTransfertFragment;
import com.maishapay.ui.dialog.DialogNumberPickerFragment;
import com.maishapay.ui.dialog.NumPadPossitiveButtonListener;
import com.maishapay.ui.dialog.PossitiveButtonConfirmListener;
import com.maishapay.util.Constants;
import com.maishapay.view.TransfertView;
import com.santalu.widget.MaskEditText;

import org.fabiomsr.moneytextview.MoneyTextView;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;


public class TransfertPaiementActivity extends BaseActivity<TranfertConfirmationPresenter, TransfertView> implements PossitiveButtonConfirmListener, NumPadPossitiveButtonListener, TransfertView {

    private static final int REQUEST_QRCODE = 1;
    private static String CDF = "Francs congolais (CDF)";
    private static String USD = "Dollars (USD)";

    private static String CDF_CURRENCY = "FC";
    private static String USD_CURRENCY = "USD";
    private static String userCurrency;
    private static String pin;

    public static final String EXTRA_TYPE_ABONNEMENT = "type_abonnement";
    public static final String EXTRA_NUMERO_SERVICE = "numero_service";

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    @BindView(R.id.ET_NumeroService)
    EditText ET_NumeroService;
    @BindView(R.id.SP_TypeEnvoi)
    Spinner SP_TypeEnvoi;
    @BindView(R.id.ET_Montant)
    MoneyTextView ET_Montant;
    @BindView(R.id.ET_CodeCarte)
    MaskEditText ET_CodeCarte;

    private ProgressDialog progressDialog;
    private DialogConfirmTransfertFragment dialogForgotFragment;
    private DialogNumberPickerFragment dialogNumberPickerFragment;
    private boolean flagtransfert = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Constants.initStatusBar(this);
        setContentView(R.layout.transfert_paiement_activity);
        ButterKnife.bind(this);

        toolbar.setTitle("Abonnemt " + getIntent().getStringExtra(EXTRA_TYPE_ABONNEMENT));
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

        ET_NumeroService.setEnabled(false);
        ET_NumeroService.setText(getIntent().getStringExtra(EXTRA_NUMERO_SERVICE));
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

    @OnClick(R.id.BTN_Tranfert)
    public void transfertClicked() {
        if (TextUtils.isEmpty(ET_NumeroService.getText().toString())) {
            toastMessage(String.format(getString(R.string.erro_campo), "Numero service"), R.id.ET_Destinataire);
            return;
        }

        if (ET_Montant.getAmount() == 0F) {
            toastMessage(String.format(getString(R.string.erro_campo), "Montant"), R.id.ET_Montant);
            return;
        }

        if (TextUtils.isEmpty(ET_CodeCarte.getRawText())) {
            toastMessage(String.format(getString(R.string.erro_campo), ET_CodeCarte.getHint().toString()), R.id.ET_Destinataire);
            return;
        }

        enabledControls(false);
        getPresenter().transfert(UserPrefencesManager.getCurrentUser().getTelephone(), ET_NumeroService.getText().toString(), userCurrency, String.valueOf(ET_Montant.getAmount()));
    }

    private void initProgressBar() {
        progressDialog = new ProgressDialog(this);
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(false);
        progressDialog.setMessage("Veuillez patienter");
    }

    @Override
    public void showTranfertError(int type) {
        if (type == 0)
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Le numero de destinataire n'existe pas dans Maishapay.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
        else if (type == 2)
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Desolé, votre compte ne dispose pas beaucoup de solde pour effectuer ce transfert.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
        else if (type == 3)
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Le compte de votre destinataire est indisponible pour le moment.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
        else
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Desolé, vous n'êtes pas autorisé à effectuer cette operation, veuillez contacter le service Maishpay.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
    }

    @Override
    public void showConfimationError(int type) {
        dialogForgotFragment.dismiss();
        if (type == 0)
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Le code Pin saisi n'est pas correct.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
        else
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Echec de transfert.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
    }

    @Override
    public void finishToConfirm() {
        flagtransfert = false;
        dialogForgotFragment.dismiss();

        Intent intent = new Intent(this, SuccessPaiementActivity.class);
        intent.putExtra(SuccessPaiementActivity.EXTRA_TITLE_ACTIVITY, "Paiement");
        intent.putExtra(SuccessPaiementActivity.EXTRA_PHONE, UserPrefencesManager.getCurrentUser().getTelephone());
        intent.putExtra(SuccessPaiementActivity.EXTRA_MONNAIE, userCurrency);
        intent.putExtra(SuccessPaiementActivity.EXTRA_MONTANT, String.valueOf(ET_Montant.getAmount()));
        intent.putExtra(SuccessPaiementActivity.EXTRA_DESTINATAIRE, ET_NumeroService.getText().toString());

        startActivity(intent);
        finish();
    }

    @Override
    public void finishToTranfert(BaseResponse baseResponse) {
        flagtransfert = true;

        FragmentManager fm = getSupportFragmentManager();
        dialogForgotFragment = DialogConfirmTransfertFragment.newInstance(((TransfertResponse)baseResponse).getPrenom(), ((TransfertResponse)baseResponse).getNom());
        dialogForgotFragment.show(fm, "DialogConfirmTransfertFragment");
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
    public TranfertConfirmationPresenter providePresenter() {
        return new TranfertConfirmationPresenter();
    }

    private void toastMessage(String message, int view) {
        findViewById(view).startAnimation(AnimationUtils.loadAnimation(this, R.anim.shake));
        Toast.makeText(this, message, Toast.LENGTH_LONG).show();
    }

    @Override
    public void positiveClicked(String pin) {
        TransfertPaiementActivity.pin = pin;

        enabledControls(false);
        getPresenter().confirmTransfert(pin, UserPrefencesManager.getCurrentUser().getTelephone(), ET_NumeroService.getText().toString(), userCurrency, String.valueOf(ET_Montant.getAmount()));
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @OnClick(R.id.ET_Montant)
    public void ET_MontantClicked() {
        FragmentManager fm = getSupportFragmentManager();
        dialogNumberPickerFragment = DialogNumberPickerFragment.newInstance(String.valueOf(ET_Montant.getAmount()), userCurrency);
        dialogNumberPickerFragment.show(fm, "DialogNumberPickerFragment");
    }

    @Override
    public void numPadPositiveClicked(String number) {
        ET_Montant.setAmount(Float.valueOf(number));
    }

    @Override
    public void onUnknownError(String errorMessage) {
        enabledControls(true);

        if (flagtransfert)
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Impossible de se connecter au serveur.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
        else
            Toast.makeText(this, "Impossible de se connecter au serveur.", Toast.LENGTH_LONG).show();
    }

    @Override
    public void onTimeout() {
        enabledControls(true);

        if (flagtransfert)
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Le délais s'est t'écouler.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
        else
            Toast.makeText(this, "Le délais s'est t'écouler.", Toast.LENGTH_LONG).show();
    }

    @Override
    public void onNetworkError() {
        enabledControls(true);

        if (flagtransfert)
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Aucune connexion réseau. Réessayez plus tard.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
        else
            Toast.makeText(this, "Aucune connexion réseau. Réessayez plus tard.", Toast.LENGTH_LONG).show();
    }
}
