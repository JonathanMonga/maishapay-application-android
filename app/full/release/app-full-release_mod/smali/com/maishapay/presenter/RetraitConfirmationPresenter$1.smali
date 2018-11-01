.class Lcom/maishapay/presenter/RetraitConfirmationPresenter$1;
.super Ljava/lang/Object;
.source "RetraitConfirmationPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/RetraitConfirmationPresenter;->retrait(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/maishapay/model/client/response/RetraitResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/RetraitConfirmationPresenter;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/maishapay/model/client/response/RetraitResponse;)V
    .locals 3

    .line 51
    invoke-virtual {p1}, Lcom/maishapay/model/client/response/RetraitResponse;->getResultat()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/RetraitView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/RetraitView;->enabledControls(Z)V

    .line 66
    iget-object v0, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/RetraitView;

    invoke-interface {v0, p1}, Lcom/maishapay/view/RetraitView;->finishToRetrait(Lcom/maishapay/model/client/response/RetraitResponse;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/RetraitView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/RetraitView;->enabledControls(Z)V

    .line 60
    iget-object v0, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/RetraitView;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/RetraitResponse;->getResultat()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/maishapay/view/RetraitView;->showRetraitError(I)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/RetraitView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/RetraitView;->enabledControls(Z)V

    .line 54
    iget-object v0, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/RetraitView;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/RetraitResponse;->getResultat()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/maishapay/view/RetraitView;->showRetraitError(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    check-cast p1, Lcom/maishapay/model/client/response/RetraitResponse;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/RetraitConfirmationPresenter$1;->accept(Lcom/maishapay/model/client/response/RetraitResponse;)V

    return-void
.end method
