.class public Lcom/maishapay/model/client/response/RetraitResponse;
.super Ljava/lang/Object;
.source "RetraitResponse.java"


# instance fields
.field private resultat:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resultat"
    .end annotation
.end field

.field private retour:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retour"
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

    .line 32
    iget v0, p0, Lcom/maishapay/model/client/response/RetraitResponse;->resultat:I

    return v0
.end method

.method public getRetour()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/maishapay/model/client/response/RetraitResponse;->retour:Ljava/lang/String;

    return-object v0
.end method

.method public setResultat(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/maishapay/model/client/response/RetraitResponse;->resultat:I

    return-void
.end method

.method public setRetour(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/maishapay/model/client/response/RetraitResponse;->retour:Ljava/lang/String;

    return-void
.end method
