.class Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DialogConfirmTransfertFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment_ViewBinding;-><init>(Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment_ViewBinding;

.field final synthetic val$target:Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment_ViewBinding;Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment_ViewBinding$2;->this$0:Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment_ViewBinding;

    iput-object p2, p0, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment_ViewBinding$2;->val$target:Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment_ViewBinding$2;->val$target:Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;

    invoke-virtual {p1}, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->positiveButton()V

    return-void
.end method
