.class Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DialogQRCodeFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding;-><init>(Lcom/maishapay/ui/dialog/DialogQRCodeFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding;

.field final synthetic val$target:Lcom/maishapay/ui/dialog/DialogQRCodeFragment;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding;Lcom/maishapay/ui/dialog/DialogQRCodeFragment;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding$2;->this$0:Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding;

    iput-object p2, p0, Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding$2;->val$target:Lcom/maishapay/ui/dialog/DialogQRCodeFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogQRCodeFragment_ViewBinding$2;->val$target:Lcom/maishapay/ui/dialog/DialogQRCodeFragment;

    invoke-virtual {p1}, Lcom/maishapay/ui/dialog/DialogQRCodeFragment;->postiveButton()V

    return-void
.end method
