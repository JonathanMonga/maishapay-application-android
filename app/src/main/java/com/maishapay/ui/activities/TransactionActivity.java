package com.maishapay.ui.activities;


import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
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
import com.maishapay.view.TransactionView;

import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import de.mateware.snacky.Snacky;

/**
 * A simple {@link Fragment} subclass.
 */
public class TransactionActivity extends BaseActivity<TransactionPresenter, TransactionView> implements TransactionView{

    @BindView(R.id.recycler_view) RecyclerView recyclerView;
    @BindView(R.id.loadingProgressBar) ProgressBar progressBar;
    @BindView(R.id.ET_FrancsEnvoye) TextView ET_FrancsEnvoye;
    @BindView(R.id.ET_FrancsRecu) TextView ET_FrancsRecu;
    @BindView(R.id.ET_DollarsEnvoye) TextView ET_DollarsEnvoye;
    @BindView(R.id.ET_DollarsRecu) TextView ET_DollarsRecu;
    @BindView(R.id.toolbar_actionbar) Toolbar toolbar;

    private TransactionAdapter mAdapter;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.transaction_activity);
        ButterKnife.bind(this);


        toolbar.setTitle("Transactions");
        setSupportActionBar(toolbar);

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null){
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        progressBar.setVisibility(View.VISIBLE);
        getPresenter().transactions(UserPrefencesManager.getCurrentUser().getTelephone());
    }

    @Override
    public void showNetworkError() {
        progressBar.setVisibility(View.INVISIBLE);

        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Vous avez besion d'une connexion internet pour effectuer cette action!")
                .setDuration(Snacky.LENGTH_INDEFINITE)
                .setActionText("Réesseyer")
                .setActionClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        progressBar.setVisibility(View.VISIBLE);
                        getPresenter().transactions(UserPrefencesManager.getCurrentUser().getTelephone());
                    }
                })
                .error()
                .show();
    }

    @Override
    public void finishToLoadTransactions(List<TransactionResponse> responses) {
        progressBar.setVisibility(View.INVISIBLE);
        mAdapter = new TransactionAdapter(responses);
        RecyclerView.LayoutManager mLayoutManager = new LinearLayoutManager(this);
        recyclerView.setLayoutManager(mLayoutManager);
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        recyclerView.setAdapter(mAdapter);
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
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                finish();
                return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
