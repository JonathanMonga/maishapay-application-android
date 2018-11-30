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
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.Toast;

import com.maishapay.R;
import com.maishapay.model.client.response.UserResponse;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.UpdateProfilePresenter;
import com.maishapay.ui.dialog.DialogUpdateFragment;
import com.maishapay.ui.dialog.PossitiveButtonListener;
import com.maishapay.util.Constants;
import com.maishapay.view.UpdateProfileView;

import net.grandcentrix.thirtyinch.TiActivity;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class UpdateProfilActivity extends TiActivity<UpdateProfilePresenter, UpdateProfileView> implements PossitiveButtonListener, UpdateProfileView {

    private static String PIN;

    @BindView(R.id.ET_Phone)
    EditText phoneEditText;
    @BindView(R.id.ET_Email)
    EditText emailEditText;
    @BindView(R.id.ET_Sobrenome)
    EditText nomEditText;
    @BindView(R.id.ET_Nome)
    EditText prenomEditText;
    @BindView(R.id.ET_Ville)
    EditText villeEditText;
    @BindView(R.id.ET_Adressse)
    EditText adresseEditText;
    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;

    private ProgressDialog progressDialog;
    private DialogUpdateFragment dialogUpdateFragment;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Constants.initStatusBar(this);
        setContentView(R.layout.update_account_activity);
        ButterKnife.bind(this);

        toolbar.setTitle("Modifier votre compte");
        setSupportActionBar(toolbar);

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        UserResponse userResponse = UserPrefencesManager.getCurrentUser();
        phoneEditText.setText(userResponse.getTelephone());
        emailEditText.setText(userResponse.getEmail());
        nomEditText.setText(userResponse.getNom());
        prenomEditText.setText(userResponse.getPrenom());
        villeEditText.setText(userResponse.getVille());
        adresseEditText.setText(userResponse.getAdresse());

        initProgressBar();
    }

    @OnClick(R.id.BTN_CriarConta)
    public void clickCriarConta() {

        if (TextUtils.isEmpty(prenomEditText.getText().toString())) {
            toastMessage(String.format(getString(R.string.erro_campo), prenomEditText.getHint()), R.id.ET_Nome);
            return;
        }

        if (TextUtils.isEmpty(nomEditText.getText().toString())) {
            toastMessage(String.format(getString(R.string.erro_campo), nomEditText.getHint()), R.id.ET_Sobrenome);
            return;
        }

        if (TextUtils.isEmpty(phoneEditText.getText().toString())) {
            toastMessage(String.format(getString(R.string.erro_campo), nomEditText.getHint()), R.id.ET_Nome);
            return;
        }

        if (TextUtils.isEmpty(emailEditText.getText().toString())) {
            toastMessage(String.format(getString(R.string.erro_campo), emailEditText.getHint()), R.id.ET_Email);
            return;
        }

        FragmentManager fm = getSupportFragmentManager();
        dialogUpdateFragment = DialogUpdateFragment.newInstance();
        dialogUpdateFragment.show(fm, "DialogUpdateFragment");
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
        } else {
            progressDialog.show();
        }
    }

    @NonNull
    @Override
    public UpdateProfilePresenter providePresenter() {
        return new UpdateProfilePresenter();
    }

    @Override
    public void showResponseError() {
        Snacky.builder()
                .setView(findViewById(R.id.LL_Register))
                .setText("Le code Pin entré n'est pas correct.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
    }

    @Override
    public void finishToUpdate() {
        dialogUpdateFragment.dismiss();
        Snacky.builder()
                .setView(findViewById(R.id.LL_Register))
                .setText("Vos données ont été modifiés avec succés")
                .setDuration(Snacky.LENGTH_LONG)
                .success()
                .show();

        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                setResult(1);
                finish();
            }
        }, 500);
    }

    private void initProgressBar() {
        progressDialog = new ProgressDialog(this);
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(false);
        progressDialog.setMessage("Veuillez patienter");
    }

    private void toastMessage(String message, int view) {
        findViewById(view).startAnimation(AnimationUtils.loadAnimation(this, R.anim.shake));
        Toast.makeText(this, message, Toast.LENGTH_LONG).show();
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @Override
    public void positiveClicked(String telephone, String pin) {
        PIN = pin;
        enabledControls(false);
        getPresenter().updateProfile(
                nomEditText.getText().toString(),
                prenomEditText.getText().toString(),
                phoneEditText.getText().toString(),
                emailEditText.getText().toString(),
                adresseEditText.getText().toString(),
                villeEditText.getText().toString(),
                pin);
    }

    @Override
    public void onUnknownError(String errorMessage) {
        enabledControls(true);

        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Impossible de se connecter au serveur.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
    }

    @Override
    public void onTimeout() {
        enabledControls(true);
        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Le délais s'est t'écouler.")
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
