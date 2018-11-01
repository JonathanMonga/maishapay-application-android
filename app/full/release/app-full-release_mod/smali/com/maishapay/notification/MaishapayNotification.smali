.class public Lcom/maishapay/notification/MaishapayNotification;
.super Ljava/lang/Object;
.source "MaishapayNotification.java"


# instance fields
.field private body:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private startActivity:Ljava/lang/Class;

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/maishapay/notification/MaishapayNotification;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/maishapay/notification/MaishapayNotification;)Ljava/lang/Class;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/maishapay/notification/MaishapayNotification;->startActivity:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$100(Lcom/maishapay/notification/MaishapayNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/maishapay/notification/MaishapayNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method private pushNotification(Lcom/maishapay/notification/model/NotificationBean;Ljava/lang/String;)V
    .locals 2

    .line 132
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    const-string v1, "notification"

    .line 133
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static readNotification(Landroid/content/Context;)Lcom/maishapay/notification/MaishapayNotification;
    .locals 1

    .line 46
    new-instance v0, Lcom/maishapay/notification/MaishapayNotification;

    invoke-direct {v0, p0}, Lcom/maishapay/notification/MaishapayNotification;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static sendNotification(Landroid/content/Context;)Lcom/maishapay/notification/MaishapayNotification;
    .locals 1

    .line 42
    new-instance v0, Lcom/maishapay/notification/MaishapayNotification;

    invoke-direct {v0, p0}, Lcom/maishapay/notification/MaishapayNotification;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private sendNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 140
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 142
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/maishapay/notification/MaishapayNotification;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/maishapay/notification/R$drawable;->maishapay_notification_image:I

    .line 143
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 144
    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 145
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 146
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 147
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 149
    iget-object p2, p0, Lcom/maishapay/notification/MaishapayNotification;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    .line 150
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3

    if-nez p3, :cond_0

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/maishapay/notification/MaishapayNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/maishapay/notification/MaishapayNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p3, 0x4000000

    .line 160
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    iget-object p3, p0, Lcom/maishapay/notification/MaishapayNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p3, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    const/4 v0, 0x2

    .line 164
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 165
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/maishapay/notification/MaishapayNotification;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/maishapay/notification/R$drawable;->maishapay_notification_image:I

    .line 166
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 167
    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 168
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 169
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 171
    invoke-virtual {p1, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 172
    iget-object p2, p0, Lcom/maishapay/notification/MaishapayNotification;->mContext:Landroid/content/Context;

    const-string p3, "notification"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    .line 173
    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result p3

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private sendNotificationAPI26(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 201
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;

    iget-object v2, p0, Lcom/maishapay/notification/MaishapayNotification;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-virtual {v1, p1, p2, v0}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;->getNotificationBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 206
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p2, v0, :cond_0

    .line 207
    invoke-virtual {v1}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;->getManager()Landroid/app/NotificationManager;

    move-result-object p2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private sendNotificationAPI26(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3

    .line 181
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/maishapay/notification/MaishapayNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p3, 0x4000000

    .line 182
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    iget-object p3, p0, Lcom/maishapay/notification/MaishapayNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p3, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    const/4 v0, 0x2

    .line 186
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;

    iget-object v2, p0, Lcom/maishapay/notification/MaishapayNotification;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;-><init>(Landroid/content/Context;)V

    .line 189
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;->getNotificationBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 191
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x10

    if-lt p2, p3, :cond_0

    .line 192
    invoke-virtual {v1}, Lcom/maishapay/notification/helper/MaishapayNotificationHelper;->getManager()Landroid/app/NotificationManager;

    move-result-object p2

    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result p3

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private withSubtitle(Ljava/lang/String;)Lcom/maishapay/notification/MaishapayNotification;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/maishapay/notification/MaishapayNotification;->subtitle:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public readFrom(Ljava/lang/String;)V
    .locals 3

    .line 102
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    const-string v1, "notification"

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DatabaseReference;->orderByChild(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/Query;->equalTo(Z)Lcom/google/firebase/database/Query;

    move-result-object v1

    new-instance v2, Lcom/maishapay/notification/MaishapayNotification$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/maishapay/notification/MaishapayNotification$1;-><init>(Lcom/maishapay/notification/MaishapayNotification;Lcom/google/firebase/database/DatabaseReference;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/Query;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    return-void
.end method

.method public sendTo(Ljava/lang/String;)V
    .locals 2

    .line 92
    new-instance v0, Lcom/maishapay/notification/model/NotificationBean;

    invoke-direct {v0}, Lcom/maishapay/notification/model/NotificationBean;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/maishapay/notification/MaishapayNotification;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/maishapay/notification/model/NotificationBean;->setTitle(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/maishapay/notification/MaishapayNotification;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/maishapay/notification/model/NotificationBean;->setBody(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lcom/maishapay/notification/model/NotificationBean;->setStatus(Z)V

    .line 97
    invoke-direct {p0, v0, p1}, Lcom/maishapay/notification/MaishapayNotification;->pushNotification(Lcom/maishapay/notification/model/NotificationBean;Ljava/lang/String;)V

    return-void
.end method

.method public startActivity(Ljava/lang/Class;)Lcom/maishapay/notification/MaishapayNotification;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/maishapay/notification/MaishapayNotification;->startActivity:Ljava/lang/Class;

    return-object p0
.end method

.method public withBody(Ljava/lang/String;)Lcom/maishapay/notification/MaishapayNotification;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/maishapay/notification/MaishapayNotification;->body:Ljava/lang/String;

    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lcom/maishapay/notification/MaishapayNotification;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/maishapay/notification/MaishapayNotification;->title:Ljava/lang/String;

    return-object p0
.end method
