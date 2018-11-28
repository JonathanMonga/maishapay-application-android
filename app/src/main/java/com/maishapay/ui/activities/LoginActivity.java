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
import android.support.design.widget.TextInputLayout;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;

import com.afollestad.materialdialogs.MaterialDialog;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.hbb20.CountryCodePicker;
import com.maishapay.R;
import com.maishapay.model.client.response.UserResponse;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.LoginPresenter;
import com.maishapay.ui.dialog.DialogForgotFragment;
import com.maishapay.ui.dialog.PossitiveButtonListener;
import com.maishapay.util.Constants;
import com.maishapay.util.LogCat;
import com.maishapay.view.LoginView;
import com.santalu.widget.MaskEditText;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class LoginActivity extends BaseActivity<LoginPresenter, LoginView> implements LoginView, PossitiveButtonListener {

    private static String maskText;
    private static String pin;

    private ProgressDialog progressDialog;
    @BindView(R.id.ti_telephone) TextInputLayout textInputTelephone;
    @BindView(R.id.ti_code_pin) TextInputLayout textInputCodePin;
    @BindView(R.id.ET_Telephone) MaskEditText phoneEditText;
    @BindView(R.id.ET_CodePicker) CountryCodePicker countryCodePicker;
    @BindView(R.id.ET_Code_Pin) EditText codePinEditText;
    private DialogForgotFragment dialogForgotFragment;
    private FirebaseAuth mAuth;
    private boolean flaglogin = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Constants.initStatusBar(this);
        setContentView(R.layout.login_activity);
        ButterKnife.bind(this);

        if(UserPrefencesManager.getCurentUserLoginSuccess()) {
            startActivity(new Intent(this, DrawerActivity.class));
            finish();
        }

        if(UserPrefencesManager.getCurrentUserDisconnect()) {
            phoneEditText.setText(UserPrefencesManager.getUserPhone());
            countryCodePicker.setCountryForPhoneCode(UserPrefencesManager.getUserCountryCodePhone());
        } else {
            if(UserPrefencesManager.getCurrentUser() != null) {
                String userPhone = UserPrefencesManager.getCurrentUser().getTelephone().substring(3, UserPrefencesManager.getCurrentUser().getTelephone().length());
                int userCodePhone = Integer.valueOf(UserPrefencesManager.getCurrentUser().getTelephone().substring(0, 3));

                countryCodePicker.setCountryForPhoneCode(userCodePhone);
                phoneEditText.setText(userPhone);
            }
        }

        initProgressBar();
        mAuth = FirebaseAuth.getInstance();
    }

    @OnClick(R.id.BTN_Login)
    public void clickLogin(){
        if (TextUtils.isEmpty(phoneEditText.getText().toString())) {
            textInputTelephone.setErrorEnabled(true);
            textInputTelephone.setError(String.format(getString(R.string.erro_campo), getString(R.string.telephone)));
            return;
        }

        if (TextUtils.isEmpty(codePinEditText.getText().toString())) {
            textInputCodePin.setErrorEnabled(true);
            textInputCodePin.setError(String.format(getString(R.string.erro_campo), getString(R.string.code_pin)));

            textInputTelephone.setError(null);
            textInputTelephone.setErrorEnabled(false);
            return;
        }

        maskText = Constants.generatePhoneCode(false,  phoneEditText.getRawText(), countryCodePicker.getSelectedCountryCode());

        pin = codePinEditText.getText().toString();

        enabledControls(false);

        getPresenter().login(maskText, pin);

        textInputTelephone.setError(null);
        textInputTelephone.setErrorEnabled(false);

        textInputCodePin.setError(null);
        textInputCodePin.setErrorEnabled(false);
    }

    @OnClick({R.id.BTN_CriarConta})
    public void clickCriarConta(){
        new MaterialDialog.Builder(this)
                .title("Type des comptes")
                .items(R.array.option_type_compte)
                .itemsCallback(new MaterialDialog.ListCallback() {
                    @Override
                    public void onSelection(MaterialDialog dialog, View itemView, int position, CharSequence text) {
                        switch (position) {
                            case 0 : {
                                startActivityForResult(new Intent(LoginActivity.this, RegisterNormalActivity.class), 1);
                                break;
                            }

                            default : {
                                startActivityForResult(new Intent(LoginActivity.this, RegisterMarchantActivity.class), 2);
                                break;
                            }
                        }
                    }
                })
                .show();
    }

    @OnClick(R.id.BTN_ForgotCodePin)
    public void clickForgot(){
        flaglogin = true;

        if (TextUtils.isEmpty(phoneEditText.getText().toString())) {
            textInputTelephone.setErrorEnabled(true);
            textInputTelephone.setError(String.format(getString(R.string.erro_campo), getString(R.string.telephone)));
            return;
        }

        FragmentManager fm = getSupportFragmentManager();
        dialogForgotFragment = DialogForgotFragment.newInstance(maskText);
        dialogForgotFragment.show(fm, "DialogForgotFragment");

        textInputTelephone.setError(null);
        textInputTelephone.setErrorEnabled(false);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if(requestCode == 1){
            if(resultCode == Activity.RESULT_OK) {
                String userPhone = UserPrefencesManager.getCurrentUser().getTelephone().substring(3, UserPrefencesManager.getCurrentUser().getTelephone().length());
                int userCodePhone = Integer.valueOf(UserPrefencesManager.getCurrentUser().getTelephone().substring(0, 3));

                countryCodePicker.setCountryForPhoneCode(userCodePhone);
                phoneEditText.setText(userPhone);
            }
        } else {
            if(resultCode == Activity.RESULT_OK){
                String userPhone = UserPrefencesManager.getCurrentUser().getTelephone().substring(3, UserPrefencesManager.getCurrentUser().getTelephone().length());
                int userCodePhone = Integer.valueOf(UserPrefencesManager.getCurrentUser().getTelephone().substring(0, 3));

                countryCodePicker.setCountryForPhoneCode(userCodePhone);
                phoneEditText.setText(userPhone);
            }
        }
    }

    @Override
    public void enabledControls(boolean isEnabled){
        if(isEnabled) {
            progressDialog.dismiss();
            phoneEditText.setEnabled(true);
            codePinEditText.setEnabled(true);
            findViewById(R.id.BTN_Login).setEnabled(true);
            findViewById(R.id.BTN_CriarConta).setEnabled(true);
            findViewById(R.id.BTN_ForgotCodePin).setEnabled(true);
        } else {
            progressDialog.show();
            phoneEditText.setEnabled(false);
            codePinEditText.setEnabled(false);
            findViewById(R.id.BTN_Login).setEnabled(false);
            findViewById(R.id.BTN_CriarConta).setEnabled(false);
            findViewById(R.id.BTN_ForgotCodePin).setEnabled(false);
        }
    }

    @NonNull
    @Override
    public LoginPresenter providePresenter() {
        return new LoginPresenter();
    }

    @Override
    public void showForgotError(int type) {
        if(type == 0)
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Les données que vous avez saisies ne sont pas correctes.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
        else
            Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Echec d'envoie E-mail, veuillez reessayer.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
        }


    @Override
    public void showLoginError(int type) {
        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Les informations entrées ne sont pas correctes, verifiez votre code PIN.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
    }

    @Override
    public void finishToLogin(UserResponse response) {
        firebaseSignIn();
        UserPrefencesManager.setCurentUserLoginSuccess(true);
        UserPrefencesManager.setCurentUser(response);
        startActivity(new Intent(this, DrawerActivity.class));
        finish();
    }

    @Override
    public void finishToForgot() {
        dialogForgotFragment.dismiss();

        flaglogin = false;

        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Vous avez recu un mail avec votre code PIN.")
                .setDuration(Snacky.LENGTH_LONG)
                .success()
                .show();
    }

    private void initProgressBar(){
        progressDialog = new ProgressDialog(this);
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(false);
        progressDialog.setMessage("Veuillez patienter");
    }

    @Override
    public void positiveClicked(String telephone, String email) {
        LoginActivity.pin = email;

        enabledControls(false);
        getPresenter().forgot(telephone, email);
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }


    @Override
    public void onBackPressed() {
        if(UserPrefencesManager.getCurrentUser() == null)
            finish();

        super.onBackPressed();
    }

    private void firebaseSignIn() {
        mAuth.signInAnonymously()
                .addOnCompleteListener(this, new OnCompleteListener<AuthResult>() {
                    @Override
                    public void onComplete(@NonNull Task<AuthResult> task) {
                        if (task.isSuccessful()) {
                            // Sign in success, update UI with the signed-in user's information
                            LogCat.e( "signInAnonymously:success");
                            FirebaseUser user = mAuth.getCurrentUser();
                            LogCat.e( "signInAnonymously:success"+user);

                        } else {
                            // If sign in fails, display a message to the user.
                            LogCat.e( "signInAnonymously:failure", task.getException());

                        }

                    }
                });
    }

    @Override
    public void onUnknownError(String errorMessage) {
        enabledControls(true);

        Constants.showOnUnknownError(findViewById(R.id.root), new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                enabledControls(false);

                if(flaglogin)
                    getPresenter().forgot(maskText, pin);
                else
                    getPresenter().login(maskText, codePinEditText.getText().toString());
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

                if(flaglogin)
                    getPresenter().forgot(maskText, pin);
                else
                    getPresenter().login(maskText, codePinEditText.getText().toString());
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

                if(flaglogin)
                    getPresenter().forgot(maskText, pin);
                else
                    getPresenter().login(maskText, codePinEditText.getText().toString());
            }
        });
    }
}
