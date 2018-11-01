.class Lcom/maishapay/presenter/RetraitConfirmationPresenter$3;
.super Ljava/lang/Object;
.source "RetraitConfirmationPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/RetraitConfirmationPresenter;->confirmRetrait(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/RetraitConfirmationPresenter;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 2

    .line 87
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/RetraitView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/RetraitView;->enabledControls(Z)V

    .line 91
    iget-object v0, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/RetraitView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/maishapay/view/RetraitView;->showConfimationError(I)V

    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->isViewAttached()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 98
    iget-object p1, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/RetraitView;

    invoke-interface {p1, v1}, Lcom/maishapay/view/RetraitView;->enabledControls(Z)V

    .line 99
    iget-object p1, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$3;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/RetraitView;

    invoke-interface {p1}, Lcom/maishapay/view/RetraitView;->finishToConfirm()V

    :cond_2
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

    .line 84
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/RetraitConfirmationPresenter$3;->accept(Ljava/lang/Integer;)V

    return-void
.end method
