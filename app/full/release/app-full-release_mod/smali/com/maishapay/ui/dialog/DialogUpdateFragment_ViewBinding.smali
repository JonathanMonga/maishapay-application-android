.class public Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding;
.super Ljava/lang/Object;
.source "DialogUpdateFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/dialog/DialogUpdateFragment;

.field private view7f090009:Landroid/view/View;

.field private view7f09000b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/dialog/DialogUpdateFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogUpdateFragment;

    const-string v0, "field \'ET_CodePin\'"

    .line 27
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090019

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/dialog/DialogUpdateFragment;->ET_CodePin:Landroid/widget/EditText;

    const-string v0, "method \'negativeButton\'"

    const v1, 0x7f090009

    .line 28
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding;->view7f090009:Landroid/view/View;

    .line 30
    new-instance v1, Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding$1;-><init>(Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding;Lcom/maishapay/ui/dialog/DialogUpdateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'postiveButton\'"

    const v1, 0x7f09000b

    .line 36
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 37
    iput-object p2, p0, Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding$2;-><init>(Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding;Lcom/maishapay/ui/dialog/DialogUpdateFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogUpdateFragment;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogUpdateFragment;

    .line 53
    iput-object v1, v0, Lcom/maishapay/ui/dialog/DialogUpdateFragment;->ET_CodePin:Landroid/widget/EditText;

    .line 55
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding;->view7f090009:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iput-object v1, p0, Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding;->view7f090009:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object v1, p0, Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    return-void
.end method
