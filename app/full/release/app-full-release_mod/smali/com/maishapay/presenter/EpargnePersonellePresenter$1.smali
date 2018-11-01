.class Lcom/maishapay/presenter/EpargnePersonellePresenter$1;
.super Ljava/lang/Object;
.source "EpargnePersonellePresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/EpargnePersonellePresenter;->transfertEpargnePersonelle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/maishapay/model/client/response/EpargneResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/presenter/EpargnePersonellePresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/EpargnePersonellePresenter;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/maishapay/presenter/EpargnePersonellePresenter$1;->this$0:Lcom/maishapay/presenter/EpargnePersonellePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/maishapay/model/client/response/EpargneResponse;)V
    .locals 3

    .line 50
    invoke-virtual {p1}, Lcom/maishapay/model/client/response/EpargneResponse;->getResultat()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/maishapay/presenter/EpargnePersonellePresenter$1;->this$0:Lcom/maishapay/presenter/EpargnePersonellePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/EpargnePersonellePresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/maishapay/presenter/EpargnePersonellePresenter$1;->this$0:Lcom/maishapay/presenter/EpargnePersonellePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/EpargnePersonellePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/EpargnePersonelleView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/EpargnePersonelleView;->enabledControls(Z)V

    .line 54
    iget-object v0, p0, Lcom/maishapay/presenter/EpargnePersonellePresenter$1;->this$0:Lcom/maishapay/presenter/EpargnePersonellePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/EpargnePersonellePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/EpargnePersonelleView;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/EpargneResponse;->getResultat()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/maishapay/view/EpargnePersonelleView;->showTranfertError(I)V

    goto :goto_1

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/maishapay/presenter/EpargnePersonellePresenter$1;->this$0:Lcom/maishapay/presenter/EpargnePersonellePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/EpargnePersonellePresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/maishapay/presenter/EpargnePersonellePresenter$1;->this$0:Lcom/maishapay/presenter/EpargnePersonellePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/EpargnePersonellePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/EpargnePersonelleView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/EpargnePersonelleView;->enabledControls(Z)V

    .line 62
    iget-object v0, p0, Lcom/maishapay/presenter/EpargnePersonellePresenter$1;->this$0:Lcom/maishapay/presenter/EpargnePersonellePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/EpargnePersonellePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/EpargnePersonelleView;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/EpargneResponse;->getResultat()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/maishapay/view/EpargnePersonelleView;->showTranfertError(I)V

    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/maishapay/presenter/EpargnePersonellePresenter$1;->this$0:Lcom/maishapay/presenter/EpargnePersonellePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/EpargnePersonellePresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/maishapay/presenter/EpargnePersonellePresenter$1;->this$0:Lcom/maishapay/presenter/EpargnePersonellePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/EpargnePersonellePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/EpargnePersonelleView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/EpargnePersonelleView;->enabledControls(Z)V

    .line 70
    iget-object v0, p0, Lcom/maishapay/presenter/EpargnePersonellePresenter$1;->this$0:Lcom/maishapay/presenter/EpargnePersonellePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/EpargnePersonellePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/EpargnePersonelleView;

    invoke-interface {v0, p1}, Lcom/maishapay/view/EpargnePersonelleView;->finishToTranfert(Lcom/maishapay/model/client/response/EpargneResponse;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    check-cast p1, Lcom/maishapay/model/client/response/EpargneResponse;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/EpargnePersonellePresenter$1;->accept(Lcom/maishapay/model/client/response/EpargneResponse;)V

    return-void
.end method
