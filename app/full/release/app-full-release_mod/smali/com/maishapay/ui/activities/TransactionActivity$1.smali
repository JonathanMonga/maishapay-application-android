.class Lcom/maishapay/ui/activities/TransactionActivity$1;
.super Ljava/lang/Object;
.source "TransactionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/TransactionActivity;->showNetworkError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/TransactionActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/TransactionActivity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/maishapay/ui/activities/TransactionActivity$1;->this$0:Lcom/maishapay/ui/activities/TransactionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/maishapay/ui/activities/TransactionActivity$1;->this$0:Lcom/maishapay/ui/activities/TransactionActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/TransactionActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/maishapay/ui/activities/TransactionActivity$1;->this$0:Lcom/maishapay/ui/activities/TransactionActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/TransactionActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    check-cast p1, Lcom/maishapay/presenter/TransactionPresenter;

    iget-object v0, p0, Lcom/maishapay/ui/activities/TransactionActivity$1;->this$0:Lcom/maishapay/ui/activities/TransactionActivity;

    invoke-static {v0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/maishapay/presenter/TransactionPresenter;->transactions(Ljava/lang/String;)V

    return-void
.end method
