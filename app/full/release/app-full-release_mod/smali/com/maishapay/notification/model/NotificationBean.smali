.class public Lcom/maishapay/notification/model/NotificationBean;
.super Ljava/lang/Object;
.source "NotificationBean.java"


# instance fields
.field private body:Ljava/lang/String;

.field private status:Z

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/maishapay/notification/model/NotificationBean;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/maishapay/notification/model/NotificationBean;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/maishapay/notification/model/NotificationBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/maishapay/notification/model/NotificationBean;->status:Z

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/maishapay/notification/model/NotificationBean;->body:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/maishapay/notification/model/NotificationBean;->status:Z

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/maishapay/notification/model/NotificationBean;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/maishapay/notification/model/NotificationBean;->title:Ljava/lang/String;

    return-void
.end method
