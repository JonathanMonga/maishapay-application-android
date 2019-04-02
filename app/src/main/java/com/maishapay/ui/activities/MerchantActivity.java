package com.maishapay.ui.activities;

import android.app.SearchManager;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SearchView;
import android.support.v7.widget.Toolbar;
import android.text.util.Linkify;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.maishapay.R;
import com.maishapay.ui.adapter.MerchantListAdapter;
import com.maishapay.ui.menu.MenuSearchHelper;
import com.parse.ParseObject;
import com.parse.ParseQuery;

import org.alfonz.utility.NetworkUtility;

import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import me.saket.bettermovementmethod.BetterLinkMovementMethod;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class MerchantActivity extends AppCompatActivity {
    @BindView(R.id.recyclerview)
    RecyclerView recyclerView;
    @BindView(R.id.img_no_network)
    ImageView img_no_network;
    @BindView(R.id.text_no_network)
    TextView text_no_network;
    @BindView(R.id.toolbar)
    Toolbar toolbar;
    SearchView searchView;
    @BindView(R.id.loadingProgressBar)
    ProgressBar progressBar;
    private MenuSearchHelper menuHelper;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.merchant_activity);
        ButterKnife.bind(this);

        toolbar.setTitle("Marchants");
        setSupportActionBar(toolbar);
        menuHelper = new MenuSearchHelper();

        BetterLinkMovementMethod.linkify(Linkify.ALL, this);

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        img_no_network.setVisibility(View.GONE);
        text_no_network.setVisibility(View.GONE);

        progressBar.setVisibility(View.VISIBLE);
        setupRecyclerView();

        // white background notification bar
        whiteNotificationBar(recyclerView);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        menuHelper.onCreateOptionsMenu(getMenuInflater(), menu, true);

        /*
        // Associate searchable configuration with the SearchView
        SearchManager searchManager = (SearchManager) getSystemService(Context.SEARCH_SERVICE);
        searchView = (SearchView) menu.findItem(R.id.action_search)
                .getActionView();
        searchView.setSearchableInfo(searchManager
                .getSearchableInfo(getComponentName()));
        searchView.setMaxWidth(Integer.MAX_VALUE);
        */
        return true;
    }

    private void whiteNotificationBar(View view) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            int flags = view.getSystemUiVisibility();
            flags |= View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR;
            view.setSystemUiVisibility(flags);
            getWindow().setStatusBarColor(Color.WHITE);
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                finish();
                return true;
            case R.id.action_search:
                return true;
            case R.id.action_rafrechir: {
                if (NetworkUtility.isOnline(this)) {
                    menuHelper.setMenuItem(item);
                    menuHelper.startLoading();
                    setupRecyclerView();
                } else {
                    img_no_network.setVisibility(View.VISIBLE);
                    text_no_network.setVisibility(View.VISIBLE);
                }
            }
        }

        return super.onOptionsItemSelected(item);
    }

    private void setupRecyclerView() {
        ParseQuery<ParseObject> query = ParseQuery.getQuery("MarchantLocation");
        query.findInBackground((objects, e) -> {
            if(e == null) {
                menuHelper.stopLoading();
                progressBar.setVisibility(View.GONE);

                recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
                setContactsAdapter(objects);
            } else {
                menuHelper.stopLoading();
                progressBar.setVisibility(View.GONE);
                img_no_network.setVisibility(View.VISIBLE);
                text_no_network.setVisibility(View.VISIBLE);
            }
        });
    }

    private void setContactsAdapter(List<ParseObject> merchants) {
        MerchantListAdapter merchantListAdapter = new MerchantListAdapter(this, merchants);
        recyclerView.setAdapter(merchantListAdapter);

        /*
        // listening to search query text change
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() {
            @Override
            public boolean onQueryTextSubmit(String query) {
                // filter recycler view when query submitted
                merchantListAdapter.getFilter().filter(query);
                return false;
            }

            @Override
            public boolean onQueryTextChange(String query) {
                // filter recycler view when text is changed
                merchantListAdapter.getFilter().filter(query);
                return false;
            }
        });

        */
        // refreshing recycler view
        merchantListAdapter.notifyDataSetChanged();
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
