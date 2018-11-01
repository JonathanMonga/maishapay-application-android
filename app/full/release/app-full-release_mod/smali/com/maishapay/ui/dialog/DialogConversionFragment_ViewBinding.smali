.class public Lcom/maishapay/ui/dialog/DialogConversionFragment_ViewBinding;
.super Ljava/lang/Object;
.source "DialogConversionFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/dialog/DialogConversionFragment;

.field private view7f09000b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/dialog/DialogConversionFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogConversionFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogConversionFragment;

    const-string v0, "field \'TV_Conversion\'"

    .line 26
    const-class v1, Lorg/fabiomsr/moneytextview/MoneyTextView;

    const v2, 0x7f09007a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fabiomsr/moneytextview/MoneyTextView;

    iput-object v0, p1, Lcom/maishapay/ui/dialog/DialogConversionFragment;->TV_Conversion:Lorg/fabiomsr/moneytextview/MoneyTextView;

    const-string v0, "field \'yesButton\' and method \'postiveButton\'"

    const v1, 0x7f09000b

    .line 27
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'yesButton\'"

    .line 28
    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/maishapay/ui/dialog/DialogConversionFragment;->yesButton:Landroid/widget/Button;

    .line 29
    iput-object p2, p0, Lcom/maishapay/ui/dialog/DialogConversionFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    .line 30
    new-instance v0, Lcom/maishapay/ui/dialog/DialogConversionFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/maishapay/ui/dialog/DialogConversionFragment_ViewBinding$1;-><init>(Lcom/maishapay/ui/dialog/DialogConversionFragment_ViewBinding;Lcom/maishapay/ui/dialog/DialogConversionFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogConversionFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogConversionFragment;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/maishapay/ui/dialog/DialogConversionFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/DialogConversionFragment;

    .line 45
    iput-object v1, v0, Lcom/maishapay/ui/dialog/DialogConversionFragment;->TV_Conversion:Lorg/fabiomsr/moneytextview/MoneyTextView;

    .line 46
    iput-object v1, v0, Lcom/maishapay/ui/dialog/DialogConversionFragment;->yesButton:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogConversionFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iput-object v1, p0, Lcom/maishapay/ui/dialog/DialogConversionFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    return-void
.end method
