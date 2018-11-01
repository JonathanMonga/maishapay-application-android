.class Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ConversionActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;-><init>(Lcom/maishapay/ui/activities/ConversionActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;

.field final synthetic val$target:Lcom/maishapay/ui/activities/ConversionActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;Lcom/maishapay/ui/activities/ConversionActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding$1;->this$0:Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;

    iput-object p2, p0, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding$1;->val$target:Lcom/maishapay/ui/activities/ConversionActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding$1;->val$target:Lcom/maishapay/ui/activities/ConversionActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/ConversionActivity;->ET_MontantClicked()V

    return-void
.end method
