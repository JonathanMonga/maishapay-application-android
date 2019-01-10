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

package com.maishapay.sdk.android;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.support.design.widget.Snackbar;
import android.support.design.widget.TextInputEditText;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.Toast;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;

public class MaishapayCodePinOublieActivity extends AppCompatActivity implements View.OnClickListener {

    private MaishapayClient maishapayClient;
    private TextInputEditText phoneEditText;
    private TextInputEditText emailEditText;
    private CompositeDisposable compositeDisposable = new CompositeDisposable();
    private AlertDialog dialog;


    private DialogInterface.OnClickListener negativeDialodButton = new DialogInterface.OnClickListener() {
        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            dialog.dismiss();
        }
    };

    private DialogInterface.OnClickListener positiveDialodButton = new DialogInterface.OnClickListener() {
        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                dialog.dismiss();
                startActivity(new Intent(Settings.ACTION_WIRELESS_SETTINGS));
            } catch (Exception ex) {
                dialog.dismiss();
            }
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.forgot_code_pin_activity);

        initClient(getIntent());

        phoneEditText = findViewById(R.id.textInputEditTextPhone);
        emailEditText = findViewById(R.id.textInputEditTextEmail);

        findViewById(R.id.appCompatButtonSoumettre).setOnClickListener(this);
    }

    private void initClient(Intent intent) {
        MaishapayConfiguration configuration = intent.getParcelableExtra(MaishapayPaymentActivity.EXTRA_MAISHAPAY_CONFIGURATION);

        maishapayClient = MaishapayClient.getInstance(this,  configuration.getEnvironment());
    }

    @Override
    public void onClick(final View view) {
        String userPhone = phoneEditText.getText().toString();
        String userEmail = emailEditText.getText().toString();

        if (TextUtils.isEmpty(userPhone)) {
            findViewById(R.id.textInputLayoutPhone).startAnimation(AnimationUtils.loadAnimation(this, R.anim.shake));
            Toast.makeText(this, R.string.msg_phone_require, Toast.LENGTH_LONG).show();
            return;
        }

        if (TextUtils.isEmpty(userEmail)) {
            findViewById(R.id.textInputLayoutEmail).startAnimation(AnimationUtils.loadAnimation(this, R.anim.shake));
            Toast.makeText(this, R.string.msg_email_require, Toast.LENGTH_LONG).show();
            return;
        }

        enabledControls(false);

        compositeDisposable.add(maishapayClient.pin_perdu(userPhone, userEmail)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new Consumer<Integer>() {
                    @Override
                    public void accept(Integer integer) {
                        switch (integer) {
                            case 0: {
                                enabledControls(true);
                                Snackbar.make(view, R.string.msg_pin_perdu_error_0, Snackbar.LENGTH_LONG).show();
                                break;
                            }

                            case 2: {
                                enabledControls(true);
                                Snackbar.make(view, R.string.msg_pin_perdu_error_2, Snackbar.LENGTH_LONG).show();
                                break;
                            }

                            default: {
                                enabledControls(false);
                                findViewById(R.id.loadingLayout).setVisibility(View.GONE);
                                Snackbar.make(view, R.string.msg_pin_perdu_success, Snackbar.LENGTH_INDEFINITE)
                                        .setAction("Retour", new View.OnClickListener() {
                                            @Override
                                            public void onClick(View view) {
                                                finish();
                                            }
                                        }).show();
                                break;
                            }
                        }
                    }
                }, new Consumer<Throwable>() {
                    @Override
                    public void accept(Throwable throwable) {
                        enabledControls(true);
                        showDialog();
                    }
                }));
    }

    private void enabledControls(boolean isEnabled){
        if(isEnabled) {
            phoneEditText.setEnabled(true);
            emailEditText.setEnabled(true);
            findViewById(R.id.appCompatButtonSoumettre).setEnabled(true);
            findViewById(R.id.loadingLayout).setVisibility(View.GONE);
        } else {
            phoneEditText.setEnabled(false);
            emailEditText.setEnabled(false);
            findViewById(R.id.appCompatButtonSoumettre).setEnabled(false);
            findViewById(R.id.loadingLayout).setVisibility(View.VISIBLE);
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        compositeDisposable.clear();
    }

    private void showDialog() {
        dialog = new AlertDialog.Builder(MaishapayCodePinOublieActivity.this)
                .setIcon(R.mipmap.ic_info)
                .setTitle(R.string.reessayer)
                .setMessage(R.string.msg_network_error)
                .setNegativeButton(R.string.annuler, negativeDialodButton)
                .setPositiveButton(R.string.parametres, positiveDialodButton)
                .show();
    }
}
