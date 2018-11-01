.class public Lcom/maishapay/notification/common/CommonMaishapayNotification;
.super Ljava/lang/Object;
.source "CommonMaishapayNotification.java"


# static fields
.field public static currentUser:Lcom/maishapay/notification/model/UserMaishapayNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/maishapay/notification/model/UserMaishapayNotification;

    invoke-direct {v0}, Lcom/maishapay/notification/model/UserMaishapayNotification;-><init>()V

    sput-object v0, Lcom/maishapay/notification/common/CommonMaishapayNotification;->currentUser:Lcom/maishapay/notification/model/UserMaishapayNotification;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
