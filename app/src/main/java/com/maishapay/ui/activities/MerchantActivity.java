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
import android.support.v7.widget.Toolbar;
import android.text.util.Linkify;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.SearchView;
import android.widget.TextView;

import com.maishapay.R;
import com.maishapay.ui.adapter.MerchantListAdapter;
import com.maishapay.ui.menu.MenuSearchHelper;
import com.parse.ParseObject;
import com.parse.ParseQuery;

import org.alfonz.utility.NetworkUtility;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import me.saket.bettermovementmethod.BetterLinkMovementMethod;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

import static java.util.Collections.EMPTY_LIST;

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
    private MerchantListAdapter merchantListAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.merchant_activity);
        ButterKnife.bind(this);

        toolbar.setTitle("Marchants");
        setSupportActionBar(toolbar);

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

        merchantListAdapter = new MerchantListAdapter(this, new ArrayList<>());
        menuHelper = new MenuSearchHelper(this, merchantListAdapter);

        // white background notification bar
        whiteNotificationBar(recyclerView);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        menuHelper.onCreateOptionsMenu(getMenuInflater(), menu, true);
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
        merchantListAdapter = new MerchantListAdapter(this, merchants);
        recyclerView.setAdapter(merchantListAdapter);
        menuHelper.setMerchantListAdapter(merchantListAdapter);

        // refreshing recycler view
        merchantListAdapter.notifyDataSetChanged();
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
