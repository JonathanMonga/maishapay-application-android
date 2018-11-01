.class public Lcom/maishapay/model/client/response/TransfertResponse;
.super Ljava/lang/Object;
.source "TransfertResponse.java"


# instance fields
.field private nom:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nom"
    .end annotation
.end field

.field private prenom:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prenom"
    .end annotation
.end field

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
.method public getNom()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/maishapay/model/client/response/TransfertResponse;->nom:Ljava/lang/String;

    return-object v0
.end method

.method public getPrenom()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/maishapay/model/client/response/TransfertResponse;->prenom:Ljava/lang/String;

    return-object v0
.end method

.method public getResultat()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/maishapay/model/client/response/TransfertResponse;->resultat:I

    return v0
.end method

.method public setNom(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/maishapay/model/client/response/TransfertResponse;->nom:Ljava/lang/String;

    return-void
.end method

.method public setPrenom(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/maishapay/model/client/response/TransfertResponse;->prenom:Ljava/lang/String;

    return-void
.end method

.method public setResultat(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/maishapay/model/client/response/TransfertResponse;->resultat:I

    return-void
.end method
