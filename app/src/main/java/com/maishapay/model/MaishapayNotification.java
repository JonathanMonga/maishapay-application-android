package com.maishapay.model;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.v4.app.NotificationCompat;
import android.util.Log;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;
import com.maishapay.R;
import com.maishapay.model.domain.NotificationBean;
import com.maishapay.util.LogCat;

import java.util.Random;

public class MaishapayNotification {

    private Context mContext;
    private String title;
    private String subtitle;
    private String body;
    private Class startActivity;

    private MaishapayNotification(Context mContext) {
        this.mContext = mContext;
    }

    public static MaishapayNotification sendNotification(Context mContext) {
        return new MaishapayNotification(mContext);
    }

    public static MaishapayNotification readNotification(Context mContext) {
        return new MaishapayNotification(mContext);
    }

    public MaishapayNotification withTitle(String title) {
        this.title = title;
        return this;
    }

    private MaishapayNotification withSubtitle(String subtitle) {
        this.subtitle = subtitle;
        return this;
    }

    public MaishapayNotification withBody(String body) {
        this.body = body;
        return this;
    }

    public MaishapayNotification startActivity(Class startActivity) {
        this.startActivity = startActivity;
        return this;
    }

    public void sendTo(String phone) {

        NotificationBean bean = new NotificationBean();
        bean.setTitle(title);
        bean.setBody(body);
        bean.setStatus(true);

        pushNotification(bean, phone);

    }

    public void readFrom(final String phone){
        FirebaseDatabase database = FirebaseDatabase.getInstance();
        final DatabaseReference notificationReference = database.getReference("notification");

        notificationReference.child(phone).orderByChild("status").equalTo(true).addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                Log.d("Notification", "onDataChange: "+dataSnapshot);

                for (DataSnapshot data: dataSnapshot.getChildren()){

                    NotificationBean bean = data.getValue(NotificationBean.class);

                    assert bean != null;
                    sendNotification(bean.getTitle(),bean.getBody(),startActivity);

                    notificationReference.child(phone).child(data.getKey()).child("status").setValue(false);
                }

            }

            @Override
            public void onCancelled(@NonNull DatabaseError databaseError) {
                Log.d("Notification", "onDataChange: "+databaseError);

            }
        });
    }

    private void pushNotification(NotificationBean bean, String phone) {
        FirebaseDatabase database = FirebaseDatabase.getInstance();
        DatabaseReference notificationReference = database.getReference("notification");
        notificationReference.child(phone).push().setValue(bean).addOnCompleteListener(new OnCompleteListener<Void>() {
            @Override
            public void onComplete(@NonNull Task<Void> task) {
                LogCat.e("Firebase log====================");
            }
        });
        readFrom(phone);


    }

    private void sendNotification(String title, String body) {
        Uri defaultSoundUri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION);

        NotificationCompat.Builder nBuilder = new NotificationCompat.Builder(mContext)
                .setSmallIcon(R.drawable.noti)
                .setContentTitle(title)
                .setContentText(body)
                .setAutoCancel(true)
                .setSound(defaultSoundUri);

        NotificationManager notificationManager = (NotificationManager) mContext.getSystemService(Context.NOTIFICATION_SERVICE);
        notificationManager.notify(new Random().nextInt(), nBuilder.build());
    }

    private void sendNotification(String title, String body, Class startActivity) {

        if (startActivity==null){
            sendNotification(title,body);
            return;
        }
        Intent intent = new Intent(mContext, startActivity);
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        PendingIntent pendingIntent = PendingIntent.getActivity(mContext, 0,
                intent, PendingIntent.FLAG_ONE_SHOT);

        Uri defaultSoundUri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION);
        NotificationCompat.Builder nBuilder = new NotificationCompat.Builder(mContext)
                .setSmallIcon(R.drawable.noti)
                .setContentTitle(title)
                .setContentText(body)
                .setAutoCancel(true)
                .setSound(defaultSoundUri)
                .setContentIntent(pendingIntent);
        NotificationManager notificationManager = (NotificationManager) mContext.getSystemService(Context.NOTIFICATION_SERVICE);
        notificationManager.notify(new Random().nextInt(), nBuilder.build());
    }

    private void sendNotificationAPI26(String title, String body, Class startActivity) {
        PendingIntent pendingIntent;
        MaishapayNotificationHelper helper;
        Notification.Builder builder;

        Intent intent = new Intent(mContext, startActivity);
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);

        pendingIntent = PendingIntent.getActivity(mContext, 0, intent,
                PendingIntent.FLAG_ONE_SHOT);
        Uri defaultSoundUri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION);

        helper = new MaishapayNotificationHelper(mContext);
        builder = helper.getNotificationBuilder(title, body, pendingIntent, defaultSoundUri);

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN) {
            helper.getManager().notify(new Random().nextInt(), builder.build());
        }

    }

    private void sendNotificationAPI26(String title, String body) {
        MaishapayNotificationHelper helper;
        Notification.Builder builder;

        Uri defaultSoundUri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION);

        helper = new MaishapayNotificationHelper(mContext);
        builder = helper.getNotificationBuilder(title, body, defaultSoundUri);

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN) {
            helper.getManager().notify(new Random().nextInt(), builder.build());
        }

    }
}
