.class Lcom/maishapay/presenter/TranfertConfirmationPresenter$4;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/TranfertConfirmationPresenter;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$4;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

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

    .line 153
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/TranfertConfirmationPresenter$4;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    iget-object p1, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$4;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->isViewAttached()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$4;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/TransfertView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/maishapay/view/TransfertView;->enabledControls(Z)V

    .line 158
    iget-object p1, p0, Lcom/maishapay/presenter/TranfertConfirmationPresenter$4;->this$0:Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/TransfertView;

    invoke-interface {p1}, Lcom/maishapay/view/TransfertView;->showNetworkError()V

    :cond_0
    return-void
.end method
