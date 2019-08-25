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
import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;
import dmax.dialog.SpotsDialog;
import io.fabric.sdk.android.Fabric;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;


public class TransfertPaiementActivity extends BaseActivity<TranfertConfirmationPresenter, TransfertView> implements CalcDialog.CalcDialogCallback, PossitiveButtonConfirmListener, TransfertView {

    private static final int DIALOG_REQUEST_CODE = 0;
    private static String CDF = "Francs congolais (CDF)";
    private static String USD = "Dollars (USD)";
    private static String MESSAGE;
    private static String[] list_billets = new String[]{"Billet normal", "Billet VIP"};
    private static String[] prix_billets = new String[]{"10", "30"};

    private static String CDF_CURRENCY = "FC";
    private static String USD_CURRENCY = "USD";
    private static String userCurrency = CDF_CURRENCY;

    private static String pin;
    private static String data;

    public static final String EXTRA_TYPE_ABONNEMENT = "type_abonnement";
    public static final String EXTRA_NUMERO_SERVICE = "numero_service";
    public static final String EXTRA_DATA_CANAL = "Canal +";
    public static final String EXTRA_DATA_DSTV = "DStv";
    public static final String EXTRA_DATA_EASY = "Easy Tv";
    public static final String EXTRA_DATA_STARTIMES = "Startimes";
    public static final String EXTRA_DATA_ANNONCE = "Réservation billets.";

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    @BindView(R.id.ET_NumeroService)
    EditText ET_NumeroService;
    @BindView(R.id.SP_TypeEnvoi)
    Spinner SP_TypeEnvoi;
    @BindView(R.id.SP_Bouquet)
    Spinner SP_Bouquet;
    @BindView(R.id.Bouquet)
    LinearLayout Bouquet;
    @BindView(R.id.Monnaie)
    LinearLayout Monnaie;
    @BindView(R.id.LL_Carte)
    LinearLayout LL_Carte;
    @BindView(R.id.ET_Montant)
    MoneyTextView ET_Montant;
    @BindView(R.id.ET_CodeCarte)
    MaskEditText ET_CodeCarte;
    @BindView(R.id.title_activty)
    TextView title_activty;

    private SpotsDialog progressDialog;
    private DialogConfirmTransfertFragment dialogForgotFragment;
    private boolean flagtransfert = false;
    private CalcDialog calcDialog;
    private BouquetObject mBouquetObject = new BouquetObject("", "0", "");
    private List<String> bouquetNames = new ArrayList<>();
    private List<String> bouquetPrixCDF = new ArrayList<>();
    private List<String> bouquetPrixUSD = new ArrayList<>();
    private int currentPosition = 0;
    private boolean isInternalMessage = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Fabric.with(this, new Crashlytics());
        setContentView(R.layout.transfert_paiement_activity);
        ButterKnife.bind(this);

        logUser();

        data = getIntent().getStringExtra(EXTRA_TYPE_ABONNEMENT);

        toolbar.setTitle(data.equalsIgnoreCase(EXTRA_DATA_ANNONCE) ? data : String.format("Abonnemt %s", data));

        if (data.equalsIgnoreCase("Réservation billets."))
            title_activty.setText("Réservez vos billets du concert d'ADA à Lubumbashi dès maintenant.");

        setSupportActionBar(toolbar);

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        initProgressBar();

        Bouquet.setVisibility(View.GONE);

