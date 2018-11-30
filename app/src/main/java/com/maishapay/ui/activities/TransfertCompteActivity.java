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
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.MultiAutoCompleteTextView;
import android.widget.Spinner;
import android.widget.Toast;

import com.android.ex.chips.BaseRecipientAdapter;
import com.android.ex.chips.RecipientEditTextView;
import com.google.gson.Gson;
import com.maishapay.R;
import com.maishapay.model.client.response.BaseResponse;
import com.maishapay.model.client.response.PaymentResponse;
import com.maishapay.model.client.response.TransfertResponse;
import com.maishapay.model.client.response.UserResponse;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.TranfertConfirmationPresenter;
import com.maishapay.ui.dialog.DialogConfirmTransfertFragment;
import com.maishapay.ui.dialog.DialogNumberPickerFragment;
import com.maishapay.ui.dialog.NumPadPossitiveButtonListener;
import com.maishapay.ui.dialog.PossitiveButtonConfirmListener;
import com.maishapay.ui.qrcode.DecoderActivity;
import com.maishapay.util.Constants;
import com.maishapay.view.TransfertView;
import com.wajahatkarim3.easyvalidation.core.Validator;

import org.fabiomsr.moneytextview.MoneyTextView;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;
import dmax.dialog.SpotsDialog;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

import static com.maishapay.ui.activities.PaymentWebActivity.EXTRA_ERROR_CODE;
import static com.maishapay.ui.activities.PaymentWebActivity.RESULT_TRANSFERT_ERROR;


public class TransfertCompteActivity extends BaseActivity<TranfertConfirmationPresenter, TransfertView> implements PossitiveButtonConfirmListener, NumPadPossitiveButtonListener, TransfertView {

    private static final int REQUEST_QRCODE = 1;
    private static final int REQUEST_PAYMENT = 2;
    private static String CDF = "Francs congolais (CDF)";
    private static String USD = "Dollars (USD)";

    private static String CDF_CURRENCY = "FC";
    private static String USD_CURRENCY = "USD";
    private static String userCurrency;
    private static String destinatairePhone;
    private static UserResponse userResponse;

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    @BindView(R.id.ET_Destinataire)
    RecipientEditTextView ET_Destinataire;
    @BindView(R.id.SP_TypeEnvoi)
    Spinner SP_TypeEnvoi;
    @BindView(R.id.ET_Montant)
    MoneyTextView ET_Montant;

    private AlertDialog progressDialog;
    private DialogConfirmTransfertFragment dialogForgotFragment;
    private DialogNumberPickerFragment dialogNumberPickerFragment;
    private boolean flagtransfert = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Constants.initStatusBar(this);
        setContentView(R.layout.transfert_compte_activity);
        ButterKnife.bind(this);

        toolbar.setTitle("Transfert d'argent");
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

        ET_Destinataire.setMaxChips(1);
        ET_Destinataire.setChipNotCreatedListener(new RecipientEditTextView.ChipNotCreatedListener() {
            @Override
            public void chipNotCreated(String chipText) {
                Snacky.builder()
                        .setView(findViewById(R.id.root))
                        .setText("Desolé, un seul numéro suffit.")
                        .setDuration(Snacky.LENGTH_LONG)
                        .error()
                        .show();
            }
        });

