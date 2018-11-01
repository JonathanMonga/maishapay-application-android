.class public Lcom/maishapay/ui/activities/PaiementActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PaiementActivity.java"


# instance fields
.field private mAdapter:Lcom/maishapay/ui/adapter/PaiementAdapter;

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

    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b008c

    .line 42
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/PaiementActivity;->setContentView(I)V

    .line 43
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 45
    iget-object p1, p0, Lcom/maishapay/ui/activities/PaiementActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "Paiements et abonnements"

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/maishapay/ui/activities/PaiementActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/PaiementActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 47
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/PaiementActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    new-instance p1, Lcom/maishapay/ui/adapter/PaiementAdapter;

    invoke-static {}, Lcom/maishapay/model/domain/PaiementModel;->getData()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/maishapay/ui/activities/PaiementActivity$1;

    invoke-direct {v1, p0}, Lcom/maishapay/ui/activities/PaiementActivity$1;-><init>(Lcom/maishapay/ui/activities/PaiementActivity;)V

    invoke-direct {p1, v0, v1}, Lcom/maishapay/ui/adapter/PaiementAdapter;-><init>(Ljava/util/List;Lcom/maishapay/ui/adapter/PaiementAdapter$ItemClickedListener;)V

    iput-object p1, p0, Lcom/maishapay/ui/activities/PaiementActivity;->mAdapter:Lcom/maishapay/ui/adapter/PaiementAdapter;

    .line 75
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 76
    iget-object v0, p0, Lcom/maishapay/ui/activities/PaiementActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 77
    iget-object p1, p0, Lcom/maishapay/ui/activities/PaiementActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 78
    iget-object p1, p0, Lcom/maishapay/ui/activities/PaiementActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/maishapay/ui/activities/PaiementActivity;->mAdapter:Lcom/maishapay/ui/adapter/PaiementAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 88
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/PaiementActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
