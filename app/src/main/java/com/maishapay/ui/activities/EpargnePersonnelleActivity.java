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
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.Spinner;
import android.widget.Toast;

import com.maishapay.R;
import com.maishapay.model.client.response.EpargneResponse;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.EpargnePersonellePresenter;
import com.maishapay.ui.dialog.DialogConfirmEpargneFragment;
import com.maishapay.ui.dialog.DialogNumberPickerFragment;
import com.maishapay.ui.dialog.NumPadPossitiveButtonListener;
import com.maishapay.ui.dialog.PossitiveButtonConfirmListener;
import com.maishapay.ui.qrcode.DecoderActivity;
import com.maishapay.util.Constants;
import com.maishapay.view.EpargnePersonelleView;

import org.fabiomsr.moneytextview.MoneyTextView;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;


public class EpargnePersonnelleActivity extends BaseActivity<EpargnePersonellePresenter, EpargnePersonelleView> implements NumPadPossitiveButtonListener, PossitiveButtonConfirmListener, EpargnePersonelleView {

    private static final int REQUEST_QRCODE = 1;
    private static String CDF = "Francs congolais (CDF)";
    private static String USD = "Dollars (USD)";

    private static String CDF_CURRENCY = "FC";
    private static String USD_CURRENCY = "USD";

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    @BindView(R.id.SP_TypeEnvoi)
    Spinner SP_TypeEnvoi;
    @BindView(R.id.ET_Montant)
    MoneyTextView ET_Montant;

    private ProgressDialog progressDialog;
    private DialogConfirmEpargneFragment dialogConfirmEpargneFragment;
    private static String userCurrency;
    private boolean flagTransfert = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.epargne_personnelle_activity);
        ButterKnife.bind(this);

        toolbar.setTitle("Epargne personnelle");
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

    private void intProgressBar() {
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
                    .setText("Désolé, vous ne disposez pas de compte epargne, veuillez en créer pour faire ce tranfert.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .warning()
                    .show();
        else if (type == 2)
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Désolé, votre solde est insuffisant pour ce transfert.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .warning()
                    .show();
    }

    @Override
    public void showConfimationError(int type) {
        dialogConfirmEpargneFragment.dismiss();
        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Votre transfert à echoué, veuillez recommencer.")
                .setDuration(Snacky.LENGTH_LONG)
                .warning()
                .show();
    }

    @Override
    public void finishToConfirm() {
        flagTransfert = false;
        dialogConfirmEpargneFragment.dismiss();
        Intent intent = new Intent(this, SuccessPaiementActivity.class);
        intent.putExtra(SuccessPaiementActivity.EXTRA_TITLE_ACTIVITY, "Epargne");
        intent.putExtra(SuccessPaiementActivity.EXTRA_PHONE, UserPrefencesManager.getCurrentUser().getTelephone());
        intent.putExtra(SuccessPaiementActivity.EXTRA_MONNAIE, userCurrency);
        intent.putExtra(SuccessPaiementActivity.EXTRA_MONTANT, String.valueOf(ET_Montant.getAmount()));

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

        Constants.showOnTimeout(findViewById(R.id.root), new View.OnClickListener() {
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
}
