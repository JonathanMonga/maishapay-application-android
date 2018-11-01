.class public Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment_ViewBinding;
.super Ljava/lang/Object;
.source "DialogConfirmEpargneFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;

.field private view7f090009:Landroid/view/View;

.field private view7f09000b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;

    const-string v0, "field \'TV_Msg\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090080

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->TV_Msg:Landroid/widget/TextView;

    const-string v0, "method \'negativeButton\'"

    const v1, 0x7f090009

    .line 29
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment_ViewBinding;->view7f090009:Landroid/view/View;

    .line 31
    new-instance v1, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment_ViewBinding$1;-><init>(Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment_ViewBinding;Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'positiveButton\'"

    const v1, 0x7f09000b

    .line 37
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    .line 39
    new-instance v0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment_ViewBinding$2;-><init>(Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment_ViewBinding;Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;

    .line 54
    iput-object v1, v0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->TV_Msg:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment_ViewBinding;->view7f090009:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object v1, p0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment_ViewBinding;->view7f090009:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iput-object v1, p0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    return-void
.end method
