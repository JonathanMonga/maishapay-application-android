.class Lcom/maishapay/presenter/AccueilPresenter$1;
.super Ljava/lang/Object;
.source "AccueilPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "Lio/reactivex/functions/Consumer<",
        "Lcom/maishapay/model/domain/UserDataPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/presenter/AccueilPresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/AccueilPresenter;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/maishapay/presenter/AccueilPresenter$1;->this$0:Lcom/maishapay/presenter/AccueilPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/maishapay/model/domain/SoldeAndRapport;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/maishapay/presenter/AccueilPresenter$1;->this$0:Lcom/maishapay/presenter/AccueilPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/AccueilPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/maishapay/presenter/AccueilPresenter$1;->this$0:Lcom/maishapay/presenter/AccueilPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/AccueilPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/AccueilView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/maishapay/view/AccueilView;->enabledControls(Z)V

    .line 104
    iget-object v0, p0, Lcom/maishapay/presenter/AccueilPresenter$1;->this$0:Lcom/maishapay/presenter/AccueilPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/AccueilPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/AccueilView;

    invoke-interface {v0, p1}, Lcom/maishapay/view/AccueilView;->finishToLoadSoldeAndRappot(Lcom/maishapay/model/domain/SoldeAndRapport;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    check-cast p1, Lcom/maishapay/model/domain/SoldeAndRapport;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/AccueilPresenter$1;->accept(Lcom/maishapay/model/domain/SoldeAndRapport;)V

    return-void
.end method
