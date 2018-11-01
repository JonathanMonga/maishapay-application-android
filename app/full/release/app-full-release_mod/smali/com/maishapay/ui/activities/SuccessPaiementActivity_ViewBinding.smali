.class public Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SuccessPaiementActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/activities/SuccessPaiementActivity;

.field private view7f090045:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/activities/SuccessPaiementActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 23
    invoke-virtual {p1}, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding;-><init>(Lcom/maishapay/ui/activities/SuccessPaiementActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/maishapay/ui/activities/SuccessPaiementActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/SuccessPaiementActivity;

    const-string v0, "field \'toolbar\'"

    .line 31
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f090264

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'TV_Msg\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090080

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->TV_Msg:Landroid/widget/TextView;

    const-string v0, "method \'LL_SiteClicked\'"

    const v1, 0x7f090045

    .line 33
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding;->view7f090045:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding$1;-><init>(Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding;Lcom/maishapay/ui/activities/SuccessPaiementActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/SuccessPaiementActivity;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/SuccessPaiementActivity;

    .line 50
    iput-object v1, v0, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 51
    iput-object v1, v0, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->TV_Msg:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding;->view7f090045:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v1, p0, Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding;->view7f090045:Landroid/view/View;

    return-void
.end method
