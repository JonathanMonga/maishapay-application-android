.class public Lcom/maishapay/notification/service/MaishapayFirebaseMessaging;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "MaishapayFirebaseMessaging.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private sendNotification(Lcom/google/firebase/messaging/RemoteMessage;Ljava/lang/Class;)V
    .locals 5

    .line 39
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    const-string v0, "title"

    .line 40
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v0, "message"

    .line 41
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 45
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x4000000

    .line 46
    invoke-virtual {v3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x40000000    # 2.0f

    .line 47
    invoke-static {p0, v2, v3, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 50
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 51
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/maishapay/notification/R$drawable;->maishapay_notification_image:I

    .line 52
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 53
    invoke-virtual {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 55
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const-string p2, "notification"

    .line 58
    invoke-virtual {p0, p2}, Lcom/maishapay/notification/service/MaishapayFirebaseMessaging;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    .line 59
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p2

    .line 64
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/maishapay/notification/R$drawable;->maishapay_notification_image:I

    .line 65
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const-string p2, "notification"

    .line 71
    invoke-virtual {p0, p2}, Lcom/maishapay/notification/service/MaishapayFirebaseMessaging;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    .line 72
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method

.method private sendNotificationAPI26(Lcom/google/firebase/messaging/RemoteMessage;Ljava/lang/Class;)V
    .locals 5

    .line 77
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    const-string v0, "title"

    .line 78
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "message"

    .line 79
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    .line 87
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x4000000

    .line 88
    invoke-virtual {v3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 89
    invoke-static {p0, p2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 91
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 93
    new-instance v3, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;

    invoke-direct {v3, p0}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v3, v0, p1, p2, v2}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;->getNotificationBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 96
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_1

    .line 97
    invoke-virtual {v3}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;->getManager()Landroid/app/NotificationManager;

    move-result-object p2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p2

    .line 102
    new-instance v2, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;

    invoke-direct {v2, p0}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v2, v0, p1, p2}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;->getNotificationBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 104
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_1

    .line 105
    invoke-virtual {v2}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;->getManager()Landroid/app/NotificationManager;

    move-result-object p2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 3

    .line 27
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 28
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 31
    invoke-direct {p0, p1, v2}, Lcom/maishapay/notification/service/MaishapayFirebaseMessaging;->sendNotificationAPI26(Lcom/google/firebase/messaging/RemoteMessage;Ljava/lang/Class;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/maishapay/notification/service/MaishapayFirebaseMessaging;->sendNotification(Lcom/google/firebase/messaging/RemoteMessage;Ljava/lang/Class;)V

    :cond_1
    :goto_0
    return-void
.end method
