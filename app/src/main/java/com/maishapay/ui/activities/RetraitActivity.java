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
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

import com.maishapay.R;
import com.maishapay.model.client.response.RetraitResponse;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.RetraitConfirmationPresenter;
import com.maishapay.ui.dialog.DialogConfirmRetraitFragment;
import com.maishapay.ui.dialog.DialogNumberPickerFragment;
import com.maishapay.ui.dialog.NumPadPossitiveButtonListener;
import com.maishapay.ui.dialog.PossitiveButtonConfirmListener;
import com.maishapay.ui.qrcode.DecoderActivity;
import com.maishapay.util.Constants;
import com.maishapay.view.RetraitView;

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
    private static String pin;

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    @BindView(R.id.SP_TypeEnvoi)
    Spinner SP_TypeEnvoi;
    @BindView(R.id.ET_Montant)
    MoneyTextView ET_Montant;
    @BindView(R.id.ET_Destinataire)
    EditText ET_Destinataire;

    private ProgressDialog progressDialog;
    private DialogConfirmRetraitFragment confirmRetaritFragment;
    private boolean flagRetrait = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.retrait_activity);
        ButterKnife.bind(this);

        toolbar.setTitle("Retait d'argent");
        setSupportActionBar(toolbar);

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        intProgressBar();

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
                ET_Destinataire.setText(text);
            }
        }
    }

    @OnClick(R.id.BTN_Retrait)
    public void transfertClicked() {
        if (TextUtils.isEmpty(ET_Destinataire.getText().toString())) {
            toastMessage(String.format(getString(R.string.erro_campo), ET_Destinataire.getHint()), R.id.ET_Destinataire);
            return;
        }

        if (ET_Montant.getAmount() == 0F) {
            toastMessage(String.format(getString(R.string.erro_campo), "Montant"), R.id.ET_Montant);
            return;
        }

        enabledControls(false);
        getPresenter().retrait(UserPrefencesManager.getCurrentUser().getTelephone(), ET_Destinataire.getText().toString(), String.valueOf(ET_Montant.getAmount()), userCurrency);
    }

    private void intProgressBar() {
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
                    .warning()
                    .show();
        } else if (type == 2) {
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Desolé, votre solde est insuffisant.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .warning()
                    .show();
        }
    }

    @Override
    public void showConfimationError(int type) {
        Snacky.builder()
                .setView(confirmRetaritFragment.getView())
                .setText("Le numero de l'Agent n'est pas correct.")
                .setDuration(Snacky.LENGTH_LONG)
                .warning()
                .show();
    }

    @Override
    public void finishToConfirm() {
        flagRetrait = false;

        confirmRetaritFragment.dismiss();
        Intent intent = new Intent(this, SuccessPaiementActivity.class);
        intent.putExtra(SuccessPaiementActivity.EXTRA_TITLE_ACTIVITY, "Retrait");
        intent.putExtra(SuccessPaiementActivity.EXTRA_PHONE, UserPrefencesManager.getCurrentUser().getTelephone());
        intent.putExtra(SuccessPaiementActivity.EXTRA_MONNAIE, userCurrency);
        intent.putExtra(SuccessPaiementActivity.EXTRA_MONTANT, String.valueOf(ET_Montant.getAmount()));
        intent.putExtra(SuccessPaiementActivity.EXTRA_DESTINATAIRE, ET_Destinataire.getText().toString());

        startActivity(intent);
        finish();
    }

    @Override
    public void finishToRetrait(RetraitResponse retraitResponse) {
        flagRetrait = true;

        FragmentManager fm = getSupportFragmentManager();
        confirmRetaritFragment = DialogConfirmRetraitFragment.newInstance(retraitResponse.getRetour());
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
        RetraitActivity.pin = pin;
        enabledControls(false);
        getPresenter().confirmRetrait(pin, UserPrefencesManager.getCurrentUser().getTelephone(), ET_Destinataire.getText().toString(), userCurrency, String.valueOf(ET_Montant.getAmount()));
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @OnClick(R.id.ET_Montant)
    public void ET_MontantClicked() {
        FragmentManager fm = getSupportFragmentManager();
        DialogNumberPickerFragment dialogNumberPickerFragment = DialogNumberPickerFragment.newInstance(userCurrency);
        dialogNumberPickerFragment.show(fm, "DialogNumberPickerFragment");
    }

    @Override
    public void numPadPositiveClicked(String number) {
        ET_Montant.setAmount(Float.valueOf(number));
    }

    @Override
    public void onUnknownError(String errorMessage) {
        enabledControls(true);

        Constants.showOnUnknownError(findViewById(R.id.root), new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                enabledControls(false);

                if (flagRetrait)
                    getPresenter().confirmRetrait(pin, UserPrefencesManager.getCurrentUser().getTelephone(), ET_Destinataire.getText().toString(), userCurrency, String.valueOf(ET_Montant.getAmount()));
                else
                    getPresenter().retrait(UserPrefencesManager.getCurrentUser().getTelephone(), ET_Destinataire.getText().toString(), String.valueOf(ET_Montant.getAmount()), userCurrency);

            }
        });
    }

    @Override
    public void onTimeout() {
        enabledControls(true);

        Constants.showOnTimeout(findViewById(R.id.root), new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                enabledControls(false);

                if (flagRetrait)
                    getPresenter().confirmRetrait(pin, UserPrefencesManager.getCurrentUser().getTelephone(), ET_Destinataire.getText().toString(), userCurrency, String.valueOf(ET_Montant.getAmount()));
                else
                    getPresenter().retrait(UserPrefencesManager.getCurrentUser().getTelephone(), ET_Destinataire.getText().toString(), String.valueOf(ET_Montant.getAmount()), userCurrency);
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

                if (flagRetrait)
                    getPresenter().confirmRetrait(pin, UserPrefencesManager.getCurrentUser().getTelephone(), ET_Destinataire.getText().toString(), userCurrency, String.valueOf(ET_Montant.getAmount()));
                else
                    getPresenter().retrait(UserPrefencesManager.getCurrentUser().getTelephone(), ET_Destinataire.getText().toString(), String.valueOf(ET_Montant.getAmount()), userCurrency);

            }
        });
    }
}
