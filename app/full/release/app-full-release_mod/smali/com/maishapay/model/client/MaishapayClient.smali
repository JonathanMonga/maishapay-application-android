.class public final Lcom/maishapay/model/client/MaishapayClient;
.super Ljava/lang/Object;
.source "MaishapayClient.java"


# static fields
.field private static INSTANCE:Lcom/maishapay/model/client/MaishapayClient;


# instance fields
.field private final maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-class v0, Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "http://link-cube.com/fastpay/modele/"

    invoke-static {v0, v1}, Lcom/maishapay/model/client/api/ServiceGenerator;->createService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maishapay/model/client/api/MaishapayAPI;

    iput-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    return-void
.end method

.method public static getInstance()Lcom/maishapay/model/client/MaishapayClient;
    .locals 1

    .line 77
    sget-object v0, Lcom/maishapay/model/client/MaishapayClient;->INSTANCE:Lcom/maishapay/model/client/MaishapayClient;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/maishapay/model/client/MaishapayClient;

    invoke-direct {v0}, Lcom/maishapay/model/client/MaishapayClient;-><init>()V

    sput-object v0, Lcom/maishapay/model/client/MaishapayClient;->INSTANCE:Lcom/maishapay/model/client/MaishapayClient;

    .line 79
    :cond_0
    sget-object v0, Lcom/maishapay/model/client/MaishapayClient;->INSTANCE:Lcom/maishapay/model/client/MaishapayClient;

    return-object v0
.end method


# virtual methods
.method public confirm_retrait(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "confirm_retrait"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/maishapay/model/client/api/MaishapayAPI;->confirm_retrait(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public confirmation_transfert_epargne(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "confirmation_transfert_epargne"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/maishapay/model/client/api/MaishapayAPI;->confirmation_transfert_epargne(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public conversion_monnaie(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "conversion_monnaie"

    invoke-interface {v0, v1, p1, p2}, Lcom/maishapay/model/client/api/MaishapayAPI;->conversion_monnaie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public creation_compte_epargne_avenir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "creation_compte_epargne_avenir"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/maishapay/model/client/api/MaishapayAPI;->creation_compte_epargne_avenir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public creation_compte_epargne_perso(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "creation_compte_epargne_perso"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/maishapay/model/client/api/MaishapayAPI;->creation_compte_epargne_perso(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public emprunt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/maishapay/model/client/response/EpargneResponse;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "emprunt"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/maishapay/model/client/api/MaishapayAPI;->emprunt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public emprunt_check(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "emprunt_check"

    invoke-interface {v0, v1, p1}, Lcom/maishapay/model/client/api/MaishapayAPI;->emprunt_check(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public inscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/maishapay/model/client/response/UserResponse;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 155
    iget-object v1, v0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v2, "inscription"

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/maishapay/model/client/api/MaishapayAPI;->inscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    return-object v1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/maishapay/model/client/response/UserResponse;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "login"

    invoke-interface {v0, v1, p1, p2}, Lcom/maishapay/model/client/api/MaishapayAPI;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public nous_contacter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "nous_contacter"

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/maishapay/model/client/api/MaishapayAPI;->nous_contacter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public pin_perdu(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "pin_perdu"

    invoke-interface {v0, v1, p1, p2}, Lcom/maishapay/model/client/api/MaishapayAPI;->pin_perdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public rapport(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/maishapay/model/client/response/TransactionResponse;",
            ">;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "rapport"

    invoke-interface {v0, v1, p1}, Lcom/maishapay/model/client/api/MaishapayAPI;->rapport(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public retrait(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/maishapay/model/client/response/RetraitResponse;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "retrait"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/maishapay/model/client/api/MaishapayAPI;->retrait(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public solde(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/maishapay/model/client/response/SoldeResponse;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "solde"

    invoke-interface {v0, v1, p1}, Lcom/maishapay/model/client/api/MaishapayAPI;->solde(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public solde_epargne_perso(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/maishapay/model/client/response/SoldeEpargneResponse;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "solde_epargne_perso"

    invoke-interface {v0, v1, p1}, Lcom/maishapay/model/client/api/MaishapayAPI;->solde_epargne_perso(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public taux_du_jour()Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "taux"

    const-string v2, "usd"

    invoke-interface {v0, v1, v2}, Lcom/maishapay/model/client/api/MaishapayAPI;->taux_du_jour(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public transfert_compte(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/maishapay/model/client/response/TransfertResponse;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "transfert-compte"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/maishapay/model/client/api/MaishapayAPI;->transfert_compte(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public transfert_compte_confirmation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "transfert-compte-confirmation"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/maishapay/model/client/api/MaishapayAPI;->transfert_compte_confirmation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public transfert_epargne(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/maishapay/model/client/response/EpargneResponse;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v1, "transfert_epargne"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/maishapay/model/client/api/MaishapayAPI;->transfert_epargne(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public update_profil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 286
    iget-object v1, v0, Lcom/maishapay/model/client/MaishapayClient;->maishapayAPI:Lcom/maishapay/model/client/api/MaishapayAPI;

    const-string v2, "upd_profil"

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/maishapay/model/client/api/MaishapayAPI;->update_profil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    return-object v1
.end method
