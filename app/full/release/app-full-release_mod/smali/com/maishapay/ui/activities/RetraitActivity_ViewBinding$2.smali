.class Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RetraitActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;-><init>(Lcom/maishapay/ui/activities/RetraitActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;

.field final synthetic val$target:Lcom/maishapay/ui/activities/RetraitActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;Lcom/maishapay/ui/activities/RetraitActivity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding$2;->this$0:Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;

    iput-object p2, p0, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding$2;->val$target:Lcom/maishapay/ui/activities/RetraitActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding$2;->val$target:Lcom/maishapay/ui/activities/RetraitActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/RetraitActivity;->qrCodeClicked()V

    return-void
.end method
