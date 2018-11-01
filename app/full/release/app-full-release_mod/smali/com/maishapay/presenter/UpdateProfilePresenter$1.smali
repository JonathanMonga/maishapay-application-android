.class Lcom/maishapay/presenter/UpdateProfilePresenter$1;
.super Ljava/lang/Object;
.source "UpdateProfilePresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/UpdateProfilePresenter;->updateProfile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/maishapay/presenter/UpdateProfilePresenter;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$userResponse:Lcom/maishapay/model/client/response/UserResponse;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/UpdateProfilePresenter;Landroid/app/Activity;Lcom/maishapay/model/client/response/UserResponse;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/maishapay/presenter/UpdateProfilePresenter$1;->this$0:Lcom/maishapay/presenter/UpdateProfilePresenter;

    iput-object p2, p0, Lcom/maishapay/presenter/UpdateProfilePresenter$1;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/maishapay/presenter/UpdateProfilePresenter$1;->val$userResponse:Lcom/maishapay/model/client/response/UserResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 2

    .line 61
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/maishapay/presenter/UpdateProfilePresenter$1;->this$0:Lcom/maishapay/presenter/UpdateProfilePresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/UpdateProfilePresenter;->isViewAttached()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/maishapay/presenter/UpdateProfilePresenter$1;->this$0:Lcom/maishapay/presenter/UpdateProfilePresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/UpdateProfilePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/UpdateProfileView;

    invoke-interface {p1, v0}, Lcom/maishapay/view/UpdateProfileView;->enabledControls(Z)V

    .line 65
    iget-object p1, p0, Lcom/maishapay/presenter/UpdateProfilePresenter$1;->this$0:Lcom/maishapay/presenter/UpdateProfilePresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/UpdateProfilePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/UpdateProfileView;

    invoke-interface {p1}, Lcom/maishapay/view/UpdateProfileView;->showResponseError()V

    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/maishapay/presenter/UpdateProfilePresenter$1;->this$0:Lcom/maishapay/presenter/UpdateProfilePresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/UpdateProfilePresenter;->isViewAttached()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 72
    iget-object p1, p0, Lcom/maishapay/presenter/UpdateProfilePresenter$1;->val$context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/maishapay/presenter/UpdateProfilePresenter$1;->val$userResponse:Lcom/maishapay/model/client/response/UserResponse;

    invoke-static {p1, v1}, Lcom/maishapay/model/prefs/UserPrefencesManager;->setCurentUser(Landroid/content/Context;Lcom/maishapay/model/client/response/UserResponse;)V

    .line 73
    iget-object p1, p0, Lcom/maishapay/presenter/UpdateProfilePresenter$1;->this$0:Lcom/maishapay/presenter/UpdateProfilePresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/UpdateProfilePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/UpdateProfileView;

    invoke-interface {p1, v0}, Lcom/maishapay/view/UpdateProfileView;->enabledControls(Z)V

    .line 74
    iget-object p1, p0, Lcom/maishapay/presenter/UpdateProfilePresenter$1;->this$0:Lcom/maishapay/presenter/UpdateProfilePresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/UpdateProfilePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/UpdateProfileView;

    invoke-interface {p1}, Lcom/maishapay/view/UpdateProfileView;->finishToUpdate()V

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

    .line 58
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/UpdateProfilePresenter$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
