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
import android.app.DatePickerDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.SwitchCompat;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.crashlytics.android.Crashlytics;
import com.maishapay.R;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.OuvrirEpargnePersonellePresenter;
import com.maishapay.ui.dialog.DialogConfirmCreationEpargneFragment;
import com.maishapay.ui.dialog.PossitiveButtonConfirmListener;
import com.maishapay.util.Constants;
import com.maishapay.view.OuvrirEpargnePersonelleView;

import org.joda.time.LocalDate;
import org.joda.time.format.DateTimeFormat;

import java.util.Calendar;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;
import io.fabric.sdk.android.Fabric;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;


public class OuvrirEpargnePersonnelleActivity extends BaseActivity<OuvrirEpargnePersonellePresenter, OuvrirEpargnePersonelleView> implements PossitiveButtonConfirmListener, OuvrirEpargnePersonelleView, DatePickerDialog.OnDateSetListener {

    private static String CDF = "Francs congolais (CDF)";
    private static String USD = "Dollars (USD)";
    private static String USD_FC = "USD et CDF";

    private static String CDF_CURRENCY = "FC";
    private static String USD_CURRENCY = "USD";
    private static String USD_FC_CURRENCY = "USD_FC";

    @BindView(R.id.toolbar_actionbar) Toolbar toolbar;
    @BindView(R.id.SP_TypeEnvoi) Spinner SP_TypeEnvoi;
    @BindView(R.id.ET_Date) TextView ET_Date;
    @BindView(R.id.ET_CodeSecret) EditText ET_CodeSecret;
    @BindView(R.id.SwitchCompat) SwitchCompat switchCompat;
    @BindView(R.id.BTN_Valider) Button BTN_Valider;

    private ProgressDialog progressDialog;
    private DialogConfirmCreationEpargneFragment dialogConfirmCreationEpargneFragment;
    private DatePickerDialog datePickerDialog;
    private String formatDate;
    private long longLocalDatePhone;
    private long longUserLocalDate;
    private int year;
    private int monthOfYear;
    private int dayOfMonth;

    private String userCurrency;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Fabric.with(this, new Crashlytics());
        setContentView(R.layout.creer_epargne_personnelle_activity);
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
                else if (currencies[i].equals(USD))
                    userCurrency = USD_CURRENCY;
                else
                    userCurrency = USD_FC_CURRENCY;
            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {

            }
        });

        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                BTN_Valider.setEnabled(b);
            }
        });

        LocalDate localDate = LocalDate.now();

        year = localDate.getYear();
        monthOfYear = localDate.getMonthOfYear();
        dayOfMonth = localDate.getDayOfMonth();

        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.YEAR, year);
        calendar.set(Calendar.MONTH, monthOfYear);
        calendar.set(Calendar.DAY_OF_MONTH, dayOfMonth);

        longLocalDatePhone = calendar.getTimeInMillis();
        longUserLocalDate = calendar.getTimeInMillis();

        formatDate = localDate.toString(DateTimeFormat.forPattern("dd/MM/yyyy"));
        ET_Date.setText(formatDate);
    }

    private void logUser() {
        // TODO: Use the current user's information
        // You can call any combination of these three methods
        Crashlytics.setUserIdentifier(UserPrefencesManager.getCurrentUser().getTelephone());
        Crashlytics.setUserEmail(UserPrefencesManager.getCurrentUser().getEmail());
        Crashlytics.setUserName(UserPrefencesManager.getCurrentUser().getPrenom() +" "+UserPrefencesManager.getCurrentUser().getNom());
    }

    @OnClick(R.id.ET_Date)
    public void ET_DateClicked(){
        datePickerDialog = new DatePickerDialog(this, this, year, monthOfYear - 1, dayOfMonth);
        datePickerDialog.show();
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                setResult(Activity.RESULT_CANCELED);
                finish();
                return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        setResult(Activity.RESULT_CANCELED);
        finish();
    }

    @OnClick(R.id.BTN_Valider)
    public void transfertClicked() {
        if (longLocalDatePhone == longUserLocalDate) {
            toastMessage("La date doit être posterieur", R.id.ET_Date);
            return;
        }

        enabledControls(false);
        getPresenter().ouvrirEpargne(UserPrefencesManager.getCurrentUser().getTelephone(), formatDate, userCurrency, ET_CodeSecret.getText().toString());
    }

    private void initProgressBar() {
        progressDialog = new ProgressDialog(this);
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(false);
        progressDialog.setMessage("Veuillez patienter");
    }

    @Override
    public void showNetworkError() {
        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Vous avez besion d'une connexion internet pour effectuer cette action!")
                .setDuration(Snacky.LENGTH_INDEFINITE)
                .setActionText("Réesseyer")
                .setActionClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        enabledControls(false);
                        enabledControls(false);
                        getPresenter().ouvrirEpargne(UserPrefencesManager.getCurrentUser().getTelephone(), formatDate, userCurrency, ET_CodeSecret.getText().toString());
                    }
                })
                .error()
                .show();
    }

    @Override
    public void showOuvrirEpargnePersonelleError(int type) {
        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Echec de création veuillez recommencer plutard.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
    }

    @Override
    public void finishToOuvrir(Integer response) {
        FragmentManager fm = getSupportFragmentManager();
        dialogConfirmCreationEpargneFragment = DialogConfirmCreationEpargneFragment.newInstance();
        dialogConfirmCreationEpargneFragment.show(fm, "DialogConfirmTransfertFragment");
    }

    @Override
    public void finishToConfirm(Integer response) {

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
    public OuvrirEpargnePersonellePresenter providePresenter() {
        return new OuvrirEpargnePersonellePresenter();
    }

    private void toastMessage(String message, int view) {
        findViewById(view).startAnimation(AnimationUtils.loadAnimation(this, R.anim.shake));
        Toast.makeText(this, message, Toast.LENGTH_LONG).show();
    }

    @Override
    public void positiveClicked(String pin) {
        setResult(Activity.RESULT_OK);
        finish();
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @Override
    public void onDateSet(DatePicker datePicker, int i, int i1, int i2) {
        year = i;
        monthOfYear = i1;
        dayOfMonth = i2;

        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.YEAR, i);
        calendar.set(Calendar.MONTH, i1);
        calendar.set(Calendar.DAY_OF_MONTH, i2);

        longUserLocalDate = calendar.getTimeInMillis();

        LocalDate localDate = LocalDate.fromCalendarFields(calendar);
        formatDate = localDate.toString(DateTimeFormat.forPattern("dd/MM/yyyy"));
        ET_Date.setText(formatDate);
    }

    @Override
    public void onUnknownError(String errorMessage) {
        enabledControls(true);
        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Aucune connexion réseau. Réessayez plus tard.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
    }

    @Override
    public void onTimeout() {

        enabledControls(true);
        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Aucune connexion réseau. Réessayez plus tard.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
    }

    @Override
    public void onNetworkError() {

        enabledControls(true);
        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Aucune connexion réseau. Réessayez plus tard.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
    }
}
