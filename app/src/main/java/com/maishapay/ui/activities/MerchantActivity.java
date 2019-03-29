package com.maishapay.ui.activities;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ProgressBar;

import com.maishapay.R;
import com.maishapay.ui.adapter.MerchantListAdapter;
import com.maishapay.ui.menu.MenuHelper;
import com.parse.FindCallback;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseQuery;

import org.alfonz.utility.NetworkUtility;

import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import de.mateware.snacky.Snacky;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class MerchantActivity extends AppCompatActivity {
    @BindView(R.id.recyclerview)
    RecyclerView recyclerView;
    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    @BindView(R.id.loadingProgressBar)
    ProgressBar progressBar;
    private MenuHelper menuHelper;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.merchant_activity);
        ButterKnife.bind(this);

        toolbar.setTitle("Marchants");
        setSupportActionBar(toolbar);
        menuHelper = new MenuHelper();

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        progressBar.setVisibility(View.VISIBLE);
        setupRecyclerView();
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
                    setupRecyclerView();
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

    private void setupRecyclerView() {
        ParseQuery<ParseObject> query = ParseQuery.getQuery("MarchantLocation");
        query.findInBackground(new FindCallback<ParseObject>() {
            @Override
            public void done(List<ParseObject> objects, ParseException e) {
                progressBar.setVisibility(View.GONE);
                recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
                setContactsAdapter(objects);
            }
        });
    }

    private void setContactsAdapter(List<ParseObject> merchants) {
        recyclerView.setAdapter(new MerchantListAdapter(this, merchants));
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}