.class Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "AccueilFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;-><init>(Lcom/maishapay/ui/fragment/AccueilFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;

.field final synthetic val$target:Lcom/maishapay/ui/fragment/AccueilFragment;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;Lcom/maishapay/ui/fragment/AccueilFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding$2;->this$0:Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;

    iput-object p2, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding$2;->val$target:Lcom/maishapay/ui/fragment/AccueilFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding$2;->val$target:Lcom/maishapay/ui/fragment/AccueilFragment;

    invoke-virtual {p1}, Lcom/maishapay/ui/fragment/AccueilFragment;->epargneClicked()V

    return-void
.end method
