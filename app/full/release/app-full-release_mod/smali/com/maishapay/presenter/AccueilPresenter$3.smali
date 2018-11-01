.class Lcom/maishapay/presenter/AccueilPresenter$3;
.super Ljava/lang/Object;
.source "AccueilPresenter.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/AccueilPresenter;->solde(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Lcom/maishapay/model/client/response/SoldeResponse;",
        "Ljava/util/List<",
        "Lcom/maishapay/model/client/response/TransactionResponse;",
        ">;",
        "Lcom/maishapay/model/domain/UserDataPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/presenter/AccueilPresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/AccueilPresenter;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/maishapay/presenter/AccueilPresenter$3;->this$0:Lcom/maishapay/presenter/AccueilPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/maishapay/model/client/response/SoldeResponse;Ljava/util/List;)Lcom/maishapay/model/domain/SoldeAndRapport;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maishapay/model/client/response/SoldeResponse;",
            "Ljava/util/List<",
            "Lcom/maishapay/model/client/response/TransactionResponse;",
            ">;)",
            "Lcom/maishapay/model/domain/UserDataPreference;"
        }
    .end annotation

    .line 58
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/maishapay/model/client/response/TransactionResponse;

    .line 59
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getType_jrn()Ljava/lang/String;

    move-result-object v6

    const-string v7, "e"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 60
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getMonnaie_jrn()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 61
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getMontant_jrn()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getMonnaie_jrn()Ljava/lang/String;

    move-result-object v6

    const-string v7, "USD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getMontant_jrn()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getMonnaie_jrn()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 69
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getMontant_jrn()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getMonnaie_jrn()Ljava/lang/String;

    move-result-object v6

    const-string v7, "USD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 72
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getMontant_jrn()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    goto/16 :goto_0

    .line 78
    :cond_4
    invoke-virtual {p1}, Lcom/maishapay/model/client/response/SoldeResponse;->getFrancCongolais()Ljava/lang/String;

    move-result-object p2

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {p2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 81
    invoke-virtual {p1}, Lcom/maishapay/model/client/response/SoldeResponse;->getDollard()Ljava/lang/String;

    move-result-object p1

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 85
    new-instance v0, Lcom/maishapay/model/domain/SoldeAndRapport;

    invoke-direct {v0}, Lcom/maishapay/model/domain/SoldeAndRapport;-><init>()V

    .line 86
    invoke-virtual {v0, p2}, Lcom/maishapay/model/domain/SoldeAndRapport;->setSoldeFrancs(I)V

    .line 87
    invoke-virtual {v0, p1}, Lcom/maishapay/model/domain/SoldeAndRapport;->setSoldeDollars(I)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/maishapay/model/domain/SoldeAndRapport;->setEnvoiFrancs(I)V

    .line 90
    invoke-virtual {v0, v2}, Lcom/maishapay/model/domain/SoldeAndRapport;->setRecuFrancs(I)V

    .line 92
    invoke-virtual {v0, v3}, Lcom/maishapay/model/domain/SoldeAndRapport;->setEnvoiDollars(I)V

    .line 93
    invoke-virtual {v0, v4}, Lcom/maishapay/model/domain/SoldeAndRapport;->setRecuDollars(I)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    check-cast p1, Lcom/maishapay/model/client/response/SoldeResponse;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/maishapay/presenter/AccueilPresenter$3;->apply(Lcom/maishapay/model/client/response/SoldeResponse;Ljava/util/List;)Lcom/maishapay/model/domain/SoldeAndRapport;

    move-result-object p1

    return-object p1
.end method
