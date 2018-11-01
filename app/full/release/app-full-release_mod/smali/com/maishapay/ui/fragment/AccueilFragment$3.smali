.class Lcom/maishapay/ui/fragment/AccueilFragment$3;
.super Ljava/lang/Object;
.source "AccueilFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/fragment/AccueilFragment;->showNetworkError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/fragment/AccueilFragment;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/fragment/AccueilFragment;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment$3;->this$0:Lcom/maishapay/ui/fragment/AccueilFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 283
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment$3;->this$0:Lcom/maishapay/ui/fragment/AccueilFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maishapay/ui/fragment/AccueilFragment;->enabledControls(Z)V

    .line 284
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment$3;->this$0:Lcom/maishapay/ui/fragment/AccueilFragment;

    invoke-virtual {p1}, Lcom/maishapay/ui/fragment/AccueilFragment;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    check-cast p1, Lcom/maishapay/presenter/AccueilPresenter;

    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/maishapay/presenter/AccueilPresenter;->solde(Ljava/lang/String;)V

    .line 285
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment$3;->this$0:Lcom/maishapay/ui/fragment/AccueilFragment;

    invoke-virtual {p1}, Lcom/maishapay/ui/fragment/AccueilFragment;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    check-cast p1, Lcom/maishapay/presenter/AccueilPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/AccueilPresenter;->taux()V

    return-void
.end method
