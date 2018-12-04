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
import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.client.response.SoldeEpargneResponse;
import com.maishapay.model.domain.UserDataPreference;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.EpargnePresenter;
import com.maishapay.ui.menu.MenuHelper;
import com.maishapay.util.Constants;
import com.maishapay.view.EpargneView;
import com.txusballesteros.widgets.FitChart;
import com.txusballesteros.widgets.FitChartValue;

import org.alfonz.utility.NetworkUtility;

import java.util.ArrayList;
import java.util.Collection;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

import static com.maishapay.ui.activities.SuccessPaiementActivity.EXTRA_REFRESH;

public class EpargneActivity extends BaseActivity<EpargnePresenter, EpargneView> implements EpargneView {
    public static final int RESULT_EPARGNE_OK = 1;

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    @BindView(R.id.fitFrancs)
    FitChart francsChart;
    @BindView(R.id.progressBarSolde)
    ProgressBar progressBarSolde;
    @BindView(R.id.fitDollards)
    FitChart dollarsChart;
    @BindView(R.id.TV_Dollars)
    TextView TV_Dollars;
    @BindView(R.id.TV_Francs)
    TextView TV_Francs;
    @BindView(R.id.LL_fitDollards)
    LinearLayout LL_fitDollards;
    @BindView(R.id.LL_fitFrancs)
    LinearLayout LL_fitFrancs;

