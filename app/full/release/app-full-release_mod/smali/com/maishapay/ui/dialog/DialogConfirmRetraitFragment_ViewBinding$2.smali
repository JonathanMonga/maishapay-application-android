.class Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DialogConfirmRetraitFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment_ViewBinding;-><init>(Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment_ViewBinding;

.field final synthetic val$target:Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment_ViewBinding;Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment_ViewBinding$2;->this$0:Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment_ViewBinding;

    iput-object p2, p0, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment_ViewBinding$2;->val$target:Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment_ViewBinding$2;->val$target:Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;

    invoke-virtual {p1}, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->positiveButton()V

    return-void
.end method
