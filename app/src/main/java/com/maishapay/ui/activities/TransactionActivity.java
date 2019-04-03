package com.maishapay.ui.activities;


import android.annotation.SuppressLint;
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

import com.crashlytics.android.Crashlytics;
import com.maishapay.R;
import com.maishapay.model.client.response.TransactionItemResponse;
import com.maishapay.model.domain.UserDataPreference;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.TransactionPresenter;
import com.maishapay.ui.adapter.TransactionAdapter;
import com.maishapay.ui.menu.MenuHelper;
import com.maishapay.util.Constants;
import com.maishapay.util.LogCat;
import com.maishapay.view.TransactionView;

import org.alfonz.utility.NetworkUtility;

import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import de.mateware.snacky.Snacky;
import io.fabric.sdk.android.Fabric;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

import static com.maishapay.model.MaishapayNotification.EXTRA_NOTIFICATION;

public class TransactionActivity extends BaseActivity<TransactionPresenter, TransactionView> implements TransactionView {

    @BindView(R.id.recycler_view)
    RecyclerView recyclerView;
    @BindView(R.id.loadingProgressBar)
    ProgressBar progressBar;
    @BindView(R.id.ET_FrancsEnvoye)
    TextView ET_FrancsEnvoye;
    @BindView(R.id.ET_FrancsRecu)
    TextView ET_FrancsRecu;
    @BindView(R.id.ET_DollarsEnvoye)
    TextView ET_DollarsEnvoye;
    @BindView(R.id.ET_DollarsRecu)
    TextView ET_DollarsRecu;
    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;

    private TransactionAdapter mAdapter;
    private MenuHelper menuHelper;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Fabric.with(this, new Crashlytics());
        setContentView(R.layout.transaction_activity);
        ButterKnife.bind(this);

        logUser();

        toolbar.setTitle("Transactions");
        setSupportActionBar(toolbar);
        menuHelper = new MenuHelper();

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        progressBar.setVisibility(View.VISIBLE);
    }

    private void logUser() {
        // TODO: Use the current user's information
        // You can call any combination of these three methods
        if(UserPrefencesManager.getCurrentUser() != null) {
            Crashlytics.setUserIdentifier(UserPrefencesManager.getCurrentUser().getTelephone());
            Crashlytics.setUserEmail(UserPrefencesManager.getCurrentUser().getEmail());
            Crashlytics.setUserName(UserPrefencesManager.getCurrentUser().getPrenom() + " " + UserPrefencesManager.getCurrentUser().getNom());
        }
    }

    @SuppressLint("DefaultLocale")
    @Override
    protected void onResume() {
        super.onResume();

        if (NetworkUtility.isOnline(this)) {
            progressBar.setVisibility(View.VISIBLE);
            getPresenter().transactions(UserPrefencesManager.getCurrentUser().getTelephone());
        } else if (getIntent().hasExtra(EXTRA_NOTIFICATION) && NetworkUtility.isOnline(this)) {
            progressBar.setVisibility(View.VISIBLE);
            getPresenter().transactions(UserPrefencesManager.getCurrentUser().getTelephone());
            getPresenter().solde(UserPrefencesManager.getCurrentUser().getTelephone());
        } else {
            UserDataPreference userDataPreference = UserPrefencesManager.getUserDataPreference();

            if (userDataPreference.getTransactionItemResponse() != null) {
                progressBar.setVisibility(View.INVISIBLE);
                LogCat.e("Tout est bon " + userDataPreference.getTransactionItemResponse().size());

                ET_FrancsEnvoye.setText(String.format("%s Fc", Constants.truncFloat(userDataPreference.getEnvoiFrancs())));
                ET_FrancsRecu.setText(String.format("%s Fc", Constants.truncFloat(userDataPreference.getRecuFrancs())));
                ET_DollarsEnvoye.setText(String.format("%s $", Constants.truncFloat(userDataPreference.getEnvoiDollars())));
                ET_DollarsRecu.setText(String.format("%s $", Constants.truncFloat(userDataPreference.getRecuDollars())));

                mAdapter = new TransactionAdapter(userDataPreference.getTransactionItemResponse());
                RecyclerView.LayoutManager mLayoutManager = new LinearLayoutManager(this);
                recyclerView.setLayoutManager(mLayoutManager);
                recyclerView.setItemAnimator(new DefaultItemAnimator());
                recyclerView.setAdapter(mAdapter);
            } else {
                progressBar.setVisibility(View.VISIBLE);

                LogCat.e("Tout n'est bon ");
            }
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
        ET_FrancsEnvoye.setText(String.format("%s Fc", Constants.truncFloat(responses.getEnvoiFrancs())));
        ET_FrancsRecu.setText(String.format("%s Fc", Constants.truncFloat(responses.getRecuFrancs())));
        ET_DollarsEnvoye.setText(String.format("%s $", Constants.truncFloat(responses.getEnvoiDollars())));
        ET_DollarsRecu.setText(String.format("%s $", Constants.truncFloat(responses.getRecuDollars())));
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
            case R.id.action_rafrechir: {
                if (NetworkUtility.isOnline(this)) {
                    menuHelper.setMenuItem(item);
                    menuHelper.startLoading();
                    progressBar.setVisibility(View.VISIBLE);
                    getPresenter().transactions(UserPrefencesManager.getCurrentUser().getTelephone());
                } else
                    Snacky.builder()
                            .setView(findViewById(R.id.root))
                            .setText("Aucune connexion réseau. Réessayez plus tard.")
                            .setDuration(Snacky.LENGTH_LONG)
                            .error()
                            .show();
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
