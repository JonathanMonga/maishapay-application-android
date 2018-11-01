.class public Lcom/maishapay/model/client/response/EpargneResponse;
.super Ljava/lang/Object;
.source "EpargneResponse.java"


# instance fields
.field private resultat:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resultat"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultat()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/maishapay/model/client/response/EpargneResponse;->resultat:I

    return v0
.end method

.method public setResultat(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/maishapay/model/client/response/EpargneResponse;->resultat:I

    return-void
.end method
