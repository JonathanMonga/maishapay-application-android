package com.maishapay.ui.menu;

import android.view.Menu;
import android.view.MenuInflater;

import com.maishapay.R;
import com.refresh.menuitem.RefreshMenuItemHelper;

public class MenuSearchHelper extends RefreshMenuItemHelper {

    @Override
    public boolean onCreateOptionsMenu(MenuInflater menuInflater, Menu menu, boolean useHoloDark) {
        menuInflater.inflate(R.menu.menu_search, menu);
        return true;
    }
}