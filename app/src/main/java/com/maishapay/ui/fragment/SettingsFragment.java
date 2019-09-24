package com.maishapay.ui.fragment;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.preference.Preference;
import android.support.v7.preference.PreferenceFragmentCompat;
import android.util.Log;

import com.github.javiersantos.appupdater.AppUpdater;
import com.github.javiersantos.appupdater.enums.Display;
import com.github.javiersantos.appupdater.enums.UpdateFrom;
import com.maishapay.BuildConfig;
import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.ui.activities.UpdateProfilActivity;
import com.maishapay.ui.receiver.ApplicationSelectorReceiver;

public class SettingsFragment extends PreferenceFragmentCompat implements SharedPreferences.OnSharedPreferenceChangeListener, Preference.OnPreferenceClickListener {

    public interface IGetResult{
        void getResult();
    }

    private IGetResult iGetResult;

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);

        if(context instanceof IGetResult)
            iGetResult = (IGetResult) context;
    }
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
        profil.setSummary(String.format("%s %s", UserPrefencesManager.getCurrentUser().getPrenom(), UserPrefencesManager.getCurrentUser().getNom()));
        Preference mettreAJour = findPreference("mise_a_jour");
        mettreAJour.setSummary(BuildConfig.VERSION_NAME);
        mettreAJour.setOnPreferenceClickListener(this);
        Preference share = findPreference("share");
        share.setOnPreferenceClickListener(this);
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
        switch (preference.getKey()) {
            case "profil":
                getActivity().startActivity(new Intent(getActivity(), UpdateProfilActivity.class));
                break;
            case "mise_a_jour":
                new AppUpdater(getActivity())
                        .setUpdateFrom(UpdateFrom.GOOGLE_PLAY)
                        .setDisplay(Display.NOTIFICATION)
                        .showAppUpdated(true)
                        .init()
                        .start();
                break;
            case "share":
                shareTextUrl();
                break;
        }

        return false;
    }

    private void shareTextUrl() {
        iGetResult.getResult();
    }
}
