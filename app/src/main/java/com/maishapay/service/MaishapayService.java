package com.maishapay.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

import com.maishapay.model.MaishapayNotification;
import com.maishapay.ui.activities.TransactionActivity;
import com.maishapay.util.Constants;
import com.pixplicity.easyprefs.library.Prefs;

import static com.maishapay.BuildConfig.USER_PHONE_FIREBASE;


public class MaishapayService extends Service {

    private static final String TAG=MaishapayService.class.getName();

    @Override
    public void onCreate() {
        Log.i(TAG, "Service onCreate");

    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {

        Log.i(TAG, "Service onStartCommand");

        MaishapayNotification.readNotification(this)
                .startActivity(TransactionActivity.class)
                .readFrom(Prefs.getString(USER_PHONE_FIREBASE,""));

        return Service.START_STICKY;
    }


    @Override
    public IBinder onBind(Intent arg0) {
        Log.i(TAG, "Service onBind");
        return null;
    }

    @Override
    public void onDestroy() {

        /*isRunning = false;
        Intent intent=new Intent(getApplicationContext(),MainActivity.class);
        intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK);
        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        startActivity(intent);*/
        Log.i(TAG, "Service onDestroy");

        super.onDestroy();
    }
}
