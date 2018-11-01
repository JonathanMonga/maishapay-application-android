.class Lcom/maishapay/presenter/TranfertConfirmationPresenter$3;
.super Ljava/lang/Object;
.source "TranfertConfirmationPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/TranfertConfirmationPresenter;->confirmTransfert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/TranfertConfirmationPresenter;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 3

    .line 116
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransfertView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/TransfertView;->enabledControls(Z)V

    .line 120
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransfertView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/maishapay/view/TransfertView;->showConfimationError(I)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransfertView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/TransfertView;->enabledControls(Z)V

    .line 128
    iget-object v0, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/TransfertView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/maishapay/view/TransfertView;->showConfimationError(I)V

    goto :goto_1

    .line 134
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->isViewAttached()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 135
    iget-object p1, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/TransfertView;

    invoke-interface {p1, v1}, Lcom/maishapay/view/TransfertView;->enabledControls(Z)V

    .line 136
    iget-object p1, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/TransfertView;

    invoke-interface {p1}, Lcom/maishapay/view/TransfertView;->finishToConfirm()V

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

    .line 113
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/TranfertConfirmationPresenter$3;->accept(Ljava/lang/Integer;)V

    return-void
.end method
