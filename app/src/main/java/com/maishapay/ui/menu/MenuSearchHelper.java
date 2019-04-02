package com.maishapay.ui.menu;

import android.app.Activity;
import android.app.SearchManager;
import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.widget.SearchView;

import com.maishapay.R;
import com.maishapay.ui.adapter.MerchantListAdapter;
import com.refresh.menuitem.RefreshMenuItemHelper;

public class MenuSearchHelper extends RefreshMenuItemHelper {
    private final Activity context;
    private MerchantListAdapter mMerchantListAdapter;

    public MenuSearchHelper(Activity context, MerchantListAdapter merchantListAdapter) {
        this.context = context;
        mMerchantListAdapter = merchantListAdapter;
    }

    @Override
    public boolean onCreateOptionsMenu(MenuInflater menuInflater, Menu menu, boolean useHoloDark) {
        menuInflater.inflate(R.menu.menu_search, menu);

        /// Associate searchable configuration with the SearchView
        SearchManager searchManager = (SearchManager) context.getSystemService(Context.SEARCH_SERVICE);
        SearchView searchView = (SearchView) menu.findItem(R.id.action_search).getActionView();
        searchView.setSearchableInfo(searchManager.getSearchableInfo(context.getComponentName()));
        searchView.setMaxWidth(Integer.MAX_VALUE);

        // listening to search query text change
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() {
            @Override
            public boolean onQueryTextSubmit(String query) {
                // filter recycler view when query submitted
                mMerchantListAdapter.getFilter().filter(query);
                return false;
            }

            @Override
            public boolean onQueryTextChange(String query) {
                // filter recycler view when text is changed
                mMerchantListAdapter.getFilter().filter(query);
                return false;
            }
        });
        return true;
    }

    public void setMerchantListAdapter(MerchantListAdapter merchantListAdapter) {
        mMerchantListAdapter = merchantListAdapter;
    }
}