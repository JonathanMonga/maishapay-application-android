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
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
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
import com.maishapay.ui.dialog.DialogConfirmTransfertFragment;
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
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class EpargneActivity extends BaseActivity<EpargnePresenter, EpargneView> implements EpargneView {

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

    private DialogConfirmTransfertFragment dialogForgotFragment;
    private ProgressDialog progressDialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.epargne_solde_activity);
        ButterKnife.bind(this);

        toolbar.setTitle("Solde epargne");
        setSupportActionBar(toolbar);

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

        initProgressBar();

        progressDialog.show();
        getPresenter().hasEpargneCompte(UserPrefencesManager.getCurrentUser().getTelephone());
    }

    @OnClick(R.id.cardEpargnePersonelle)
    public void cardEpargnePersonelleClicked() {
        startActivity(new Intent(this, EpargnePersonnelleActivity.class));
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
    public void finishToLoadSolde(SoldeEpargneResponse response) {
        LL_fitDollards.setVisibility(View.VISIBLE);
        LL_fitFrancs.setVisibility(View.VISIBLE);
        progressBarSolde.setVisibility(View.INVISIBLE);

        String francs = response.getFrancCongolais().replace(" ", "");
        int francsInt = Integer.valueOf(francs.substring(0, francs.length() - 3));
        int dollarsInt = Integer.valueOf(response.getDollard().substring(0, response.getDollard().length() - 3));

        UserDataPreference userDataPreference = UserPrefencesManager.getLastSoldeAndRapport();
        userDataPreference.setEpargneFrancs(response.getFrancCongolais());
        userDataPreference.setEpargneDollars(response.getDollard());
        UserPrefencesManager.setLastSoldeAndRapport(userDataPreference);

        Resources resources = getResources();
        Collection<FitChartValue> valuesFrancs = new ArrayList<>();
        valuesFrancs.add(new FitChartValue(francsInt < 0 ? 0 : francsInt, resources.getColor(R.color.ab_abastecimento_status_bar)));

        Collection<FitChartValue> valuesDollars = new ArrayList<>();
        valuesDollars.add(new FitChartValue(dollarsInt * 100, resources.getColor(R.color.ab_abastecimento_status_bar)));

        TV_Dollars.setText(String.format("%s $", response.getDollard()));
        TV_Francs.setText(String.format("%s Fc", response.getFrancCongolais()));
        francsChart.setValues(valuesFrancs);
        dollarsChart.setValues(valuesDollars);
    }

    @Override
    public void finishToLoadTestCompte() {
        progressDialog.dismiss();

        if (UserPrefencesManager.getLastSoldeAndRapport().isHasEpargneCompte())
            getPresenter().soldeEpargne(UserPrefencesManager.getCurrentUser().getTelephone());
        else
            startActivity(new Intent(this, OuvrirEpargnePersonnelleActivity.class));
    }

    @Override
    public void enabledControls(boolean isEnabled) {
        if (isEnabled) {
            LL_fitDollards.setVisibility(View.VISIBLE);
            LL_fitFrancs.setVisibility(View.VISIBLE);
            progressBarSolde.setVisibility(View.INVISIBLE);
        } else {
            LL_fitDollards.setVisibility(View.INVISIBLE);
            LL_fitFrancs.setVisibility(View.INVISIBLE);
            progressBarSolde.setVisibility(View.VISIBLE);
        }
    }

    private void initProgressBar() {
        progressDialog = new ProgressDialog(this);
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(false);
        progressDialog.setMessage("Veuillez patienter");
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

        Constants.showOnUnknownError(findViewById(R.id.root), new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                enabledControls(false);


                getPresenter().hasEpargneCompte(UserPrefencesManager.getCurrentUser().getTelephone());
                getPresenter().soldeEpargne(UserPrefencesManager.getCurrentUser().getTelephone());
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
                getPresenter().hasEpargneCompte(UserPrefencesManager.getCurrentUser().getTelephone());
                getPresenter().soldeEpargne(UserPrefencesManager.getCurrentUser().getTelephone());
            }
        });
    }

    @Override
    public void onNetworkError() {
        if (!NetworkUtility.isOnline(MaishapayApplication.getMaishapayContext())) {
            if (UserPrefencesManager.getLastSoldeAndRapport() != null) {
                LL_fitDollards.setVisibility(View.VISIBLE);
                LL_fitFrancs.setVisibility(View.VISIBLE);
                progressBarSolde.setVisibility(View.INVISIBLE);

                UserDataPreference userDataPreference = UserPrefencesManager.getLastSoldeAndRapport();

                String francs = String.valueOf(userDataPreference.getEpargneFrancs()).replace(" ", "");
                int francsInt = Integer.valueOf(francs.substring(0, francs.length() - 3));

                int dollarsInt = Integer.valueOf(String.valueOf(userDataPreference.getEpargneDollars()).substring(0, String.valueOf(userDataPreference.getEpargneDollars()).length() - 3));

                Resources resources = getResources();
                Collection<FitChartValue> valuesFrancs = new ArrayList<>();
                valuesFrancs.add(new FitChartValue(francsInt < 0 ? 0 : francsInt, resources.getColor(R.color.ab_abastecimento_status_bar)));

                Collection<FitChartValue> valuesDollars = new ArrayList<>();
                valuesDollars.add(new FitChartValue(dollarsInt * 100, resources.getColor(R.color.ab_abastecimento_status_bar)));

                TV_Dollars.setText(String.format("%s $", userDataPreference.getEpargneDollars()));
                TV_Francs.setText(String.format("%s Fc", userDataPreference.getEpargneFrancs()));
                francsChart.setValues(valuesFrancs);
                dollarsChart.setValues(valuesDollars);
            }
        } else {
            enabledControls(true);

            Constants.showOnNetworkError(findViewById(R.id.root), new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    enabledControls(false);
                    getPresenter().hasEpargneCompte(UserPrefencesManager.getCurrentUser().getTelephone());
                    getPresenter().soldeEpargne(UserPrefencesManager.getCurrentUser().getTelephone());
                }
            });
        }
    }

    @Override
    public void onBackPressed() {

        if(! UserPrefencesManager.getLastSoldeAndRapport().isHasEpargneCompte())
            finish();

        super.onBackPressed();
    }
}
