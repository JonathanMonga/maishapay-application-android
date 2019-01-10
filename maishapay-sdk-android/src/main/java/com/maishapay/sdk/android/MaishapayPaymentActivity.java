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

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

public class MaishapayPaymentActivity extends AppCompatActivity {

    public static final String EXTRA_MAISHAPAY_CONFIGURATION = "config";
    public static final String EXTRA_PAYMENT = "payment_data";
    public static final int REQUEST_SPLASH_SCREEN = 1;
    public static final int REQUEST_LOGIN = 2;

    private MaishapayConfiguration configuration;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        overridePendingTransition(android.R.anim.slide_in_left, android.R.anim.slide_in_left);
        setContentView(R.layout.payment_activity);

        configuration = getIntent().getParcelableExtra(MaishapayPaymentActivity.EXTRA_MAISHAPAY_CONFIGURATION);

        if (! MaishapayUserSessionManager.isFirstLaunsh(this))
            startActivityForResult(new Intent(this, MaishapaySplashScreenActivity.class), REQUEST_SPLASH_SCREEN);

        else if (! MaishapayUserSessionManager.isUserExist(this)) {
            Intent intent = new Intent(this, MaishapayLoginActivity.class);
            intent.putExtra(EXTRA_MAISHAPAY_CONFIGURATION, configuration);
            startActivityForResult(intent, REQUEST_LOGIN);
        }

       /* getSupportActionBar().setHomeButtonEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);

        getSupportActionBar().setDisplayUseLogoEnabled(true);
        getSupportActionBar().setLogo(R.mipmap.ic_maishapay);

        getSupportActionBar().setDisplayShowTitleEnabled(true);
        getSupportActionBar().setTitle(R.string.commande);*/
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if(resultCode == Activity.RESULT_OK) {
            switch (requestCode) {
                case REQUEST_SPLASH_SCREEN : {
                    Intent intent = new Intent(this, MaishapayLoginActivity.class);
                    intent.putExtra(EXTRA_MAISHAPAY_CONFIGURATION, configuration);
                    startActivityForResult(intent, REQUEST_LOGIN);
                    break;
                }

                case REQUEST_LOGIN : {

                    break;
                }

                default:
                    break;
            }
        }
    }
}
