.class Lcom/maishapay/presenter/EpargnePresenter$1;
.super Ljava/lang/Object;
.source "EpargnePresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/EpargnePresenter;->soldeEpargne(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/maishapay/model/client/response/SoldeEpargneResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/presenter/EpargnePresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/EpargnePresenter;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/maishapay/presenter/EpargnePresenter$1;->this$0:Lcom/maishapay/presenter/EpargnePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/maishapay/model/client/response/SoldeEpargneResponse;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/maishapay/presenter/EpargnePresenter$1;->this$0:Lcom/maishapay/presenter/EpargnePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/EpargnePresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/maishapay/presenter/EpargnePresenter$1;->this$0:Lcom/maishapay/presenter/EpargnePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/EpargnePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/EpargneView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/maishapay/view/EpargneView;->enabledControls(Z)V

    .line 54
    iget-object v0, p0, Lcom/maishapay/presenter/EpargnePresenter$1;->this$0:Lcom/maishapay/presenter/EpargnePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/EpargnePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/EpargneView;

    invoke-interface {v0, p1}, Lcom/maishapay/view/EpargneView;->finishToLoadSolde(Lcom/maishapay/model/client/response/SoldeEpargneResponse;)V

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

    .line 49
    check-cast p1, Lcom/maishapay/model/client/response/SoldeEpargneResponse;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/EpargnePresenter$1;->accept(Lcom/maishapay/model/client/response/SoldeEpargneResponse;)V

    return-void
.end method
