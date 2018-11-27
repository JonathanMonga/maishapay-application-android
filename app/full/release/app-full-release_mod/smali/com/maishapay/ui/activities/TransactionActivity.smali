.class public Lcom/maishapay/ui/activities/TransactionActivity;
.super Lcom/maishapay/ui/activities/BaseActivity;
.source "TransactionActivity.java"

# interfaces
.implements Lcom/maishapay/view/TransactionView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maishapay/ui/activities/BaseActivity<",
        "Lcom/maishapay/presenter/TransactionPresenter;",
        "Lcom/maishapay/view/TransactionView;",
        ">;",
        "Lcom/maishapay/view/TransactionView;"
    }
.end annotation


# instance fields
.field ET_DollarsEnvoye:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09001f
    .end annotation
.end field

.field ET_DollarsRecu:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090020
    .end annotation
.end field

.field ET_FrancsEnvoye:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090022
    .end annotation
.end field

.field ET_FrancsRecu:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090023
    .end annotation
.end field

.field private mAdapter:Lcom/maishapay/ui/adapter/TransactionAdapter;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016f
    .end annotation
.end field

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09020d
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090264
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/maishapay/ui/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public enabledControls(Z)V
    .locals 0

    return-void
.end method

.method public finishToLoadStatisics(Lcom/maishapay/model/domain/SoldeAndRapport;)V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/maishapay/ui/activities/TransactionActivity;->ET_FrancsEnvoye:Landroid/widget/TextView;

    const-string v1, "%d Fc"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/maishapay/model/domain/SoldeAndRapport;->getEnvoiFrancs()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/maishapay/ui/activities/TransactionActivity;->ET_FrancsRecu:Landroid/widget/TextView;

    const-string v1, "%d Fc"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/maishapay/model/domain/SoldeAndRapport;->getRecuFrancs()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/maishapay/ui/activities/TransactionActivity;->ET_DollarsEnvoye:Landroid/widget/TextView;

    const-string v1, "%d $"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/maishapay/model/domain/SoldeAndRapport;->getEnvoiDollars()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/maishapay/ui/activities/TransactionActivity;->ET_DollarsRecu:Landroid/widget/TextView;

    const-string v1, "%d $"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/maishapay/model/domain/SoldeAndRapport;->getRecuDollars()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public finishToLoadTransactions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maishapay/model/client/response/TransactionItemResponse;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/maishapay/ui/activities/TransactionActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 91
    new-instance v0, Lcom/maishapay/ui/adapter/TransactionAdapter;

    invoke-direct {v0, p1}, Lcom/maishapay/ui/adapter/TransactionAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/maishapay/ui/activities/TransactionActivity;->mAdapter:Lcom/maishapay/ui/adapter/TransactionAdapter;

    .line 92
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 93
    iget-object v0, p0, Lcom/maishapay/ui/activities/TransactionActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 94
    iget-object p1, p0, Lcom/maishapay/ui/activities/TransactionActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 95
    iget-object p1, p0, Lcom/maishapay/ui/activities/TransactionActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/maishapay/ui/activities/TransactionActivity;->mAdapter:Lcom/maishapay/ui/adapter/TransactionAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b00a9

    .line 50
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/TransactionActivity;->setContentView(I)V

    .line 51
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 54
    iget-object p1, p0, Lcom/maishapay/ui/activities/TransactionActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "Transactions"

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Lcom/maishapay/ui/activities/TransactionActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/TransactionActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 57
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/TransactionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/maishapay/ui/activities/TransactionActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/TransactionActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    check-cast p1, Lcom/maishapay/presenter/TransactionPresenter;

    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/maishapay/presenter/TransactionPresenter;->transactions(Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 124
    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/TransactionActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public providePresenter()Lcom/maishapay/presenter/TransactionPresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 114
    new-instance v0, Lcom/maishapay/presenter/TransactionPresenter;

    invoke-direct {v0}, Lcom/maishapay/presenter/TransactionPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic providePresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/TransactionActivity;->providePresenter()Lcom/maishapay/presenter/TransactionPresenter;

    move-result-object v0

    return-object v0
.end method

.method public showNetworkError()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/maishapay/ui/activities/TransactionActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 72
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const v1, 0x7f090216

    .line 73
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/TransactionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "Vous avez besion d\'une connexion internet pour effectuer cette action!"

    .line 74
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const/4 v1, -0x2

    .line 75
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "R\u00e9esseyer"

    .line 76
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    new-instance v1, Lcom/maishapay/ui/activities/TransactionActivity$1;

    invoke-direct {v1, p0}, Lcom/maishapay/ui/activities/TransactionActivity$1;-><init>(Lcom/maishapay/ui/activities/TransactionActivity;)V

    .line 77
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionClickListener(Landroid/view/View$OnClickListener;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lde/mateware/snacky/Snacky$Builder;->error()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method
