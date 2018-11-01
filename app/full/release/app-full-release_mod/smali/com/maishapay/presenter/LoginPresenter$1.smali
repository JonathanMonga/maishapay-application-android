.class Lcom/maishapay/presenter/LoginPresenter$1;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/LoginPresenter;->login(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/maishapay/presenter/LoginPresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/LoginPresenter;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/maishapay/presenter/LoginPresenter$1;->this$0:Lcom/maishapay/presenter/LoginPresenter;

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
    iget-object v0, p0, Lcom/maishapay/presenter/LoginPresenter$1;->this$0:Lcom/maishapay/presenter/LoginPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/LoginPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/maishapay/presenter/LoginPresenter$1;->this$0:Lcom/maishapay/presenter/LoginPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/LoginPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/LoginView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/LoginView;->enabledControls(Z)V

    .line 54
    iget-object v0, p0, Lcom/maishapay/presenter/LoginPresenter$1;->this$0:Lcom/maishapay/presenter/LoginPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/LoginPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/LoginView;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getResultat()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/maishapay/view/LoginView;->showLoginError(I)V

    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/maishapay/presenter/LoginPresenter$1;->this$0:Lcom/maishapay/presenter/LoginPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/LoginPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/maishapay/presenter/LoginPresenter$1;->this$0:Lcom/maishapay/presenter/LoginPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/LoginPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/LoginView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/LoginView;->enabledControls(Z)V

    .line 62
    iget-object v0, p0, Lcom/maishapay/presenter/LoginPresenter$1;->this$0:Lcom/maishapay/presenter/LoginPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/LoginPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/LoginView;

    invoke-interface {v0, p1}, Lcom/maishapay/view/LoginView;->finishToLogin(Lcom/maishapay/model/client/response/UserResponse;)V

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

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/LoginPresenter$1;->accept(Lcom/maishapay/model/client/response/UserResponse;)V

    return-void
.end method
