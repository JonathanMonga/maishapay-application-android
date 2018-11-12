package com.maishapay.ui.activities;


import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.maishapay.R;
import com.maishapay.model.client.response.TransactionResponse;
import com.maishapay.model.domain.UserDataPreference;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.TransactionPresenter;
import com.maishapay.ui.adapter.TransactionAdapter;
import com.maishapay.ui.menu.MenuHelper;
import com.maishapay.util.Constants;
import com.maishapay.view.TransactionView;

import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import de.mateware.snacky.Snacky;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class TransactionActivity extends BaseActivity<TransactionPresenter, TransactionView> implements TransactionView{

    @BindView(R.id.recycler_view) RecyclerView recyclerView;
    @BindView(R.id.loadingProgressBar) ProgressBar progressBar;
    @BindView(R.id.ET_FrancsEnvoye) TextView ET_FrancsEnvoye;
    @BindView(R.id.ET_FrancsRecu) TextView ET_FrancsRecu;
    @BindView(R.id.ET_DollarsEnvoye) TextView ET_DollarsEnvoye;
    @BindView(R.id.ET_DollarsRecu) TextView ET_DollarsRecu;
    @BindView(R.id.toolbar_actionbar) Toolbar toolbar;

    private TransactionAdapter mAdapter;
    private MenuHelper menuHelper;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.transaction_activity);
        ButterKnife.bind(this);

        toolbar.setTitle("Transactions");
        setSupportActionBar(toolbar);
        menuHelper = new MenuHelper();

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null){
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        progressBar.setVisibility(View.VISIBLE);
        getPresenter().transactions(UserPrefencesManager.getCurrentUser().getTelephone());
    }

    @Override
    public void finishToLoadTransactions(List<TransactionResponse> responses) {
        menuHelper.stopLoading();
        progressBar.setVisibility(View.INVISIBLE);
        mAdapter = new TransactionAdapter(responses);
        RecyclerView.LayoutManager mLayoutManager = new LinearLayoutManager(this);
        recyclerView.setLayoutManager(mLayoutManager);
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        recyclerView.setAdapter(mAdapter);
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @Override
    public void enabledControls(boolean flag) {

    }

    @Override
    public void finishToLoadStatisics(UserDataPreference responses) {
        ET_FrancsEnvoye.setText(String.format("%d Fc", responses.getEnvoiFrancs()));
        ET_FrancsRecu.setText(String.format("%d Fc", responses.getRecuFrancs()));
        ET_DollarsEnvoye.setText(String.format("%d $", responses.getEnvoiDollars()));
        ET_DollarsRecu.setText(String.format("%d $", responses.getRecuDollars()));
    }

    @NonNull
    @Override
    public TransactionPresenter providePresenter() {
        return new TransactionPresenter();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        return menuHelper.onCreateOptionsMenu(getMenuInflater(), menu, true);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                finish();
                return true;
            case R.id.action_rafrechir : {
                menuHelper.setMenuItem(item);
                menuHelper.startLoading();

                progressBar.setVisibility(View.VISIBLE);
                getPresenter().transactions(UserPrefencesManager.getCurrentUser().getTelephone());
            }
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public void onUnknownError(String errorMessage) {
        menuHelper.stopLoading();
        enabledControls(true);

        Constants.showOnUnknownError(findViewById(R.id.root), new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                enabledControls(false);
                getPresenter().transactions(UserPrefencesManager.getCurrentUser().getTelephone());
            }
        });
    }

    @Override
    public void onTimeout() {
        menuHelper.stopLoading();
        enabledControls(true);

        Constants.showOnTimeout(findViewById(R.id.root), new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                enabledControls(false);
                getPresenter().transactions(UserPrefencesManager.getCurrentUser().getTelephone());
            }
        });
    }

    @Override
    public void onNetworkError() {
        menuHelper.stopLoading();
        enabledControls(true);

        Constants.showOnNetworkError(findViewById(R.id.root), new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                enabledControls(false);
                getPresenter().transactions(UserPrefencesManager.getCurrentUser().getTelephone());
            }
        });
    }
}
