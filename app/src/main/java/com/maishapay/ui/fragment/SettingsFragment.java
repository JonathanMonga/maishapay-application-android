package com.maishapay.ui.fragment;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.preference.Preference;
import android.support.v7.preference.PreferenceFragmentCompat;

import com.github.javiersantos.appupdater.AppUpdater;
import com.github.javiersantos.appupdater.enums.Display;
import com.github.javiersantos.appupdater.enums.UpdateFrom;
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
        profil.setOnPreferenceClickListener(this);
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
            getActivity().startActivity(new Intent(getActivity(), UpdateProfilActivity.class));
        }

        if (preference.getKey().equals("mise_a_jour")) {
            new AppUpdater(getActivity())
                    .setUpdateFrom(UpdateFrom.GOOGLE_PLAY)
                    .setDisplay(Display.NOTIFICATION)
                    .showAppUpdated(true)
                    .init()
                    .start();
        }

        if (preference.getKey().equals("share")) {
            shareTextUrl();
        }

        return false;
    }

    private void shareTextUrl() {
        Intent share = new Intent(android.content.Intent.ACTION_SEND);
        share.setType("text/plain");
        share.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);

        // Add data to the intent, the receiving app will decide
        // what to do with it.
        share.putExtra(Intent.EXTRA_SUBJECT, "Maishapay Application");
        share.putExtra(Intent.EXTRA_TEXT, "https://play.google.com/store/apps/details?id=com.maishapay&hl=fr");

        startActivity(Intent.createChooser(share, "Partagez ce lien."));
    }
}
