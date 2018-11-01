.class Lcom/maishapay/presenter/RegisterNormalPresenter$1;
.super Ljava/lang/Object;
.source "RegisterNormalPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/RegisterNormalPresenter;->inscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/maishapay/model/client/response/UserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/presenter/RegisterNormalPresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/RegisterNormalPresenter;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/maishapay/presenter/RegisterNormalPresenter$1;->this$0:Lcom/maishapay/presenter/RegisterNormalPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/maishapay/model/client/response/UserResponse;)V
    .locals 2

    .line 50
    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getResultat()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/maishapay/presenter/RegisterNormalPresenter$1;->this$0:Lcom/maishapay/presenter/RegisterNormalPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/RegisterNormalPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object p1, p0, Lcom/maishapay/presenter/RegisterNormalPresenter$1;->this$0:Lcom/maishapay/presenter/RegisterNormalPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/RegisterNormalPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/RegisterMerchantView;

    invoke-interface {p1, v1}, Lcom/maishapay/view/RegisterMerchantView;->enabledControls(Z)V

    .line 54
    iget-object p1, p0, Lcom/maishapay/presenter/RegisterNormalPresenter$1;->this$0:Lcom/maishapay/presenter/RegisterNormalPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/RegisterNormalPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/RegisterMerchantView;

    invoke-interface {p1}, Lcom/maishapay/view/RegisterMerchantView;->showResponseError()V

    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/maishapay/presenter/RegisterNormalPresenter$1;->this$0:Lcom/maishapay/presenter/RegisterNormalPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/RegisterNormalPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/maishapay/presenter/RegisterNormalPresenter$1;->this$0:Lcom/maishapay/presenter/RegisterNormalPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/RegisterNormalPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/RegisterMerchantView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/RegisterMerchantView;->enabledControls(Z)V

    .line 62
    iget-object v0, p0, Lcom/maishapay/presenter/RegisterNormalPresenter$1;->this$0:Lcom/maishapay/presenter/RegisterNormalPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/RegisterNormalPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/RegisterMerchantView;

    invoke-interface {v0, p1}, Lcom/maishapay/view/RegisterMerchantView;->finishToRegister(Lcom/maishapay/model/client/response/UserResponse;)V

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

    .line 47
    check-cast p1, Lcom/maishapay/model/client/response/UserResponse;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/RegisterNormalPresenter$1;->accept(Lcom/maishapay/model/client/response/UserResponse;)V

    return-void
.end method
