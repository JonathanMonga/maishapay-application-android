.class public Lcom/maishapay/notification/model/TokenMaishapayNotification;
.super Ljava/lang/Object;
.source "TokenMaishapayNotification.java"


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/maishapay/notification/model/TokenMaishapayNotification;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/maishapay/notification/model/TokenMaishapayNotification;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/maishapay/notification/model/TokenMaishapayNotification;->token:Ljava/lang/String;

    return-void
.end method
