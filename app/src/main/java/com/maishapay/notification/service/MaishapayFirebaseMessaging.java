package com.maishapay.notification.service;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.support.v4.app.NotificationCompat;

import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.maishapay.R;
import com.maishapay.notification.helper.MaishapayNotificationHelper;


import java.util.Map;
import java.util.Random;


public class MaishapayFirebaseMessaging extends FirebaseMessagingService {
    @Override
    public void onMessageReceived(RemoteMessage remoteMessage) {

        super.onMessageReceived(remoteMessage);

        if (remoteMessage.getData() != null){

            if (Build.VERSION.SDK_INT>= Build.VERSION_CODES.O)
                sendNotificationAPI26(remoteMessage,null);

            else
                sendNotification(remoteMessage, null);
        }
    }

    private void sendNotification(RemoteMessage remoteMessage, Class clazz) {
        Map<String, String> notification = remoteMessage.getData();
        String title = notification.get("title");
        String content =notification.get("message");

        if (clazz != null){

            Intent intent = new Intent(this, clazz);
            intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
            PendingIntent pendingIntent = PendingIntent.getActivity(this, 0,
                    intent, PendingIntent.FLAG_ONE_SHOT);

            Uri defaultSoundUri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION);
            NotificationCompat.Builder nBuilder = new NotificationCompat.Builder(this)
                    .setSmallIcon(R.drawable.mpay)
                    .setContentTitle(content)
                    .setAutoCancel(true)
                    .setSound(defaultSoundUri)
                    .setContentIntent(pendingIntent);
            NotificationManager notificationManager =
                    (NotificationManager)getSystemService(Context.NOTIFICATION_SERVICE);
            notificationManager.notify(0,nBuilder.build());

        }
        else {
            Uri defaultSoundUri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION);
            NotificationCompat.Builder nBuilder = new NotificationCompat.Builder(this)
                    .setSmallIcon(R.drawable.mpay)
                    .setContentTitle(content)
                    .setAutoCancel(true)
                    .setSound(defaultSoundUri);

            NotificationManager notificationManager =
                    (NotificationManager)getSystemService(Context.NOTIFICATION_SERVICE);
            notificationManager.notify(0,nBuilder.build());
        }
    }

    private void sendNotificationAPI26(RemoteMessage remoteMessage, Class clazz) {
        Map<String, String> notification = remoteMessage.getData();
        String title = notification.get("title");
        String content = notification.get("message");

        PendingIntent pendingIntent;
        MaishapayNotificationHelper helper;
        Notification.Builder builder;

        if (clazz != null){

            Intent intent = new Intent(this, clazz);
            intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
            pendingIntent = PendingIntent.getActivity(this,0,intent,
                    PendingIntent.FLAG_ONE_SHOT);
            Uri defaultSoundUri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION);

            helper = new MaishapayNotificationHelper(this);
            builder = helper.getNotificationBuilder(title,content,pendingIntent,defaultSoundUri);

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN) {
                helper.getManager().notify(new Random().nextInt(), builder.build());
            }
        }
        else {
            Uri defaultUri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION);
            helper = new MaishapayNotificationHelper(this);
            builder = helper.getNotificationBuilder(title,content,defaultUri);
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN) {
                helper.getManager().notify(new Random().nextInt(), builder.build());
            }
        }
    }
}
