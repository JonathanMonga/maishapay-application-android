package com.maishapay.ui.activities;


import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;

import com.crashlytics.android.Crashlytics;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.ContentViewEvent;
import com.maishapay.R;
import com.maishapay.model.domain.PaiementModel;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.ui.adapter.PaiementAdapter;

import butterknife.BindView;
import butterknife.ButterKnife;
import io.fabric.sdk.android.Fabric;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

import static com.maishapay.ui.activities.TransfertPaiementActivity.EXTRA_NUMERO_SERVICE;
import static com.maishapay.ui.activities.TransfertPaiementActivity.EXTRA_TYPE_ABONNEMENT;

/**
 * A simple {@link Fragment} subclass.
 */
public class PaiementActivity extends AppCompatActivity{
    private static final int REQUEST_ABONNEMENT = 1;

    @BindView(R.id.recycler_view) RecyclerView recyclerView;
    @BindView(R.id.toolbar_actionbar) Toolbar toolbar;

    private PaiementAdapter mAdapter;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Fabric.with(this, new Crashlytics());
        setContentView(R.layout.paiement_activity);
        ButterKnife.bind(this);

        logUser();

        toolbar.setTitle("Paiements et abonnements");
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        mAdapter = new PaiementAdapter(PaiementModel.getData(), position -> {
            switch (position) {
                case 0: {
                    Answers.getInstance().logContentView(new ContentViewEvent()
                            .putContentId("Transfert")
                            .putContentName("Billets concert ADA"));

                    Intent intent = new Intent(PaiementActivity.this, TransfertPaiementActivity.class);
                    intent.putExtra(EXTRA_TYPE_ABONNEMENT, "Réservation billets.");
                    intent.putExtra(EXTRA_NUMERO_SERVICE, "243972435000");
                    startActivityForResult(intent, REQUEST_ABONNEMENT);
                    break;
                }

                case 11: {
                    Answers.getInstance().logContentView(new ContentViewEvent()
                            .putContentId("Transfert")
                            .putContentName("Activité Transfert Canal +"));

                    Intent intent = new Intent(PaiementActivity.this, TransfertPaiementActivity.class);
                    intent.putExtra(EXTRA_TYPE_ABONNEMENT, "Canal +");
                    intent.putExtra(EXTRA_NUMERO_SERVICE, "243972435000");
                    startActivityForResult(intent, REQUEST_ABONNEMENT);
                    break;
                }

                case 12: {
                    Answers.getInstance().logContentView(new ContentViewEvent()
                            .putContentId("Transfert")
                            .putContentName("Activité Transfert Easy Tv"));

                    Intent intent = new Intent(PaiementActivity.this, TransfertPaiementActivity.class);
                    intent.putExtra(EXTRA_TYPE_ABONNEMENT, "Easy Tv");
                    intent.putExtra(EXTRA_NUMERO_SERVICE, "243972435000");
                    startActivityForResult(intent, REQUEST_ABONNEMENT);
                    break;
                }

                case 13: {
                    Answers.getInstance().logContentView(new ContentViewEvent()
                            .putContentId("Transfert")
                            .putContentName("Activité Transfert Startimes"));

                    Intent intent = new Intent(PaiementActivity.this, TransfertPaiementActivity.class);
                    intent.putExtra(EXTRA_TYPE_ABONNEMENT, "Startimes");
                    intent.putExtra(EXTRA_NUMERO_SERVICE, "243972435000");
                    startActivityForResult(intent, REQUEST_ABONNEMENT);
                    break;
                }

                case 14: {
                    Answers.getInstance().logContentView(new ContentViewEvent()
                            .putContentId("Transfert")
                            .putContentName("Activité Transfert DStv"));

                    Intent intent = new Intent(PaiementActivity.this, TransfertPaiementActivity.class);
                    intent.putExtra(EXTRA_TYPE_ABONNEMENT, "DStv");
                    intent.putExtra(EXTRA_NUMERO_SERVICE, "243972435000");
                    startActivityForResult(intent, REQUEST_ABONNEMENT);
                    break;
                }

                default:{
                    Answers.getInstance().logContentView(new ContentViewEvent()
                            .putContentId("Transfert")
                            .putContentName(String.format("Activité Transfert %s", PaiementModel.getData().get(position).getName())));

                    Intent intent = new Intent(PaiementActivity.this, TransfertCompteActivity.class);
                    intent.putExtra(Intent.EXTRA_TITLE, PaiementModel.getData().get(position).getName());
                    startActivityForResult(intent, REQUEST_ABONNEMENT);
                }
            }
        });

        RecyclerView.LayoutManager mLayoutManager = new LinearLayoutManager(this);
        recyclerView.setLayoutManager(mLayoutManager);
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        recyclerView.setAdapter(mAdapter);
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
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if(resultCode == Activity.RESULT_OK) {
            setResult(Activity.RESULT_OK);
            finish();
        }
    }
}
