.class public Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding;
.super Ljava/lang/Object;
.source "DialogQRCodeFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/dialog/DialogQRCodeFragment;

.field private view7f090009:Landroid/view/View;

.field private view7f09000b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/dialog/DialogQRCodeFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogQRCodeFragment;

    const-string v0, "field \'editText\'"

    .line 28
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090021

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/dialog/DialogQRCodeFragment;->editText:Landroid/widget/EditText;

    const-string v0, "field \'cancelButton\' and method \'negativeButton\'"

    const v1, 0x7f090009

    .line 29
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'cancelButton\'"

    .line 30
    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/maishapay/ui/dialog/DialogQRCodeFragment;->cancelButton:Landroid/widget/Button;

    .line 31
    iput-object v0, p0, Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding;->view7f090009:Landroid/view/View;

    .line 32
    new-instance v1, Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding$1;-><init>(Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding;Lcom/maishapay/ui/dialog/DialogQRCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'yesButton\' and method \'postiveButton\'"

    const v1, 0x7f09000b

    .line 38
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'yesButton\'"

    .line 39
    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/maishapay/ui/dialog/DialogQRCodeFragment;->yesButton:Landroid/widget/Button;

    .line 40
    iput-object p2, p0, Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding$2;-><init>(Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding;Lcom/maishapay/ui/dialog/DialogQRCodeFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogQRCodeFragment;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogQRCodeFragment;

    .line 56
    iput-object v1, v0, Lcom/maishapay/ui/dialog/DialogQRCodeFragment;->editText:Landroid/widget/EditText;

    .line 57
    iput-object v1, v0, Lcom/maishapay/ui/dialog/DialogQRCodeFragment;->cancelButton:Landroid/widget/Button;

    .line 58
    iput-object v1, v0, Lcom/maishapay/ui/dialog/DialogQRCodeFragment;->yesButton:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding;->view7f090009:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iput-object v1, p0, Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding;->view7f090009:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iput-object v1, p0, Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    return-void
.end method
