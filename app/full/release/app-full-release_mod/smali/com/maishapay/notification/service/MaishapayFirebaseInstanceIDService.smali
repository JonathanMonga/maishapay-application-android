.class public Lcom/maishapay/notification/service/MaishapayFirebaseInstanceIDService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "MaishapayFirebaseInstanceIDService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MaishapayIDService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method

.method private sendRegistrationToServer(Ljava/lang/String;)V
    .locals 2

    .line 31
    sget-object v0, Lcom/maishapay/notification/common/CommonMaishapayNotification;->currentUser:Lcom/maishapay/notification/model/UserMaishapayNotification;

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    const-string v1, "Token"

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/maishapay/notification/model/TokenMaishapayNotification;

    invoke-direct {v1, p1}, Lcom/maishapay/notification/model/TokenMaishapayNotification;-><init>(Ljava/lang/String;)V

    .line 38
    sget-object p1, Lcom/maishapay/notification/common/CommonMaishapayNotification;->currentUser:Lcom/maishapay/notification/model/UserMaishapayNotification;

    invoke-virtual {p1}, Lcom/maishapay/notification/model/UserMaishapayNotification;->getPhone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 4

    .line 20
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaishapayIDService"

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refreshed token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-direct {p0, v0}, Lcom/maishapay/notification/service/MaishapayFirebaseInstanceIDService;->sendRegistrationToServer(Ljava/lang/String;)V

    return-void
.end method
