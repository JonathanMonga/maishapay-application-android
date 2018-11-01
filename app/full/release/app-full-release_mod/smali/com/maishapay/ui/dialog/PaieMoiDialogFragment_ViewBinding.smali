.class public Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding;
.super Ljava/lang/Object;
.source "PaieMoiDialogFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;

.field private view7f09000b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;

    const-string v0, "field \'qrcode\'"

    .line 25
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090209

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;->qrcode:Landroid/widget/ImageView;

    const-string v0, "method \'positiveButton\'"

    const v1, 0x7f09000b

    .line 26
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    .line 28
    new-instance v0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding$1;-><init>(Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding;Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding;->target:Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;

    .line 43
    iput-object v1, v0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;->qrcode:Landroid/widget/ImageView;

    .line 45
    iget-object v0, p0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iput-object v1, p0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding;->view7f09000b:Landroid/view/View;

    return-void
.end method