    private MenuHelper menuHelper;
    private UserDataPreference userDataPreference;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.epargne_solde_activity);
        ButterKnife.bind(this);

        toolbar.setTitle("Solde epargne");
        setSupportActionBar(toolbar);
        menuHelper = new MenuHelper();

        LL_fitDollards.setVisibility(View.INVISIBLE);
        LL_fitFrancs.setVisibility(View.INVISIBLE);
        progressBarSolde.setVisibility(View.VISIBLE);

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        francsChart.setMinValue(0f);
        francsChart.setMaxValue(1000000f);

        dollarsChart.setMinValue(0f);
        dollarsChart.setMaxValue(1000000f);

        userDataPreference = UserPrefencesManager.getUserDataPreference();
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);

        if (intent.getBooleanExtra(EXTRA_REFRESH, false)) {
            enabledControls(false);
            getPresenter().soldeEpargne(UserPrefencesManager.getCurrentUser().getTelephone());
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (NetworkUtility.isOnline(this)) {
            getPresenter().soldeEpargne(UserPrefencesManager.getCurrentUser().getTelephone());
        } else {
            if (UserPrefencesManager.getUserDataPreference() != null) {
                LL_fitDollards.setVisibility(View.VISIBLE);
                LL_fitFrancs.setVisibility(View.VISIBLE);
                progressBarSolde.setVisibility(View.INVISIBLE);

                UserDataPreference userDataPreference = UserPrefencesManager.getUserDataPreference();

                float francsInt = Float.valueOf(userDataPreference.getEpargneFrancs());
                float dollarsInt = Float.valueOf(userDataPreference.getEpargneDollars());

                Resources resources = getResources();
                Collection<FitChartValue> valuesFrancs = new ArrayList<>();
                valuesFrancs.add(new FitChartValue(francsInt < 0 ? 0 : francsInt, resources.getColor(R.color.ab_abastecimento_status_bar)));

                Collection<FitChartValue> valuesDollars = new ArrayList<>();
                valuesDollars.add(new FitChartValue(dollarsInt * 100, resources.getColor(R.color.ab_abastecimento_status_bar)));

                TV_Dollars.setText(String.format("%s $", Constants.truncFloat(Float.valueOf(userDataPreference.getEpargneDollars()))));
                TV_Francs.setText(String.format("%s Fc", Constants.truncFloat(Float.valueOf(userDataPreference.getEpargneFrancs()))));
                francsChart.setValues(valuesFrancs);
                dollarsChart.setValues(valuesDollars);
            }
        }
    }

    @OnClick(R.id.cardEpargnePersonelle)
    public void cardEpargnePersonelleClicked() {
        startActivityForResult(new Intent(this, EpargnePersonnelleActivity.class), 2);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        return menuHelper.onCreateOptionsMenu(getMenuInflater(), menu, true);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                if(UserPrefencesManager.getUserRefresh()){
                    setResult(RESULT_EPARGNE_OK);
                }
                finish();
                return true;
            case R.id.action_rafrechir: {
                menuHelper.setMenuItem(item);
                menuHelper.startLoading();

                enabledControls(false);
                getPresenter().soldeEpargne(UserPrefencesManager.getCurrentUser().getTelephone());
            }
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public void finishToLoadSolde(SoldeEpargneResponse response) {
        menuHelper.stopLoading();
        LL_fitDollards.setVisibility(View.VISIBLE);
        LL_fitFrancs.setVisibility(View.VISIBLE);
        progressBarSolde.setVisibility(View.INVISIBLE);

        float francsInt = Float.valueOf(response.getFrancCongolais());
        float dollarsInt = Float.valueOf(response.getDollard());

        Resources resources = getResources();
        Collection<FitChartValue> valuesFrancs = new ArrayList<>();
        valuesFrancs.add(new FitChartValue(francsInt < 0 ? 0 : francsInt, resources.getColor(R.color.ab_abastecimento_status_bar)));

        Collection<FitChartValue> valuesDollars = new ArrayList<>();
        valuesDollars.add(new FitChartValue(dollarsInt * 100, resources.getColor(R.color.ab_abastecimento_status_bar)));

        TV_Dollars.setText(String.format("%s $", Constants.truncFloat(Float.valueOf(response.getDollard()))));
        TV_Francs.setText(String.format("%s Fc", Constants.truncFloat(Float.valueOf(response.getFrancCongolais()))));
        francsChart.setValues(valuesFrancs);
        dollarsChart.setValues(valuesDollars);
    }

    @Override
    public void showErrorEpargne() {
        startActivityForResult(new Intent(this, OuvrirEpargnePersonnelleActivity.class), 1);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode == 1) {
            if (resultCode == Activity.RESULT_OK) {
                enabledControls(false);
                getPresenter().soldeEpargne(UserPrefencesManager.getCurrentUser().getTelephone());
            } else {
                finish();
            }
        } else if (requestCode == 2)
            if (resultCode == Activity.RESULT_OK) {
                enabledControls(false);
                UserPrefencesManager.setUserRefresh(true);
                getPresenter().soldeEpargne(UserPrefencesManager.getCurrentUser().getTelephone());
            }
    }

    @Override
    public void enabledControls(boolean isEnabled) {
        if (isEnabled) {
            menuHelper.stopLoading();
            LL_fitDollards.setVisibility(View.VISIBLE);
            LL_fitFrancs.setVisibility(View.VISIBLE);
            progressBarSolde.setVisibility(View.INVISIBLE);
        } else {
            menuHelper.startLoading();
            LL_fitDollards.setVisibility(View.INVISIBLE);
            LL_fitFrancs.setVisibility(View.INVISIBLE);
            progressBarSolde.setVisibility(View.VISIBLE);
        }
    }

    @NonNull
    @Override
    public EpargnePresenter providePresenter() {
        return new EpargnePresenter();
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
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
        if (!NetworkUtility.isOnline(MaishapayApplication.getMaishapayContext())) {
            if (UserPrefencesManager.getUserDataPreference() != null) {
                LL_fitDollards.setVisibility(View.VISIBLE);
                LL_fitFrancs.setVisibility(View.VISIBLE);
                progressBarSolde.setVisibility(View.INVISIBLE);

                UserDataPreference userDataPreference = UserPrefencesManager.getUserDataPreference();

                float francsInt = Float.valueOf(userDataPreference.getEpargneFrancs());
                float dollarsInt = Float.valueOf(userDataPreference.getEpargneDollars());

                Resources resources = getResources();
                Collection<FitChartValue> valuesFrancs = new ArrayList<>();
                valuesFrancs.add(new FitChartValue(francsInt < 0 ? 0 : francsInt, resources.getColor(R.color.ab_abastecimento_status_bar)));

                Collection<FitChartValue> valuesDollars = new ArrayList<>();
                valuesDollars.add(new FitChartValue(dollarsInt * 100, resources.getColor(R.color.ab_abastecimento_status_bar)));

                TV_Dollars.setText(String.format("%s $", Constants.truncFloat(Float.valueOf(userDataPreference.getEpargneDollars()))));
                TV_Francs.setText(String.format("%s Fc", Constants.truncFloat(Float.valueOf(userDataPreference.getEpargneFrancs()))));
                francsChart.setValues(valuesFrancs);
                dollarsChart.setValues(valuesDollars);
            }
        } else {
            menuHelper.stopLoading();
            enabledControls(true);

            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Aucune connexion réseau. Réessayez plus tard.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
        }
    }

    @Override
    public void onBackPressed() {
        if(UserPrefencesManager.getUserRefresh()){
            setResult(RESULT_EPARGNE_OK);
            finish();
        }

        super.onBackPressed();
    }
}