        SP_Bouquet.setEnabled(false);
        if (data.equals(EXTRA_DATA_CANAL) || data.equals(EXTRA_DATA_DSTV)) {
            if (!NetworkUtility.isOnline(this)) {
                Toast.makeText(TransfertPaiementActivity.this, "Aucune connexion réseau. Réessayez plus tard.", Toast.LENGTH_LONG).show();
                new Handler().postDelayed(() -> finish(), 5000);
            }

            Bouquet.setVisibility(View.VISIBLE);
            ET_Montant.setEnabled(false);

            if (data.equals(EXTRA_DATA_CANAL)) {
                ParseQuery<ParseObject> query = ParseQuery.getQuery("PrixBouquetCanal");
                query.findInBackground((objects, e) -> {
                    if (objects == null) {
                        return;
                    }

                    for (ParseObject object : objects) {
                        bouquetNames.add(object.getString("Nom"));
                    }

                    for (ParseObject object : objects) {
                        bouquetPrixCDF.add(object.getString("Prix_CDF"));
                    }

                    ET_Montant.setAmount(Float.valueOf(bouquetPrixCDF.get(0)), userCurrency);

                    for (ParseObject object : objects) {
                        bouquetPrixUSD.add(object.getString("Prix_USD"));
                    }

                    SP_Bouquet.setEnabled(true);
                    SP_Bouquet.setAdapter(new CustomAdapter(TransfertPaiementActivity.this, android.R.id.text1, bouquetNames));
                    SP_Bouquet.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                        @Override
                        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                            if (userCurrency.equals(CDF_CURRENCY)) {
                                if (bouquetPrixCDF.get(i) == null || bouquetPrixCDF.get(i).equals("")) {
                                    ET_Montant.setAmount(0, userCurrency);
                                    Toast.makeText(TransfertPaiementActivity.this, "Pas de prix en francs pour ce bouquet", Toast.LENGTH_LONG).show();
                                } else {
                                    currentPosition = i;
                                    mBouquetObject = new BouquetObject(bouquetNames.get(i), bouquetPrixCDF.get(i), "FC");
                                    ET_Montant.setAmount(mBouquetObject.amount, mBouquetObject.currency);
                                }
                            } else {
                                if (bouquetPrixUSD.get(i) == null || bouquetPrixUSD.get(i).equals("")) {
                                    ET_Montant.setAmount(0, userCurrency);
                                    Toast.makeText(TransfertPaiementActivity.this, "Pas de prix en dollars pour ce bouquet.", Toast.LENGTH_LONG).show();
                                } else {
                                    currentPosition = i;
                                    mBouquetObject = new BouquetObject(bouquetNames.get(i), bouquetPrixUSD.get(i), "USD");
                                    ET_Montant.setAmount(mBouquetObject.amount, mBouquetObject.currency);
                                }
                            }
                        }

                        @Override
                        public void onNothingSelected(AdapterView<?> adapterView) {

                        }
                    });
                });
            } else if (data.equals(EXTRA_DATA_DSTV)) {
                Bouquet.setVisibility(View.VISIBLE);
                ET_Montant.setEnabled(false);

                SP_TypeEnvoi.setSelection(1);
                ParseQuery<ParseObject> query = ParseQuery.getQuery("PrixBouquetDSTV");
                query.findInBackground((objects, e) -> {
                    if (objects == null) {
                        return;
                    }

                    for (ParseObject object : objects) {
                        bouquetNames.add(object.getString("Nom"));
                    }

                    for (ParseObject object : objects) {
                        bouquetPrixUSD.add(object.getString("Prix_USD"));
                    }

                    userCurrency = "USD";
                    ET_Montant.setAmount(Float.valueOf(bouquetPrixUSD.get(0)), userCurrency);

                    SP_Bouquet.setEnabled(true);
                    SP_Bouquet.setAdapter(new CustomAdapter(TransfertPaiementActivity.this, android.R.id.text1, bouquetNames));
                    SP_Bouquet.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                        @Override
                        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                            if (userCurrency.equals(CDF_CURRENCY)) {
                                Toast.makeText(TransfertPaiementActivity.this, "Pas de prix en francs pour DSTV", Toast.LENGTH_LONG).show();
                            } else {
                                if (bouquetPrixUSD.get(i) == null || bouquetPrixUSD.get(i).equals("")) {
                                    ET_Montant.setAmount(0, userCurrency);
                                    Toast.makeText(TransfertPaiementActivity.this, "Pas de prix en dollars pour ce bouquet.", Toast.LENGTH_LONG).show();
                                } else {
                                    currentPosition = i;
                                    mBouquetObject = new BouquetObject(bouquetNames.get(i), bouquetPrixUSD.get(i), "USD");
                                    ET_Montant.setAmount(mBouquetObject.amount, mBouquetObject.currency);
                                }
                            }
                        }

                        @Override
                        public void onNothingSelected(AdapterView<?> adapterView) {

                        }
                    });
                });
            }

            SP_TypeEnvoi.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                @Override
                public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                    String[] currencies = getResources().getStringArray(R.array.option_devise);

                    if (currencies[i].equals(CDF)) {
                        userCurrency = CDF_CURRENCY;
                        if (!data.equals(EXTRA_DATA_DSTV)) {
                            if (bouquetPrixCDF.size() != 0) {
                                ET_Montant.setAmount(bouquetPrixCDF.get(currentPosition) == null || bouquetPrixCDF.get(currentPosition).equals("") ?
                                                Float.valueOf("0")
                                                : Float.valueOf(bouquetPrixCDF.get(currentPosition))
                                        , userCurrency
                                );
                            }
                        } else
                            Toast.makeText(TransfertPaiementActivity.this, "Pas de prix en francs pour DSTV", Toast.LENGTH_LONG).show();
                    } else {
                        userCurrency = USD_CURRENCY;
                        if (bouquetPrixUSD.size() != 0) {
                            ET_Montant.setAmount(bouquetPrixUSD.get(currentPosition) == null || bouquetPrixUSD.get(currentPosition).equals("") ?
                                            Float.valueOf("0")
                                            : Float.valueOf(bouquetPrixUSD.get(currentPosition))
                                    , userCurrency
                            );
                        }
                    }
                }

                @Override
                public void onNothingSelected(AdapterView<?> adapterView) {

                }
            });
        } else if (data.equalsIgnoreCase(EXTRA_DATA_ANNONCE)) {
            Bouquet.setVisibility(View.VISIBLE);
            ET_Montant.setEnabled(false);
            LL_Carte.setVisibility(View.GONE);
            SP_TypeEnvoi.setSelection(1);
            userCurrency = "USD";

            List<String> nomBillets = new ArrayList<>();

            nomBillets.add("V.I.P");
            nomBillets.add("Open");

            List<String> bouquetPrixUSD = new ArrayList<>();

            bouquetPrixUSD.add("30");
            bouquetPrixUSD.add("10");

            ET_Montant.setAmount(Float.valueOf(bouquetPrixUSD.get(0)), userCurrency);

            SP_Bouquet.setEnabled(true);
            SP_Bouquet.setAdapter(new CustomAdapter(TransfertPaiementActivity.this, android.R.id.text1, nomBillets));
            SP_Bouquet.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                @Override
                public void onItemSelected(AdapterView <?> adapterView, View view, int i, long l) {
                    if (userCurrency.equals(USD_CURRENCY)) {
                        if (bouquetPrixUSD.get(i) == null || bouquetPrixUSD.get(i).equals("")) {
                            ET_Montant.setAmount(0, userCurrency);
                            Toast.makeText(TransfertPaiementActivity.this, "Pas de prix en dollars pour ce bouquet.", Toast.LENGTH_LONG).show();
                        } else {
                            currentPosition = i;
                            mBouquetObject = new BouquetObject(nomBillets.get(i), bouquetPrixUSD.get(i), "USD");
                            ET_Montant.setAmount(mBouquetObject.amount, mBouquetObject.currency);
                        }
                    }
                }

                @Override
                public void onNothingSelected(AdapterView<?> adapterView) {

                }
            });
        } else {
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

        ET_NumeroService.setEnabled(false);
        ET_NumeroService.setText(

                getIntent().

                        getStringExtra(EXTRA_NUMERO_SERVICE));

        calcDialog = CalcDialog.newInstance(DIALOG_REQUEST_CODE);

        BigDecimal bigDecimal = new BigDecimal(ET_Montant.getAmount());

        calcDialog.setValue(bigDecimal)
                .

                        setFormatSymbols(',', '.')
                .

                        setShowSignButton(true)
                .

                        setShowAnswerButton(true)
                .

                        setSignCanBeChanged(true, bigDecimal.signum())
                .

                        setClearDisplayOnOperation(true)
                .

                        setShowZeroWhenNoValue(true)
                .

                        setMaxValue(new BigDecimal(1000000))
                .

                        setMaxDigits(7, 2);
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
        if (!(data.equals(EXTRA_DATA_CANAL) || data.equals(EXTRA_DATA_DSTV)))
            if ((userCurrency.equals(CDF_CURRENCY) && ET_Montant.getAmount() < 500F) || (userCurrency.equals(USD_CURRENCY) && ET_Montant.getAmount() < 1F)) {
                toastMessage("Montant incorrect.", R.id.ET_Montant);
                return;
            }

        if (TextUtils.isEmpty(ET_CodeCarte.getRawText()) && !(data.equals(EXTRA_DATA_ANNONCE))) {
            toastMessage(String.format(getString(R.string.erro_campo), ET_CodeCarte.getHint().toString()), R.id.ET_CodeCarte);
            return;
        }

        enabledControls(false);

        if (data.equals(EXTRA_DATA_DSTV))
            if (userCurrency.equals(CDF_CURRENCY)) {
                Toast.makeText(TransfertPaiementActivity.this, "Pas de prix en francs pour DSTV", Toast.LENGTH_LONG).show();
                return;
            } else
                getPresenter().transfert(
                        UserPrefencesManager.getCurrentUser().getTelephone(),
                        ET_NumeroService.getText().toString(),
                        userCurrency,
                        String.valueOf(ET_Montant.getAmount()));
        else
            getPresenter().transfert(
                    UserPrefencesManager.getCurrentUser().getTelephone(),
                    ET_NumeroService.getText().toString(),
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
        String title;
        if (data.equals(EXTRA_DATA_CANAL) || data.equals(EXTRA_DATA_EASY) || data.equals(EXTRA_DATA_STARTIMES) || data.equals(EXTRA_DATA_DSTV))
            title = "Abonnement";
        else
            title = "Paiement";

        if (isInternalMessage) {
            Intent intent = new Intent(this, SuccessPaiementActivity.class);
            intent.putExtra(SuccessPaiementActivity.EXTRA_TITLE_ACTIVITY, title);
            intent.putExtra(SuccessPaiementActivity.EXTRA_PHONE, UserPrefencesManager.getCurrentUser().getTelephone());
            intent.putExtra(SuccessPaiementActivity.EXTRA_MONNAIE, userCurrency);
            intent.putExtra(SuccessPaiementActivity.EXTRA_MONTANT, String.valueOf(ET_Montant.getAmount()));
            intent.putExtra(SuccessPaiementActivity.EXTRA_DESTINATAIRE, ET_NumeroService.getText().toString());

            startActivity(intent);
            finish();
        } else {
            isInternalMessage = true;
            getPresenter().internalMessage("243972435000", String.format("*INTERNAL_MESSAGE*%s", MESSAGE));
        }
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
        TransfertPaiementActivity.pin = pin;

        enabledControls(false);
        if (!(data.equals(EXTRA_DATA_CANAL) || data.equals(EXTRA_DATA_DSTV))) {
            MESSAGE = String.format("Demande d'abonnement %s\nNumero de la carte : %s\nde la part de %s\nNumero : %s\nMontant : %s %s", data, ET_CodeCarte.getRawText(), String.format("%s %s", UserPrefencesManager.getCurrentUser().getPrenom(), UserPrefencesManager.getCurrentUser().getNom()), UserPrefencesManager.getCurrentUser().getTelephone(), String.valueOf(ET_Montant.getAmount()), userCurrency);
            getPresenter().confirmTransfertAbonnement(
                    pin,
                    "",
                    UserPrefencesManager.getCurrentUser().getTelephone(),
                    ET_NumeroService.getText().toString(),
                    userCurrency,
                    String.valueOf(ET_Montant.getAmount()),
                    String.format("%s %s", UserPrefencesManager.getCurrentUser().getPrenom(), UserPrefencesManager.getCurrentUser().getNom()),
                    getIntent().getStringExtra(EXTRA_TYPE_ABONNEMENT),
                    ET_CodeCarte.getRawText());
        } else {
            MESSAGE = String.format("Demande d'abonnement %s\nNumero de la carte : %s\nde la part de %s\nNumero : %s\nMontant : %s %s", String.format("%s : %s", data, mBouquetObject.name), ET_CodeCarte.getRawText(), String.format("%s %s", UserPrefencesManager.getCurrentUser().getPrenom(), UserPrefencesManager.getCurrentUser().getNom()), UserPrefencesManager.getCurrentUser().getTelephone(), String.valueOf(ET_Montant.getAmount()), userCurrency);
            getPresenter().confirmTransfertAbonnement(
                    pin,
                    data,
                    UserPrefencesManager.getCurrentUser().getTelephone(),
                    ET_NumeroService.getText().toString(),
                    mBouquetObject.currency,
                    String.valueOf(mBouquetObject.amount),
                    String.format("%s %s", UserPrefencesManager.getCurrentUser().getPrenom(), UserPrefencesManager.getCurrentUser().getNom()),
                    mBouquetObject.name,
                    ET_CodeCarte.getRawText());
        }
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

    private class BouquetObject {
        String name;
        float amount;
        String currency;

        public BouquetObject(String name, String amount, String currency) {
            this.name = name;
            this.amount = Float.valueOf(amount);
            this.currency = currency;
        }
    }
}
