.class public Lcom/maishapay/ui/dialog/DialogNumberPickerFragment_ViewBinding;
.super Ljava/lang/Object;
.source "DialogNumberPickerFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;

.field private view7f09000b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;

    const-string v0, "field \'num\'"

    .line 28
    const-class v1, Lcom/fxn769/Numpad;

    const v2, 0x7f0901c1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fxn769/Numpad;

    iput-object v0, p1, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->num:Lcom/fxn769/Numpad;

    const-string v0, "field \'yesButton\' and method \'postiveButton\'"

    const v1, 0x7f09000b

    .line 29
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'yesButton\'"

    .line 30
    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->yesButton:Landroid/widget/Button;

    .line 31
    iput-object v0, p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    .line 32
    new-instance v1, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment_ViewBinding$1;-><init>(Lcom/maishapay/ui/dialog/DialogNumberPickerFragment_ViewBinding;Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'moneyTextView\'"

    .line 38
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090025

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->moneyTextView:Landroid/widget/TextView;

    const-string v0, "field \'ET_Device\'"

    .line 39
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09001e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->ET_Device:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;

    .line 49
    iput-object v1, v0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->num:Lcom/fxn769/Numpad;

    .line 50
    iput-object v1, v0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->yesButton:Landroid/widget/Button;

    .line 51
    iput-object v1, v0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->moneyTextView:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->ET_Device:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iput-object v1, p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    return-void
.end method
