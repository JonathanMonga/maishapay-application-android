.class public Lcom/maishapay/model/client/response/SoldeEpargneResponse;
.super Ljava/lang/Object;
.source "SoldeEpargneResponse.java"


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

.field private resultat:Ljava/lang/String;
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
.method public getDollard()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/maishapay/model/client/response/SoldeEpargneResponse;->dollard:Ljava/lang/String;

    return-object v0
.end method

.method public getFrancCongolais()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/maishapay/model/client/response/SoldeEpargneResponse;->francCongolais:Ljava/lang/String;

    return-object v0
.end method

.method public getResultat()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/maishapay/model/client/response/SoldeEpargneResponse;->resultat:Ljava/lang/String;

    return-object v0
.end method

.method public setDollard(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/maishapay/model/client/response/SoldeEpargneResponse;->dollard:Ljava/lang/String;

    return-void
.end method

.method public setFrancCongolais(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/maishapay/model/client/response/SoldeEpargneResponse;->francCongolais:Ljava/lang/String;

    return-void
.end method

.method public setResultat(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/maishapay/model/client/response/SoldeEpargneResponse;->resultat:Ljava/lang/String;

    return-void
.end method
