.class Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PaieMoiDialogFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding;-><init>(Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding;

.field final synthetic val$target:Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding;Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding$1;->this$0:Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding;

    iput-object p2, p0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding$1;->val$target:Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment_ViewBinding$1;->val$target:Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;

    invoke-virtual {p1}, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;->positiveButton()V

    return-void
.end method
