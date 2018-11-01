.class public Lcom/maishapay/model/client/response/UserResponse;
.super Ljava/lang/Object;
.source "UserResponse.java"


# instance fields
.field private adresse:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adresse"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

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

.field private telephone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "telephone"
    .end annotation
.end field

.field private ville:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ville"
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
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/maishapay/model/client/response/UserResponse;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAdresse()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/maishapay/model/client/response/UserResponse;->adresse:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/maishapay/model/client/response/UserResponse;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getNom()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/maishapay/model/client/response/UserResponse;->nom:Ljava/lang/String;

    return-object v0
.end method

.method public getPrenom()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/maishapay/model/client/response/UserResponse;->prenom:Ljava/lang/String;

    return-object v0
.end method

.method public getResultat()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/maishapay/model/client/response/UserResponse;->resultat:I

    return v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/maishapay/model/client/response/UserResponse;->telephone:Ljava/lang/String;

    return-object v0
.end method

.method public getVille()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/maishapay/model/client/response/UserResponse;->ville:Ljava/lang/String;

    return-object v0
.end method

.method public setAdresse(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/maishapay/model/client/response/UserResponse;->adresse:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/maishapay/model/client/response/UserResponse;->email:Ljava/lang/String;

    return-void
.end method

.method public setNom(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/maishapay/model/client/response/UserResponse;->nom:Ljava/lang/String;

    return-void
.end method

.method public setPrenom(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/maishapay/model/client/response/UserResponse;->prenom:Ljava/lang/String;

    return-void
.end method

.method public setResultat(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/maishapay/model/client/response/UserResponse;->resultat:I

    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/maishapay/model/client/response/UserResponse;->telephone:Ljava/lang/String;

    return-void
.end method

.method public setVille(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/maishapay/model/client/response/UserResponse;->ville:Ljava/lang/String;

    return-void
.end method
