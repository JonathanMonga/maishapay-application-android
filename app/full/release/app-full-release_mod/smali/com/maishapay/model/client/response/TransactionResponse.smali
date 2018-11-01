.class public Lcom/maishapay/model/client/response/TransactionResponse;
.super Ljava/lang/Object;
.source "TransactionResponse.java"


# instance fields
.field private date_jrn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_jrn"
    .end annotation
.end field

.field private heure_jrn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "heure_jrn"
    .end annotation
.end field

.field private monnaie_jrn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "monnaie_jrn"
    .end annotation
.end field

.field private montant_jrn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "montant_jrn"
    .end annotation
.end field

.field private telephone_dest:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "telephone_dest"
    .end annotation
.end field

.field private type_jrn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type_jrn"
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
.method public getDate_jrn()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/maishapay/model/client/response/TransactionResponse;->date_jrn:Ljava/lang/String;

    return-object v0
.end method

.method public getHeure_jrn()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/maishapay/model/client/response/TransactionResponse;->heure_jrn:Ljava/lang/String;

    return-object v0
.end method

.method public getMonnaie_jrn()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/maishapay/model/client/response/TransactionResponse;->monnaie_jrn:Ljava/lang/String;

    return-object v0
.end method

.method public getMontant_jrn()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/maishapay/model/client/response/TransactionResponse;->montant_jrn:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephone_dest()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/maishapay/model/client/response/TransactionResponse;->telephone_dest:Ljava/lang/String;

    return-object v0
.end method

.method public getType_jrn()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/maishapay/model/client/response/TransactionResponse;->type_jrn:Ljava/lang/String;

    return-object v0
.end method

.method public setDate_jrn(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/maishapay/model/client/response/TransactionResponse;->date_jrn:Ljava/lang/String;

    return-void
.end method

.method public setHeure_jrn(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/maishapay/model/client/response/TransactionResponse;->heure_jrn:Ljava/lang/String;

    return-void
.end method

.method public setMonnaie_jrn(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/maishapay/model/client/response/TransactionResponse;->monnaie_jrn:Ljava/lang/String;

    return-void
.end method

.method public setMontant_jrn(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/maishapay/model/client/response/TransactionResponse;->montant_jrn:Ljava/lang/String;

    return-void
.end method

.method public setTelephone_dest(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/maishapay/model/client/response/TransactionResponse;->telephone_dest:Ljava/lang/String;

    return-void
.end method

.method public setType_jrn(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/maishapay/model/client/response/TransactionResponse;->type_jrn:Ljava/lang/String;

    return-void
.end method
