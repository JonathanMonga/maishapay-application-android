.class Lcom/maishapay/ui/activities/EpargneActivity$1;
.super Ljava/lang/Object;
.source "EpargneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/EpargneActivity;->showNetworkError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/EpargneActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/EpargneActivity;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity$1;->this$0:Lcom/maishapay/ui/activities/EpargneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity$1;->this$0:Lcom/maishapay/ui/activities/EpargneActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maishapay/ui/activities/EpargneActivity;->enabledControls(Z)V

    .line 138
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity$1;->this$0:Lcom/maishapay/ui/activities/EpargneActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/EpargneActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    check-cast p1, Lcom/maishapay/presenter/EpargnePresenter;

    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargneActivity$1;->this$0:Lcom/maishapay/ui/activities/EpargneActivity;

    invoke-static {v0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/maishapay/presenter/EpargnePresenter;->soldeEpargne(Ljava/lang/String;)V

    return-void
.end method
