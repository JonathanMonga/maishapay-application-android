.class public Lcom/maishapay/notification/helper/MaishapayNotificationHelper;
.super Landroid/content/ContextWrapper;
.source "MaishapayNotificationHelper.java"


# static fields
.field private static final MAISHAPAY_CHANNEL_NAME:Ljava/lang/String; = "Maishapay"

.field private static final MAISHAPAY_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "maishapay.notification"


# instance fields
.field private manager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 24
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;->createChannel()V

    :cond_0
    return-void
.end method

.method private createChannel()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 30
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "maishapay.notification"

    const-string v2, "Maishapay"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 v2, 0x1

    .line 33
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 34
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 36
    invoke-virtual {p0}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;->getManager()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method


# virtual methods
.method public getManager()Landroid/app/NotificationManager;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 41
    invoke-virtual {p0, v0}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;->manager:Landroid/app/NotificationManager;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;->manager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public getNotificationBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 47
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "maishapay.notification"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 49
    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 50
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/maishapay/notification/R$drawable;->maishapay_notification_image:I

    .line 51
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 52
    invoke-virtual {p1, p4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 58
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "maishapay.notification"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/maishapay/notification/R$drawable;->maishapay_notification_image:I

    .line 61
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 63
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method
