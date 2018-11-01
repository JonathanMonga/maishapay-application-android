.class public Lcom/maishapay/ui/activities/PaiementActivity_ViewBinding;
.super Ljava/lang/Object;
.source "PaiementActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/activities/PaiementActivity;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/activities/PaiementActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-virtual {p1}, Lcom/maishapay/ui/activities/PaiementActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/maishapay/ui/activities/PaiementActivity_ViewBinding;-><init>(Lcom/maishapay/ui/activities/PaiementActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/maishapay/ui/activities/PaiementActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/maishapay/ui/activities/PaiementActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/PaiementActivity;

    const-string v0, "field \'recyclerView\'"

    .line 27
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f09020d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/maishapay/ui/activities/PaiementActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'toolbar\'"

    .line 28
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f090264

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/Toolbar;

    iput-object p2, p1, Lcom/maishapay/ui/activities/PaiementActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/maishapay/ui/activities/PaiementActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/PaiementActivity;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/maishapay/ui/activities/PaiementActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/PaiementActivity;

    .line 38
    iput-object v1, v0, Lcom/maishapay/ui/activities/PaiementActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 39
    iput-object v1, v0, Lcom/maishapay/ui/activities/PaiementActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method
