.class public Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding;
.super Ljava/lang/Object;
.source "DialogConfirmCreationEpargneFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;

.field private view7f090009:Landroid/view/View;

.field private view7f09000b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;

    const-string v0, "method \'negativeButton\'"

    const v1, 0x7f090009

    .line 27
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding;->view7f090009:Landroid/view/View;

    .line 29
    new-instance v1, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding$1;-><init>(Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding;Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'positiveButton\'"

    const v1, 0x7f09000b

    .line 35
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 36
    iput-object p2, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    .line 37
    new-instance v0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding$2;-><init>(Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding;Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;

    .line 52
    iget-object v1, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding;->view7f090009:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iput-object v0, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding;->view7f090009:Landroid/view/View;

    .line 54
    iget-object v1, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iput-object v0, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    return-void
.end method
