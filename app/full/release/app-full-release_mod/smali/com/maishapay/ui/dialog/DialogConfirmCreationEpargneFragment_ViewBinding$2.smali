.class Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DialogConfirmCreationEpargneFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding;-><init>(Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding;

.field final synthetic val$target:Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding;Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding$2;->this$0:Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding;

    iput-object p2, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding$2;->val$target:Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment_ViewBinding$2;->val$target:Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;

    invoke-virtual {p1}, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;->positiveButton()V

    return-void
.end method
