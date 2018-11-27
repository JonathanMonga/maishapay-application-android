.class Lcom/maishapay/presenter/TransactionPresenter$1;
.super Ljava/lang/Object;
.source "TransactionPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/TransactionPresenter;->transactions(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/util/List<",
        "Lcom/maishapay/model/client/response/TransactionItemResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/presenter/TransactionPresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/TransactionPresenter;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/maishapay/presenter/TransactionPresenter$1;->this$0:Lcom/maishapay/presenter/TransactionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/TransactionPresenter$1;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maishapay/model/client/response/TransactionItemResponse;",
            ">;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/maishapay/presenter/TransactionPresenter$1;->this$0:Lcom/maishapay/presenter/TransactionPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TransactionPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 57
    iget-object v0, p0, Lcom/maishapay/presenter/TransactionPresenter$1;->this$0:Lcom/maishapay/presenter/TransactionPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TransactionPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransactionView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/maishapay/view/TransactionView;->enabledControls(Z)V

    .line 58
    iget-object v0, p0, Lcom/maishapay/presenter/TransactionPresenter$1;->this$0:Lcom/maishapay/presenter/TransactionPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TransactionPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransactionView;

    invoke-interface {v0, p1}, Lcom/maishapay/view/TransactionView;->finishToLoadTransactions(Ljava/util/List;)V

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/maishapay/model/client/response/TransactionResponse;

    .line 66
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getType_jrn()Ljava/lang/String;

    move-result-object v6

    const-string v7, "e"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 67
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getMonnaie_jrn()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getMontant_jrn()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getMonnaie_jrn()Ljava/lang/String;

    move-result-object v6

    const-string v7, "USD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getMontant_jrn()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getMonnaie_jrn()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 76
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getMontant_jrn()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getMonnaie_jrn()Ljava/lang/String;

    move-result-object v6

    const-string v7, "USD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    invoke-virtual {v5}, Lcom/maishapay/model/client/response/TransactionResponse;->getMontant_jrn()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    goto/16 :goto_0

    .line 85
    :cond_4
    new-instance p1, Lcom/maishapay/model/domain/SoldeAndRapport;

    invoke-direct {p1}, Lcom/maishapay/model/domain/SoldeAndRapport;-><init>()V

    .line 86
    invoke-virtual {p1, v0}, Lcom/maishapay/model/domain/SoldeAndRapport;->setSoldeFrancs(I)V

    .line 87
    invoke-virtual {p1, v0}, Lcom/maishapay/model/domain/SoldeAndRapport;->setSoldeDollars(I)V

    .line 89
    invoke-virtual {p1, v1}, Lcom/maishapay/model/domain/SoldeAndRapport;->setEnvoiFrancs(I)V

    .line 90
    invoke-virtual {p1, v2}, Lcom/maishapay/model/domain/SoldeAndRapport;->setRecuFrancs(I)V

    .line 92
    invoke-virtual {p1, v3}, Lcom/maishapay/model/domain/SoldeAndRapport;->setEnvoiDollars(I)V

    .line 93
    invoke-virtual {p1, v4}, Lcom/maishapay/model/domain/SoldeAndRapport;->setRecuDollars(I)V

    .line 95
    iget-object v0, p0, Lcom/maishapay/presenter/TransactionPresenter$1;->this$0:Lcom/maishapay/presenter/TransactionPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TransactionPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransactionView;

    invoke-interface {v0, p1}, Lcom/maishapay/view/TransactionView;->finishToLoadStatisics(Lcom/maishapay/model/domain/SoldeAndRapport;)V

    :cond_5
    return-void
.end method
