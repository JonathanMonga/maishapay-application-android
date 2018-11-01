.class Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SuccessPaiementActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding;-><init>(Lcom/maishapay/ui/activities/SuccessPaiementActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding;

.field final synthetic val$target:Lcom/maishapay/ui/activities/SuccessPaiementActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding;Lcom/maishapay/ui/activities/SuccessPaiementActivity;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding$1;->this$0:Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding;

    iput-object p2, p0, Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding$1;->val$target:Lcom/maishapay/ui/activities/SuccessPaiementActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 38
    iget-object p1, p0, Lcom/maishapay/ui/activities/SuccessPaiementActivity_ViewBinding$1;->val$target:Lcom/maishapay/ui/activities/SuccessPaiementActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->LL_SiteClicked()V

    return-void
.end method
