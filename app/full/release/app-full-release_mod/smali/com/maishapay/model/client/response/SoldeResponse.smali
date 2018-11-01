.class public Lcom/maishapay/model/client/response/SoldeResponse;
.super Ljava/lang/Object;
.source "SoldeResponse.java"


# instance fields
.field private dollard:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "USD"
    .end annotation
.end field

.field private francCongolais:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FC"
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
.method public getDollard()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/maishapay/model/client/response/SoldeResponse;->dollard:Ljava/lang/String;

    return-object v0
.end method

.method public getFrancCongolais()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/maishapay/model/client/response/SoldeResponse;->francCongolais:Ljava/lang/String;

    return-object v0
.end method

.method public setDollard(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/maishapay/model/client/response/SoldeResponse;->dollard:Ljava/lang/String;

    return-void
.end method

.method public setFrancCongolais(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/maishapay/model/client/response/SoldeResponse;->francCongolais:Ljava/lang/String;

    return-void
.end method
