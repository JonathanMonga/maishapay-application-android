package com.maishapay.ui.activities;


import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
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
import com.maishapay.model.client.response.TransactionItemResponse;
import com.maishapay.model.domain.UserDataPreference;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.TransactionPresenter;
import com.maishapay.ui.adapter.TransactionAdapter;
import com.maishapay.ui.menu.MenuHelper;
import com.maishapay.view.TransactionView;

import org.alfonz.utility.NetworkUtility;

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
    }

    @Override
    protected void onResume() {
        super.onResume();

        if(! NetworkUtility.isOnline(this)) {
            UserDataPreference userDataPreference = UserPrefencesManager.getUserDataPreference();

            if(userDataPreference.getTransactionItemRespons() != null) {
                progressBar.setVisibility(View.INVISIBLE);

                ET_FrancsEnvoye.setText(String.format("%d Fc", userDataPreference.getEnvoiFrancs()));
                ET_FrancsRecu.setText(String.format("%d Fc", userDataPreference.getRecuFrancs()));
                ET_DollarsEnvoye.setText(String.format("%d $", userDataPreference.getEnvoiDollars()));
                ET_DollarsRecu.setText(String.format("%d $", userDataPreference.getRecuDollars()));

                mAdapter = new TransactionAdapter(userDataPreference.getTransactionItemRespons());
                RecyclerView.LayoutManager mLayoutManager = new LinearLayoutManager(this);
                recyclerView.setLayoutManager(mLayoutManager);
                recyclerView.setItemAnimator(new DefaultItemAnimator());
                recyclerView.setAdapter(mAdapter);
            } else {
                progressBar.setVisibility(View.VISIBLE);
            }
        } else {
            progressBar.setVisibility(View.VISIBLE);
            getPresenter().transactions(UserPrefencesManager.getCurrentUser().getTelephone());
        }
    }

    @Override
    public void finishToLoadTransactions(List<TransactionItemResponse> responses) {
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
        if (flag) {
            menuHelper.stopLoading();
        } else {
            menuHelper.startLoading();
        }
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
