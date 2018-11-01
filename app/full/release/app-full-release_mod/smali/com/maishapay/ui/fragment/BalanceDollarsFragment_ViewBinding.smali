.class public Lcom/maishapay/ui/fragment/BalanceDollarsFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BalanceDollarsFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/fragment/BalanceDollarsFragment;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/fragment/BalanceDollarsFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/maishapay/ui/fragment/BalanceDollarsFragment_ViewBinding;->target:Lcom/maishapay/ui/fragment/BalanceDollarsFragment;

    const-string v0, "field \'mChart\'"

    .line 21
    const-class v1, Lcom/github/mikephil/charting/charts/PieChart;

    const v2, 0x7f0900fa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/mikephil/charting/charts/PieChart;

    iput-object p2, p1, Lcom/maishapay/ui/fragment/BalanceDollarsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/maishapay/ui/fragment/BalanceDollarsFragment_ViewBinding;->target:Lcom/maishapay/ui/fragment/BalanceDollarsFragment;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/maishapay/ui/fragment/BalanceDollarsFragment_ViewBinding;->target:Lcom/maishapay/ui/fragment/BalanceDollarsFragment;

    .line 31
    iput-object v1, v0, Lcom/maishapay/ui/fragment/BalanceDollarsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    return-void
.end method