        ET_Destinataire.setTokenizer(new MultiAutoCompleteTextView.CommaTokenizer());
        BaseRecipientAdapter adapter = new BaseRecipientAdapter(BaseRecipientAdapter.QUERY_TYPE_PHONE, this);
        adapter.setShowMobileOnly(false);
        ET_Destinataire.setAdapter(adapter);
        ET_Destinataire.dismissDropDownOnItemSelected(true);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_transfert, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                finish();
                return true;
            case R.id.action_scan:
                Intent intent = new Intent(this, DecoderActivity.class);
                startActivityForResult(intent, REQUEST_QRCODE);
                return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == REQUEST_QRCODE) {
            if (resultCode == Activity.RESULT_OK) {
                if (Constants.containsIgnoreCase(data.getStringExtra(DecoderActivity.EXTRA_QRCODE), "urn:maishapay://data=")) {
                    String response = data.getStringExtra(DecoderActivity.EXTRA_QRCODE).substring(21, data.getStringExtra(DecoderActivity.EXTRA_QRCODE).length());
                    Intent intent = new Intent(this, PaymentWebActivity.class);
                    intent.putExtra(PaymentWebActivity.EXTRA_DATA, response);
                    startActivityForResult(intent, REQUEST_PAYMENT);
                } else if (Constants.containsIgnoreCase(data.getStringExtra(DecoderActivity.EXTRA_QRCODE), "telephone")) {
                    userResponse = new Gson().fromJson(data.getStringExtra(DecoderActivity.EXTRA_QRCODE), UserResponse.class);
                    ET_Destinataire.setText(userResponse.getTelephone());
                } else
                    Snacky.builder()
                            .setView(findViewById(R.id.root))
                            .setText("Désolé, vous avez scanné un mauvais Code QR.")
                            .setDuration(Snacky.LENGTH_LONG)
                            .error()
                            .show();
            }
        } else if (requestCode == REQUEST_PAYMENT) {
            if (resultCode == RESULT_TRANSFERT_ERROR) {
                showTranfertError(data.getIntExtra(EXTRA_ERROR_CODE, -1));
            } else {
                Snacky.builder()
                        .setView(findViewById(R.id.root))
                        .setText("Aucune connexion réseau. Réessayez plus tard.")
                        .setDuration(Snacky.LENGTH_LONG)
                        .error()
                        .show();
            }
        }
    }

    @OnClick(R.id.BTN_Tranfert)
    public void transfertClicked() {
        boolean validator = new Validator(ET_Destinataire.getText().toString())
                .nonEmpty()
                .minLength(8)
                .maxLength(13)
                .textNotEqualTo(UserPrefencesManager.getCurrentUser().getTelephone())
                .check();

        if (!validator) {
            toastMessage("Le numero est incorrect", R.id.ET_Destinataire);
            return;
        }

        if ((userCurrency.equals(CDF_CURRENCY) && ET_Montant.getAmount() < 3000F) || (userCurrency.equals(USD_CURRENCY) && ET_Montant.getAmount() < 3F) ) {
            toastMessage("Montant incorrect.", R.id.ET_Montant);
            return;
        }

        if (ET_Destinataire.getRecipients().length == 0)
            destinatairePhone = Constants.generatePhoneNumber(ET_Destinataire.getText().toString());
        else
            destinatairePhone = Constants.generatePhoneNumber(ET_Destinataire.getRecipients()[0].getEntry().getDestination());

        flagtransfert = true;
        enabledControls(false);
        getPresenter().transfert(UserPrefencesManager.getCurrentUser().getTelephone(), destinatairePhone, userCurrency, String.valueOf(ET_Montant.getAmount()));
    }

    private void initProgressBar() {
        progressDialog = new SpotsDialog(this, R.style.Custom);
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
        if (type == 0)
            Toast.makeText(this, "Le code Pin saisi n'est pas correct.", Toast.LENGTH_LONG).show();
        else
            Toast.makeText(this, "Echec de transfert.", Toast.LENGTH_LONG).show();
    }

    @Override
    public void finishToConfirm() {
        dialogForgotFragment.dismiss();

        Intent intent = new Intent(this, SuccessPaiementActivity.class);
        intent.putExtra(SuccessPaiementActivity.EXTRA_TITLE_ACTIVITY, "Transfert");
        intent.putExtra(SuccessPaiementActivity.EXTRA_PHONE, UserPrefencesManager.getCurrentUser().getTelephone());
        intent.putExtra(SuccessPaiementActivity.EXTRA_MONNAIE, userCurrency);
        intent.putExtra(SuccessPaiementActivity.EXTRA_MONTANT, String.valueOf(ET_Montant.getAmount()));
        intent.putExtra(SuccessPaiementActivity.EXTRA_DESTINATAIRE, destinatairePhone);

        startActivity(intent);
        finish();
    }

    @Override
    public void finishToTranfert(BaseResponse baseResponse) {
        flagtransfert = false;

        if (baseResponse instanceof TransfertResponse) {
            FragmentManager fm = getSupportFragmentManager();
            dialogForgotFragment = DialogConfirmTransfertFragment.newInstance(((TransfertResponse) baseResponse).getPrenom(), ((TransfertResponse) baseResponse).getNom());
            dialogForgotFragment.show(fm, "DialogConfirmTransfertFragment");
        } else {
            Toast.makeText(this, ((PaymentResponse) baseResponse).getMessage(), Toast.LENGTH_LONG).show();
        }
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
        enabledControls(false);
        getPresenter().confirmTransfert(pin, UserPrefencesManager.getCurrentUser().getTelephone(), ET_Destinataire.getText().toString(), userCurrency, String.valueOf(ET_Montant.getAmount()));
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @OnClick(R.id.ET_Montant)
    public void ET_MontantClicked() {
        FragmentManager fm = getSupportFragmentManager();
        dialogNumberPickerFragment = DialogNumberPickerFragment.newInstance("0", userCurrency);
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
