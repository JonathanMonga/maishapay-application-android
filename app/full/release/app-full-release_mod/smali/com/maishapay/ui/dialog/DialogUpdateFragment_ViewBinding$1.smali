.class Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DialogUpdateFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding;-><init>(Lcom/maishapay/ui/dialog/DialogUpdateFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding;

.field final synthetic val$target:Lcom/maishapay/ui/dialog/DialogUpdateFragment;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding;Lcom/maishapay/ui/dialog/DialogUpdateFragment;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding$1;->this$0:Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding;

    iput-object p2, p0, Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding$1;->val$target:Lcom/maishapay/ui/dialog/DialogUpdateFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 33
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogUpdateFragment_ViewBinding$1;->val$target:Lcom/maishapay/ui/dialog/DialogUpdateFragment;

    invoke-virtual {p1}, Lcom/maishapay/ui/dialog/DialogUpdateFragment;->negativeButton()V

    return-void
.end method
