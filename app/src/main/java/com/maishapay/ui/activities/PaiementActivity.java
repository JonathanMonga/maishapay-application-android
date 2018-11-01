package com.maishapay.ui.activities;


import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;

import com.afollestad.materialdialogs.MaterialDialog;
import com.maishapay.R;
import com.maishapay.model.domain.PaiementModel;
import com.maishapay.ui.adapter.PaiementAdapter;

import butterknife.BindView;
import butterknife.ButterKnife;
import de.mateware.snacky.Snacky;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

/**
 * A simple {@link Fragment} subclass.
 */
public class PaiementActivity extends AppCompatActivity{

    @BindView(R.id.recycler_view) RecyclerView recyclerView;
    @BindView(R.id.toolbar_actionbar) Toolbar toolbar;

    private PaiementAdapter mAdapter;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.paiement_activity);
        ButterKnife.bind(this);

        toolbar.setTitle("Paiements et abonnements");
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        mAdapter = new PaiementAdapter(PaiementModel.getData(), new PaiementAdapter.ItemClickedListener() {
            @Override
            public void clicked(int position) {
                switch (position){
                    case 10: {
                        Snacky.builder()
                                .setView(findViewById(R.id.root))
                                .setText("Cette fonctionnalité sera bientôt disponible!")
                                .setDuration(Snacky.LENGTH_LONG)
                                .warning()
                                .show();
                        break;
                    }

                    case 11: {
                        Snacky.builder()
                                .setView(findViewById(R.id.root))
                                .setText("Cette fonctionnalité sera bientôt disponible!")
                                .setDuration(Snacky.LENGTH_LONG)
                                .warning()
                                .show();
                        break;
                    }

                    case 12: {
                        Snacky.builder()
                                .setView(findViewById(R.id.root))
                                .setText("Cette fonctionnalité sera bientôt disponible!")
                                .setDuration(Snacky.LENGTH_LONG)
                                .warning()
                                .show();
                        break;
                    }

                    default:{
                        new MaterialDialog.Builder(PaiementActivity.this)
                                .title("Type des transferts")
                                .items(R.array.option_transfert_paiment)
                                .itemsCallback(new MaterialDialog.ListCallback() {
                                    @Override
                                    public void onSelection(MaterialDialog dialog, View itemView, int position, CharSequence text) {
                                        switch (position) {

                                            case 0: {
                                                startActivity(new Intent(PaiementActivity.this, TransfertCompteActivity.class));
                                                break;
                                            }

                                            default: {
                                                startActivity(new Intent(PaiementActivity.this, TransfertCompteCashActivity.class));
                                                break;
                                            }

                                        }
                                    }
                                }).show();
                        break;
                    }
                }
            }
        });
        RecyclerView.LayoutManager mLayoutManager = new LinearLayoutManager(this);
        recyclerView.setLayoutManager(mLayoutManager);
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        recyclerView.setAdapter(mAdapter);
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
}
