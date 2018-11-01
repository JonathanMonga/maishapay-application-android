package com.maishapay.notification.service;

import android.util.Log;

import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.FirebaseInstanceIdService;
import com.maishapay.notification.MaishapayNotification;
import com.maishapay.notification.model.Common;
import com.maishapay.ui.activities.TransactionActivity;
import com.maishapay.util.Constants;
import com.pixplicity.easyprefs.library.Prefs;


public class MaishapayFirebaseInstanceIDService extends FirebaseInstanceIdService {

    private static final String TAG = "MaishapayIDService";

    @Override
    public void onCreate() {
        super.onCreate();

        Log.d(TAG, "onCreate: ");
        MaishapayNotification.readNotification(this)
                .startActivity(TransactionActivity.class)
                .readFrom(Prefs.getString(Constants.USER_PHONE_FIREBASE,""));
    }

    @Override
    public void onTokenRefresh() {
        // Get updated InstanceID token.
        String refreshedToken = FirebaseInstanceId.getInstance().getToken();
        Log.d(TAG, "Refreshed token: " + refreshedToken);

        // If you want to send messages to this application instance or
        // manage this apps subscriptions on the server side, send the
        // Instance ID token to your app server.
        sendRegistrationToServer(refreshedToken);
    }

    private void sendRegistrationToServer(String refreshedToken) {

            Common.currentUserToken = refreshedToken;

            FirebaseDatabase database = FirebaseDatabase.getInstance();
            DatabaseReference tokenReference = database.getReference("Token");
            Prefs.putString("Token",refreshedToken);

            tokenReference.push().setValue(refreshedToken);
    }
}
