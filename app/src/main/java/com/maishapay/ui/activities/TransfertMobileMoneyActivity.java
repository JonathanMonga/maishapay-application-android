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
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.crashlytics.android.Crashlytics;
import com.maishapay.R;
import com.maishapay.model.client.response.BaseResponse;
import com.maishapay.model.client.response.TransfertResponse;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.TranfertConfirmationPresenter;
import com.maishapay.ui.adapter.CustomAdapter;
import com.maishapay.ui.dialog.DialogConfirmTransfertFragment;
import com.maishapay.ui.dialog.PossitiveButtonConfirmListener;
import com.maishapay.view.TransfertView;
import com.nmaltais.calcdialog.CalcDialog;
import com.parse.ParseObject;
import com.parse.ParseQuery;
import com.santalu.widget.MaskEditText;

import org.alfonz.utility.NetworkUtility;
import org.fabiomsr.moneytextview.MoneyTextView;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;
import dmax.dialog.SpotsDialog;
import io.fabric.sdk.android.Fabric;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

import static com.maishapay.ui.activities.MobileMoneyActivity.EXTRA_NAME_OPERATOR;

public class TransfertMobileMoneyActivity extends BaseActivity<TranfertConfirmationPresenter, TransfertView> implements CalcDialog.CalcDialogCallback, PossitiveButtonConfirmListener, TransfertView {

    private static final int DIALOG_REQUEST_CODE = 0;
    private static String CDF = "Francs congolais (CDF)";
    private static String USD = "Dollars (USD)";

    private static String CDF_CURRENCY = "FC";
    private static String USD_CURRENCY = "USD";
    private static String userCurrency = CDF_CURRENCY;

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    @BindView(R.id.ET_NumeroService)
    EditText ET_NumeroService;
    @BindView(R.id.SP_TypeEnvoi)
    Spinner SP_TypeEnvoi;
    @BindView(R.id.ET_Montant)
    MoneyTextView ET_Montant;
    @BindView(R.id.title_activty)
    TextView title_activty;
    @BindView(R.id.ET_Mensagem)
    TextView ET_Mensagem;

    private SpotsDialog progressDialog;
    private DialogConfirmTransfertFragment dialogForgotFragment;
    private boolean flagtransfert = false;
    private CalcDialog calcDialog;
    private boolean isInternalMessage = false;
    private List<String> startNumber;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Fabric.with(this, new Crashlytics());
        setContentView(R.layout.transfert_mobile_money_activity);
        ButterKnife.bind(this);

        logUser();

        String nameService;

        if (getIntent().getStringExtra(EXTRA_NAME_OPERATOR).equalsIgnoreCase("Air")) {
            nameService = "Airtel Money";
            startNumber = new ArrayList<>();
            startNumber.add("24397");
            startNumber.add("24399");
        } else if (getIntent().getStringExtra(EXTRA_NAME_OPERATOR).equalsIgnoreCase("Ora")) {
            nameService = "Orange Money";
            startNumber = new ArrayList<>();
            startNumber.add("24384");
            startNumber.add("24385");
            startNumber.add("24389");
        } else if (getIntent().getStringExtra(EXTRA_NAME_OPERATOR).equalsIgnoreCase("Afr")) {
            nameService = "Africell Money";
            startNumber = new ArrayList<>();
            startNumber.add("24390");
        } else {
            nameService = "M-Pesa";
            startNumber = new ArrayList<>();
            startNumber.add("24381");
            startNumber.add("24382");
        }

        title_activty.setText(String.format("Envoyer de l'argent vers un compte %s", nameService));

        toolbar.setTitle("Mobile money");

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
        if (UserPrefencesManager.getCurrentUser() != null) {
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

    @OnClick(R.id.BTN_Tranfert)
    public void transfertClicked() {
        if (ET_NumeroService.getText().toString().isEmpty() || (ET_NumeroService.getText().toString().length() < 5) || ! contains(ET_NumeroService.getText().toString().substring(0, 5))) {
            toastMessage("Numero incorrect.", R.id.ET_NumeroService);
            return;
        }

        if ((userCurrency.equals(CDF_CURRENCY) && ET_Montant.getAmount() < 1000F) || (userCurrency.equals(USD_CURRENCY) && ET_Montant.getAmount() < 1F)) {
            toastMessage("Montant incorrect.", R.id.ET_Montant);
            return;
        }

        enabledControls(false);

        getPresenter().transfert(
                UserPrefencesManager.getCurrentUser().getTelephone(),
                "243972435000",
                userCurrency,
                String.valueOf(ET_Montant.getAmount()));
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
        intent.putExtra(SuccessPaiementActivity.EXTRA_TITLE_ACTIVITY, "Transfert");
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
        dialogForgotFragment = DialogConfirmTransfertFragment.newInstance(((TransfertResponse) baseResponse).getPrenom(), ((TransfertResponse) baseResponse).getNom());
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

        enabledControls(false);
        getPresenter().confirmTransfertMobileMoney(
                pin,
                UserPrefencesManager.getCurrentUser().getTelephone(),
                "243972435000",
                String.valueOf(ET_Montant.getAmount()),
                userCurrency,
                ET_NumeroService.getText().toString(),
                ET_Mensagem.getText().toString(),
                getIntent().getStringExtra(EXTRA_NAME_OPERATOR));
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @OnClick(R.id.ET_Montant)
    public void ET_MontantClicked() {
        FragmentManager fm = getSupportFragmentManager();

        if (fm.findFragmentByTag("calc_dialog") == null) {
            calcDialog.show(fm, "calc_dialog");
        }
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

    @Override
    public void onValueEntered(int requestCode, @Nullable BigDecimal value) {
        ET_Montant.setAmount(value.floatValue(), userCurrency);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        setResult(Activity.RESULT_OK);
        finish();
    }

    private boolean contains(String other) {
        for(String str : startNumber)
            if (str.equalsIgnoreCase(other)) return true;
        return false;
    }
}
