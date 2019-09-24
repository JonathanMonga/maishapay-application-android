package com.maishapay.ui.receiver;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;

import com.maishapay.model.prefs.UserPrefencesManager;

import java.util.Objects;

public class ApplicationSelectorReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        for(String key : Objects.requireNonNull(intent.getExtras()).keySet()){
            try {
                ComponentName componentName = (ComponentName) intent.getExtras().get(key);
                PackageManager packageManager = context.getPackageManager();
                assert componentName != null;
                String appName = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(componentName.getPackageName(), PackageManager.GET_META_DATA));

                if (!appName.isEmpty()) {
                    UserPrefencesManager.incrementPoints();
                }
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
    }
}
