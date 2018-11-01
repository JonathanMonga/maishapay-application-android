.class public Lcom/maishapay/model/domain/PaiementModel;
.super Ljava/lang/Object;
.source "PaiementModel.java"


# static fields
.field public static final CONTENT_TYPE:I = 0x1

.field public static final HEADER_TYPE:I


# instance fields
.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/maishapay/model/domain/PaiementModel;->type:I

    .line 16
    iput-object p2, p0, Lcom/maishapay/model/domain/PaiementModel;->name:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/maishapay/model/domain/PaiementModel;->description:Ljava/lang/String;

    return-void
.end method

.method public static getData()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maishapay/model/domain/PaiementModel;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v1, Lcom/maishapay/model/domain/PaiementModel;

    const-string v2, "Paiement facture"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/maishapay/model/domain/PaiementModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/maishapay/model/domain/PaiementModel;

    const-string v2, "Taxi"

    const-string v3, "Payer votre taxi."

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2, v3}, Lcom/maishapay/model/domain/PaiementModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Lcom/maishapay/model/domain/PaiementModel;

    const-string v2, "Restaurant | Fastfood"

    const-string v3, "Payer votre restaurant."

    invoke-direct {v1, v5, v2, v3}, Lcom/maishapay/model/domain/PaiementModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Lcom/maishapay/model/domain/PaiementModel;

    const-string v2, "El\u00e8ctricit\u00e9"

    const-string v3, "Payer votre facture pour le courant, gaz..."

    invoke-direct {v1, v5, v2, v3}, Lcom/maishapay/model/domain/PaiementModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/maishapay/model/domain/PaiementModel;

    const-string v2, "L\'eau"

    const-string v3, "Payer votre facture pour l\'eau."

    invoke-direct {v1, v5, v2, v3}, Lcom/maishapay/model/domain/PaiementModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lcom/maishapay/model/domain/PaiementModel;

    const-string v2, "Universit\u00e9"

    const-string v3, "Payer vos frais acad\u00e9mique."

    invoke-direct {v1, v5, v2, v3}, Lcom/maishapay/model/domain/PaiementModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/maishapay/model/domain/PaiementModel;

    const-string v2, "Ecole"

    const-string v3, "Payer vos frais scolaire."

    invoke-direct {v1, v5, v2, v3}, Lcom/maishapay/model/domain/PaiementModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/maishapay/model/domain/PaiementModel;

    const-string v2, "H\u00f4pital | Pharmacie"

    const-string v3, "Payer vos frais m\u00e9dicaux."

    invoke-direct {v1, v5, v2, v3}, Lcom/maishapay/model/domain/PaiementModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lcom/maishapay/model/domain/PaiementModel;

    const-string v2, "Autres"

    const-string v3, "Tout autres types de paiement."

    invoke-direct {v1, v5, v2, v3}, Lcom/maishapay/model/domain/PaiementModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lcom/maishapay/model/domain/PaiementModel;

    const-string v2, "Abonnement"

    const-string v3, ""

    invoke-direct {v1, v4, v2, v3}, Lcom/maishapay/model/domain/PaiementModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/maishapay/model/domain/PaiementModel;

    const-string v2, "Canal +"

    const-string v3, "R\u00e9abonnez vous aux bouqu\u00e9 Canal +."

    invoke-direct {v1, v5, v2, v3}, Lcom/maishapay/model/domain/PaiementModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lcom/maishapay/model/domain/PaiementModel;

    const-string v2, "Easy Tv"

    const-string v3, "R\u00e9abonnez vous aux bouqu\u00e9 Easy Tv."

    invoke-direct {v1, v5, v2, v3}, Lcom/maishapay/model/domain/PaiementModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/maishapay/model/domain/PaiementModel;

    const-string v2, "Startimes"

    const-string v3, "R\u00e9abonnez vous aux bouqu\u00e9 Startimes."

    invoke-direct {v1, v5, v2, v3}, Lcom/maishapay/model/domain/PaiementModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/maishapay/model/domain/PaiementModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/maishapay/model/domain/PaiementModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/maishapay/model/domain/PaiementModel;->type:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/maishapay/model/domain/PaiementModel;->description:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/maishapay/model/domain/PaiementModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/maishapay/model/domain/PaiementModel;->type:I

    return-void
.end method
