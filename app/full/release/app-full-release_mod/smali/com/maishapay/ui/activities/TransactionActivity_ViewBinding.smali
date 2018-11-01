.class public Lcom/maishapay/ui/activities/TransactionActivity_ViewBinding;
.super Ljava/lang/Object;
.source "TransactionActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/activities/TransactionActivity;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/activities/TransactionActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 22
    invoke-virtual {p1}, Lcom/maishapay/ui/activities/TransactionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/maishapay/ui/activities/TransactionActivity_ViewBinding;-><init>(Lcom/maishapay/ui/activities/TransactionActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/maishapay/ui/activities/TransactionActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/maishapay/ui/activities/TransactionActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/TransactionActivity;

    const-string v0, "field \'recyclerView\'"

    .line 29
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f09020d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/maishapay/ui/activities/TransactionActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'progressBar\'"

    .line 30
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f09016f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/maishapay/ui/activities/TransactionActivity;->progressBar:Landroid/widget/ProgressBar;

    const-string v0, "field \'ET_FrancsEnvoye\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090022

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/activities/TransactionActivity;->ET_FrancsEnvoye:Landroid/widget/TextView;

    const-string v0, "field \'ET_FrancsRecu\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090023

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/activities/TransactionActivity;->ET_FrancsRecu:Landroid/widget/TextView;

    const-string v0, "field \'ET_DollarsEnvoye\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09001f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/activities/TransactionActivity;->ET_DollarsEnvoye:Landroid/widget/TextView;

    const-string v0, "field \'ET_DollarsRecu\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090020

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/activities/TransactionActivity;->ET_DollarsRecu:Landroid/widget/TextView;

    const-string v0, "field \'toolbar\'"

    .line 35
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f090264

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/Toolbar;

    iput-object p2, p1, Lcom/maishapay/ui/activities/TransactionActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/maishapay/ui/activities/TransactionActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/TransactionActivity;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/maishapay/ui/activities/TransactionActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/TransactionActivity;

    .line 45
    iput-object v1, v0, Lcom/maishapay/ui/activities/TransactionActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 46
    iput-object v1, v0, Lcom/maishapay/ui/activities/TransactionActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 47
    iput-object v1, v0, Lcom/maishapay/ui/activities/TransactionActivity;->ET_FrancsEnvoye:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/maishapay/ui/activities/TransactionActivity;->ET_FrancsRecu:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/maishapay/ui/activities/TransactionActivity;->ET_DollarsEnvoye:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/maishapay/ui/activities/TransactionActivity;->ET_DollarsRecu:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/maishapay/ui/activities/TransactionActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method
