.class Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;
.super Ljava/lang/Object;
.source "TranfertConfirmationPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/TranfertConfirmationPresenter;->transfert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/maishapay/model/client/response/TransfertResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/TranfertConfirmationPresenter;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/maishapay/model/client/response/TransfertResponse;)V
    .locals 2

    .line 56
    invoke-virtual {p1}, Lcom/maishapay/model/client/response/TransfertResponse;->getResultat()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransfertView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/TransfertView;->enabledControls(Z)V

    .line 60
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransfertView;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/TransfertResponse;->getResultat()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/maishapay/view/TransfertView;->showTranfertError(I)V

    goto/16 :goto_1

    .line 66
    :cond_1
    :pswitch_0
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransfertView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/TransfertView;->enabledControls(Z)V

    .line 68
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransfertView;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/TransfertResponse;->getResultat()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/maishapay/view/TransfertView;->showTranfertError(I)V

    goto :goto_1

    .line 74
    :cond_2
    :pswitch_1
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransfertView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/TransfertView;->enabledControls(Z)V

    .line 76
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransfertView;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/TransfertResponse;->getResultat()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/maishapay/view/TransfertView;->showTranfertError(I)V

    goto :goto_1

    .line 82
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransfertView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/TransfertView;->enabledControls(Z)V

    .line 84
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransfertView;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/TransfertResponse;->getResultat()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/maishapay/view/TransfertView;->showTranfertError(I)V

    goto :goto_1

    .line 90
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransfertView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/TransfertView;->enabledControls(Z)V

    .line 92
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransfertView;

    invoke-interface {v0, p1}, Lcom/maishapay/view/TransfertView;->finishToTranfert(Lcom/maishapay/model/client/response/TransfertResponse;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    check-cast p1, Lcom/maishapay/model/client/response/TransfertResponse;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/TranfertConfirmationPresenter$1;->accept(Lcom/maishapay/model/client/response/TransfertResponse;)V

    return-void
.end method
