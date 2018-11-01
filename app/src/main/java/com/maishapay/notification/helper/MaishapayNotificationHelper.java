package com.maishapay.notification.helper;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.ContextWrapper;
import android.net.Uri;
import android.os.Build;

import com.maishapay.R;

public class MaishapayNotificationHelper extends ContextWrapper {

    private static final String MAISHAPAY_NOTIFICATION_CHANNEL_ID = "maishapay.notification";
    private static final String MAISHAPAY_CHANNEL_NAME = "Maishapay";

    private NotificationManager manager;

    public MaishapayNotificationHelper(Context base) {
        super(base);
        if (Build.VERSION.SDK_INT>= Build.VERSION_CODES.O)
            createChannel();
    }

    @TargetApi(Build.VERSION_CODES.O)
    private void createChannel() {
        NotificationChannel foodChannel = new NotificationChannel(MAISHAPAY_NOTIFICATION_CHANNEL_ID, MAISHAPAY_CHANNEL_NAME,
                NotificationManager.IMPORTANCE_DEFAULT);
        foodChannel.enableLights(false);
        foodChannel.enableVibration(true);
        foodChannel.setLockscreenVisibility(Notification.VISIBILITY_PRIVATE);

        getManager().createNotificationChannel(foodChannel);
    }

    public NotificationManager getManager() {
        if (manager == null)
            manager = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
        return manager;
    }

    @TargetApi(Build.VERSION_CODES.O)
    public Notification.Builder getNotificationBuilder(String title, String body, PendingIntent content, Uri soundUri){
        return new Notification.Builder(getApplicationContext(), MAISHAPAY_NOTIFICATION_CHANNEL_ID)
                .setContentIntent(content)
                .setContentTitle(title)
                .setContentText(body)
                .setSmallIcon(R.drawable.mpay)
                .setSound(soundUri)
                .setAutoCancel(false);
    }

    @TargetApi(Build.VERSION_CODES.O)
    public Notification.Builder getNotificationBuilder(String title, String body, Uri soundUri) {
        return new Notification.Builder(getApplicationContext(), MAISHAPAY_NOTIFICATION_CHANNEL_ID)
                .setContentTitle(title)
                .setContentText(body)
                .setSmallIcon(R.drawable.mpay)
                .setSound(soundUri)
                .setAutoCancel(false);
    }

}
