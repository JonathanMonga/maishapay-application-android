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
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.Toast;

import com.hbb20.CountryCodePicker;
import com.maishapay.R;
import com.maishapay.model.client.response.UserResponse;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.RegisterMarchantPresenter;
import com.maishapay.view.RegisterMerchantView;
import com.santalu.widget.MaskEditText;

import net.grandcentrix.thirtyinch.TiActivity;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class RegisterMarchantActivity extends TiActivity<RegisterMarchantPresenter, RegisterMerchantView> implements RegisterMerchantView {

    @BindView(R.id.ET_Email) EditText emailditText;
    @BindView(R.id.ET_Sobrenome) EditText nomEditText;
    @BindView(R.id.ET_Nome) EditText prenomEditText;
    @BindView(R.id.ET_Ville) EditText villeEditText;
    @BindView(R.id.ET_Adressse) EditText adresseEditText;
    @BindView(R.id.ET_Senha) EditText codePin1EditText;
    @BindView(R.id.ET_RepetirSenha) EditText codePin2EditText;
    @BindView(R.id.toolbar_actionbar) Toolbar toolbar;
    @BindView(R.id.ET_Phone) MaskEditText phoneEditText;
    @BindView(R.id.ET_CodePicker) CountryCodePicker countryCodePicker;


    private ProgressDialog progressDialog;
    private String maskText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.register_marchant_account_activity);
        ButterKnife.bind(this);

        toolbar.setTitle("Créer un compte marchant");
        setSupportActionBar(toolbar);

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null){
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        initProgressBar();
    }

    @OnClick(R.id.BTN_CriarConta)
    public void clickCriarConta(){

        if (TextUtils.isEmpty(prenomEditText.getText().toString())) {
            toastMessage(String.format(getString(R.string.erro_campo), prenomEditText.getHint()), R.id.ET_Nome);
            return;
        }

        if (TextUtils.isEmpty(nomEditText.getText().toString())) {
            toastMessage(String.format(getString(R.string.erro_campo), nomEditText.getHint()), R.id.ET_Sobrenome);
            return;
        }

        if (TextUtils.isEmpty(phoneEditText.getRawText())) {
            toastMessage(String.format(getString(R.string.erro_campo), phoneEditText.getHint()), R.id.ET_Phone);
            return;
        }

        if (phoneEditText.getRawText().length() < 9) {
            toastMessage(String.format(getString(R.string.erro_campo), phoneEditText.getHint()), R.id.ET_Phone);
            return;
        }

        if (TextUtils.isEmpty(emailditText.getText().toString())) {
            toastMessage(String.format(getString(R.string.erro_campo), emailditText.getHint()), R.id.ET_Email);
            return;
        }

        if (TextUtils.isEmpty(adresseEditText.getText().toString())) {
            toastMessage(String.format(getString(R.string.erro_campo), adresseEditText.getHint()), R.id.ET_Adressse);
            return;
        }

        if (TextUtils.isEmpty(villeEditText.getText().toString())) {
            toastMessage(String.format(getString(R.string.erro_campo), villeEditText.getHint()), R.id.ET_Ville);
            return;
        }

        if (TextUtils.isEmpty(codePin1EditText.getText().toString())) {
            toastMessage(String.format(getString(R.string.erro_campo), codePin1EditText.getHint()), R.id.ET_Senha);
            return;
        }

        if (TextUtils.isEmpty(codePin2EditText.getText().toString())) {
            toastMessage(String.format(getString(R.string.erro_campo), codePin2EditText.getHint()), R.id.ET_RepetirSenha);
            return;
        }

        if(!codePin1EditText.getText().toString().equals(codePin2EditText.getText().toString())){
            toastMessage("Les code PIN sont differents", R.id.ET_RepetirSenha);
            return;
        }


        String code = countryCodePicker.getSelectedCountryCode();
        String phone = phoneEditText.getRawText();

        maskText = String.format("+%s%s", code, phone);

        enabledControls(false);
        getPresenter().inscription(
                nomEditText.getText().toString(),
                prenomEditText.getText().toString(),
                maskText,
                emailditText.getText().toString(),
                villeEditText.getText().toString(),
                adresseEditText.getText().toString(),
                codePin1EditText.getText().toString());
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

    @Override
    public void enabledControls(boolean isEnabled) {
        if (isEnabled) {
            progressDialog.dismiss();
            findViewById(R.id.BTN_CriarConta).setEnabled(true);
        } else {
            progressDialog.show();
            findViewById(R.id.BTN_CriarConta).setEnabled(false);
        }
    }

    @NonNull
    @Override
    public RegisterMarchantPresenter providePresenter() {
        return new RegisterMarchantPresenter();
    }

    @Override
    public void showResponseError(int response) {
        switch (response){

            case 0 : {
                Snacky.builder()
                        .setView(findViewById(R.id.LL_Register))
                        .setText(" Echec d'inscription, veuillez reessayer.")
                        .setDuration(Snacky.LENGTH_LONG)
                        .warning()
                        .show();
                break;
            }

            default:{
                Snacky.builder()
                        .setView(findViewById(R.id.LL_Register))
                        .setText("Desolé, ce numero est déja utilisé par une autre personne.")
                        .setDuration(Snacky.LENGTH_LONG)
                        .warning()
                        .show();
                break;
            }
        }
    }

    @Override
    public void finishToRegister(UserResponse response) {
        UserPrefencesManager.setCurentUser(response);
        Intent intent = new Intent(this, LoginActivity.class);
        setResult(Activity.RESULT_OK, intent);
        finish();
    }

    private void initProgressBar() {
        progressDialog = new ProgressDialog(this);
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(false);
        progressDialog.setMessage("Veuillez patienter");
    }

    private void toastMessage(String message, int view){
        findViewById(view).startAnimation(AnimationUtils.loadAnimation(this, R.anim.shake));
        Toast.makeText(this, message, Toast.LENGTH_LONG).show();
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @Override
    public void onUnknownError(String errorMessage) {
        enabledControls(true);

        Snacky.builder()
                .setView(findViewById(R.id.LL_Register))
                .setText("Impossible de se connecter au serveur.")
                .setDuration(Snacky.LENGTH_LONG)
                .warning()
                .show();
    }

    @Override
    public void onTimeout() {
        enabledControls(true);

        Snacky.builder()
                .setView(findViewById(R.id.LL_Register))
                .setText("Le délais s'est t'écouler.")
                .setDuration(Snacky.LENGTH_LONG)
                .warning()
                .show();
    }

    @Override
    public void onNetworkError() {
        enabledControls(true);

        Snacky.builder()
                .setView(findViewById(R.id.LL_Register))
                .setText("Aucune connexion réseau. Réessayez plus tard.")
                .setDuration(Snacky.LENGTH_LONG)
                .warning()
                .show();
    }
}
