.class public Lcom/maishapay/notification/model/UserMaishapayNotification;
.super Ljava/lang/Object;
.source "UserMaishapayNotification.java"


# instance fields
.field private phone:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/maishapay/notification/model/UserMaishapayNotification;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/maishapay/notification/model/UserMaishapayNotification;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/maishapay/notification/model/UserMaishapayNotification;->phone:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/maishapay/notification/model/UserMaishapayNotification;->token:Ljava/lang/String;

    return-void
.end method
