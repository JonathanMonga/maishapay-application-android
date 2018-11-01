package com.maishapay.ui.fragment;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.preference.Preference;
import android.support.v7.preference.PreferenceFragmentCompat;

import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.ui.activities.UpdateProfilActivity;

public class SettingsFragment extends PreferenceFragmentCompat implements SharedPreferences.OnSharedPreferenceChangeListener, Preference.OnPreferenceClickListener {
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    public void onCreatePreferences(Bundle bundle, String s) {
        // Load the preferences from an XML resource
        addPreferencesFromResource(R.xml.fragment_settings);
        Preference profil = findPreference("profil");
        Preference code_pin = findPreference("code_pin");
        profil.setOnPreferenceClickListener(this);
        code_pin.setOnPreferenceClickListener(this);
    }


    @Override
    public void onSharedPreferenceChanged(SharedPreferences prefs, String key) {
        /*
        if (key.equals("notification") && !prefs.getBoolean("notification", true)) {
            Intent service = new Intent(MaishapayApplication.getMaishapayContext(), NotificationService.class);
            MaishapayApplication.getMaishapayContext().stopService(service);
        }

        if (key.equals("notification") && prefs.getBoolean("notification", true)) {
            Intent service = new Intent(MaishapayApplication.getMaishapayContext(), NotificationService.class);
            MaishapayApplication.getMaishapayContext().stopService(service);
            MaishapayApplication.getMaishapayContext().startService(service);
        }

        */
    }

    @Override
    public void onResume() {
        super.onResume();
        getPreferenceManager().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);

    }

    @Override
    public void onPause() {
        super.onPause();
        getPreferenceManager().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
    }

    @Override
    public boolean onPreferenceClick(Preference preference) {
        if (preference.getKey().equals("profil")) {
            MaishapayApplication.getMaishapayContext().startActivity(new Intent(MaishapayApplication.getMaishapayContext(), UpdateProfilActivity.class));
        }
        return false;
    }
}
