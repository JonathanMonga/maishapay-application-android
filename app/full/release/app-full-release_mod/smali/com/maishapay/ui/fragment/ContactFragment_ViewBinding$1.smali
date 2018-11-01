.class Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ContactFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding;-><init>(Lcom/maishapay/ui/fragment/ContactFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding;

.field final synthetic val$target:Lcom/maishapay/ui/fragment/ContactFragment;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding;Lcom/maishapay/ui/fragment/ContactFragment;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding$1;->this$0:Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding;

    iput-object p2, p0, Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding$1;->val$target:Lcom/maishapay/ui/fragment/ContactFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding$1;->val$target:Lcom/maishapay/ui/fragment/ContactFragment;

    invoke-virtual {p1}, Lcom/maishapay/ui/fragment/ContactFragment;->BTN_EnvoyerClicked()V

    return-void
.end method
