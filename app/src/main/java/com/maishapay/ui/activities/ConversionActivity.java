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

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.Spinner;
import android.widget.Toast;

import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.ui.dialog.DialogConversionFragment;
import com.maishapay.ui.dialog.DialogNumberPickerFragment;
import com.maishapay.ui.dialog.NumPadPossitiveButtonListener;

import org.alfonz.media.SoundManager;
import org.fabiomsr.moneytextview.MoneyTextView;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;


public class ConversionActivity extends AppCompatActivity implements NumPadPossitiveButtonListener {

    private static String CDF = "Francs congolais (CDF)";
    private static String USD = "Dollars (USD)";

    private static String CDF_CURRENCY = "FC";
    private static String USD_CURRENCY = "USD";
    private static String userCurrency;

    @BindView(R.id.toolbar_actionbar) Toolbar toolbar;
    @BindView(R.id.SP_TypeEnvoi) Spinner SP_TypeEnvoi;
    @BindView(R.id.ET_Montant) MoneyTextView ET_Montant;
    @BindView(R.id.TV_Taux) MoneyTextView TV_Taux;
    private SoundManager soundManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.conversion_activity);
        ButterKnife.bind(this);

        toolbar.setTitle("Conversion");
        setSupportActionBar(toolbar);

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        soundManager = MaishapayApplication.getMaishapayContext().getmSoundManager();

        TV_Taux.setAmount(Float.valueOf(String.valueOf(UserPrefencesManager.getUserDataPreference().getTaux())));

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

    @OnClick(R.id.BTN_Conversion)
    public void BTN_ConversionClicked() {
        if (ET_Montant.getAmount() == 0F) {
            toastMessage(String.format(getString(R.string.erro_campo), "Montant"), R.id.ET_Montant);
            return;
        }

        if(userCurrency.equals("USD")) {
            FragmentManager fm = getSupportFragmentManager();
            DialogConversionFragment dialogConversionFragment = DialogConversionFragment
                    .newInstance(String.format("%s", ET_Montant.getAmount() * Float.valueOf(String.valueOf(UserPrefencesManager.getUserDataPreference().getTaux()))), "FC");
            dialogConversionFragment.show(fm, "DialogConversionFragment");

        } else {
            FragmentManager fm = getSupportFragmentManager();
            DialogConversionFragment dialogConversionFragment = DialogConversionFragment
                    .newInstance(String.format("%s", ET_Montant.getAmount() / Float.valueOf(String.valueOf(UserPrefencesManager.getUserDataPreference().getTaux()))), "USD");
            dialogConversionFragment.show(fm, "DialogConversionFragment");
        }

        soundManager.playAsset("sounds/pull-out.mp3");
    }

    @Override
    public void onStop() {
        super.onStop();
        soundManager.stopAll();
    }

    private void toastMessage(String message, int view) {
        findViewById(view).startAnimation(AnimationUtils.loadAnimation(this, R.anim.shake));
        Toast.makeText(this, message, Toast.LENGTH_LONG).show();
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
}
