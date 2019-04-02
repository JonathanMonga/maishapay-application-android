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

import com.maishapay.R;
import com.maishapay.model.domain.PaiementModel;
import com.maishapay.ui.adapter.PaiementAdapter;

import butterknife.BindView;
import butterknife.ButterKnife;
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
        //Constants.initStatusBar(this);
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
                        Intent intent = new Intent(PaiementActivity.this, TransfertPaiementActivity.class);
                        intent.putExtra(EXTRA_TYPE_ABONNEMENT, "Canal +");
                        intent.putExtra(EXTRA_NUMERO_SERVICE, "243972435000");
                        startActivityForResult(intent, REQUEST_ABONNEMENT);
                        break;
                    }

                    case 11: {
                        Intent intent = new Intent(PaiementActivity.this, TransfertPaiementActivity.class);
                        intent.putExtra(EXTRA_TYPE_ABONNEMENT, "Easy Tv");
                        intent.putExtra(EXTRA_NUMERO_SERVICE, "243972435000");
                        startActivityForResult(intent, REQUEST_ABONNEMENT);
                        break;
                    }

                    case 12: {
                        Intent intent = new Intent(PaiementActivity.this, TransfertPaiementActivity.class);
                        intent.putExtra(EXTRA_TYPE_ABONNEMENT, "Startimes");
                        intent.putExtra(EXTRA_NUMERO_SERVICE, "243972435000");
                        startActivityForResult(intent, REQUEST_ABONNEMENT);
                        break;
                    }

                    case 13: {
                        Intent intent = new Intent(PaiementActivity.this, TransfertPaiementActivity.class);
                        intent.putExtra(EXTRA_TYPE_ABONNEMENT, "DSTV");
                        intent.putExtra(EXTRA_NUMERO_SERVICE, "243972435000");
                        startActivityForResult(intent, REQUEST_ABONNEMENT);
                        break;
                    }

                    default:{
                        Intent intent = new Intent(PaiementActivity.this, TransfertCompteActivity.class);
                        intent.putExtra(Intent.EXTRA_TITLE, PaiementModel.getData().get(position).getName());
                        startActivityForResult(intent, REQUEST_ABONNEMENT);
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

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if(resultCode == Activity.RESULT_OK) {
            setResult(Activity.RESULT_OK);
            finish();
        }
    }
}
