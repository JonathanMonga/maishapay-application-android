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
import android.app.ProgressDialog;
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
import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.client.response.RetraitResponse;
import com.maishapay.model.domain.QRCodeDataUser;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.RetraitConfirmationPresenter;
import com.maishapay.ui.dialog.DialogConfirmRetraitFragment;
import com.maishapay.ui.dialog.DialogNumberPickerFragment;
import com.maishapay.ui.dialog.NumPadPossitiveButtonListener;
import com.maishapay.ui.dialog.PossitiveButtonConfirmListener;
import com.maishapay.ui.qrcode.DecoderActivity;
import com.maishapay.util.Constants;
import com.maishapay.view.RetraitView;
import com.wajahatkarim3.easyvalidation.core.Validator;

import org.alfonz.media.SoundManager;
import org.alfonz.utility.NetworkUtility;
import org.fabiomsr.moneytextview.MoneyTextView;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;


public class RetraitActivity extends BaseActivity<RetraitConfirmationPresenter, RetraitView> implements PossitiveButtonConfirmListener, NumPadPossitiveButtonListener, RetraitView {

    private static final int REQUEST_QRCODE = 1;
    private static String CDF = "Francs congolais (CDF)";
    private static String USD = "Dollars (USD)";

    private static String CDF_CURRENCY = "FC";
    private static String USD_CURRENCY = "USD";
    private static String userCurrency;
    private static String destinatairePhone;

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    @BindView(R.id.SP_TypeEnvoi)
    Spinner SP_TypeEnvoi;
    @BindView(R.id.ET_Montant)
    MoneyTextView ET_Montant;
    @BindView(R.id.ET_Destinataire)
    RecipientEditTextView ET_Destinataire;

    private ProgressDialog progressDialog;
    private DialogConfirmRetraitFragment confirmRetaritFragment;
    private boolean flagRetrait = false;
    private QRCodeDataUser qrCodeDataUser;
    private SoundManager soundManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //Constants.initStatusBar(this);
        setContentView(R.layout.retrait_activity);
        ButterKnife.bind(this);

        toolbar.setTitle("Retrait d'argent");
        setSupportActionBar(toolbar);

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        initProgressBar();
        soundManager = MaishapayApplication.getMaishapayContext().getmSoundManager();

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
        adapter.setShowMobileOnly(true);
        ET_Destinataire.setAdapter(adapter);
        ET_Destinataire.dismissDropDownOnItemSelected(true);
    }

    @Override
    public void onStop() {
        super.onStop();
        soundManager.stopAll();
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
                    Snacky.builder()
                            .setView(findViewById(R.id.root))
                            .setText("Ce Code QR ne marche pas avec le retrait.")
                            .setDuration(Snacky.LENGTH_LONG)
                            .error()
                            .show();
                } else if (Constants.containsIgnoreCase(data.getStringExtra(DecoderActivity.EXTRA_QRCODE), "telephone")) {
                    soundManager.playAsset("sounds/job-done.mp3");
                    qrCodeDataUser = new Gson().fromJson(data.getStringExtra(DecoderActivity.EXTRA_QRCODE), QRCodeDataUser.class);
                    ET_Destinataire.setText(qrCodeDataUser.getTelephone());
                } else
                    Snacky.builder()
                            .setView(findViewById(R.id.root))
                            .setText("Désolé, vous avez scanné un mauvais Code QR.")
                            .setDuration(Snacky.LENGTH_LONG)
                            .error()
                            .show();
            }
        }
    }

    @OnClick(R.id.BTN_Retrait)
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

        flagRetrait = true;
        enabledControls(false);
        getPresenter().retrait(UserPrefencesManager.getCurrentUser().getTelephone(), destinatairePhone, String.valueOf(ET_Montant.getAmount()), userCurrency);
    }

    private void initProgressBar() {
        progressDialog = new ProgressDialog(this);
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(false);
        progressDialog.setMessage("Veuillez patienter");
    }

    @Override
    public void showRetraitError(int type) {
        if (type == 0) {
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Le numero de l'Agent n'est pas correct.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
        } else if (type == 2) {
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Desolé, votre solde est insuffisant.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
        }
    }

    @Override
    public void showConfimationError(int type) {
        if (type == 0)
            Toast.makeText(this, "Le mot de passe est incorrect.", Toast.LENGTH_LONG).show();
        else
            Toast.makeText(this, "Desolé, votre solde est insuffisant.", Toast.LENGTH_LONG).show();
    }

    @Override
    public void finishToConfirm() {

        confirmRetaritFragment.dismiss();
        Intent intent = new Intent(this, SuccessPaiementActivity.class);
        intent.putExtra(SuccessPaiementActivity.EXTRA_TITLE_ACTIVITY, "Retrait");
        intent.putExtra(SuccessPaiementActivity.EXTRA_PHONE, UserPrefencesManager.getCurrentUser().getTelephone());
        intent.putExtra(SuccessPaiementActivity.EXTRA_MONNAIE, userCurrency);
        intent.putExtra(SuccessPaiementActivity.EXTRA_MONTANT, String.valueOf(ET_Montant.getAmount()));
        intent.putExtra(SuccessPaiementActivity.EXTRA_DESTINATAIRE, destinatairePhone);

        startActivity(intent);
        finish();
    }

    @Override
    public void finishToRetrait(RetraitResponse retraitResponse) {
        flagRetrait = false;

        FragmentManager fm = getSupportFragmentManager();
        confirmRetaritFragment = DialogConfirmRetraitFragment.newInstance(retraitResponse.getPrenom(), retraitResponse.getNom(), destinatairePhone);
        confirmRetaritFragment.show(fm, "DialogConfirmRetraitFragment");
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
    public RetraitConfirmationPresenter providePresenter() {
        return new RetraitConfirmationPresenter();
    }

    private void toastMessage(String message, int view) {
        findViewById(view).startAnimation(AnimationUtils.loadAnimation(this, R.anim.shake));
        Toast.makeText(this, message, Toast.LENGTH_LONG).show();
    }

    @Override
    public void positiveClicked(String pin) {
        enabledControls(false);
        getPresenter().confirmRetrait(pin, UserPrefencesManager.getCurrentUser().getTelephone(), destinatairePhone, userCurrency, String.valueOf(ET_Montant.getAmount()));
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @OnClick(R.id.ET_Montant)
    public void ET_MontantClicked() {
        FragmentManager fm = getSupportFragmentManager();
        DialogNumberPickerFragment dialogNumberPickerFragment = DialogNumberPickerFragment.newInstance("0", userCurrency);
        dialogNumberPickerFragment.show(fm, "DialogNumberPickerFragment");
    }

    @Override
    public void numPadPositiveClicked(String number) {
        ET_Montant.setAmount(Float.valueOf(number));
    }

    @Override
    public void onUnknownError(String errorMessage) {
        enabledControls(true);

        if (flagRetrait)
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

        if (flagRetrait)
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

        if (flagRetrait)
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Aucune connexion réseau. Réessayez plus tard.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
        else if (NetworkUtility.isOnline(this))
            Toast.makeText(this, "Votre mot de passe est incorrect.", Toast.LENGTH_LONG).show();
        else
            Toast.makeText(this, "Aucune connexion réseau. Réessayez plus tard.", Toast.LENGTH_LONG).show();
    }
}
