.class public Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EpargneActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/activities/EpargneActivity;

.field private view7f0900f3:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/activities/EpargneActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 26
    invoke-virtual {p1}, Lcom/maishapay/ui/activities/EpargneActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding;-><init>(Lcom/maishapay/ui/activities/EpargneActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/maishapay/ui/activities/EpargneActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/EpargneActivity;

    const-string v0, "field \'toolbar\'"

    .line 34
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f090264

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/maishapay/ui/activities/EpargneActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'francsChart\'"

    .line 35
    const-class v1, Lcom/txusballesteros/widgets/FitChart;

    const v2, 0x7f090129

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txusballesteros/widgets/FitChart;

    iput-object v0, p1, Lcom/maishapay/ui/activities/EpargneActivity;->francsChart:Lcom/txusballesteros/widgets/FitChart;

    const-string v0, "field \'progressBarSolde\'"

    .line 36
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f090205

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/maishapay/ui/activities/EpargneActivity;->progressBarSolde:Landroid/widget/ProgressBar;

    const-string v0, "field \'dollarsChart\'"

    .line 37
    const-class v1, Lcom/txusballesteros/widgets/FitChart;

    const v2, 0x7f090128

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txusballesteros/widgets/FitChart;

    iput-object v0, p1, Lcom/maishapay/ui/activities/EpargneActivity;->dollarsChart:Lcom/txusballesteros/widgets/FitChart;

    const-string v0, "field \'TV_Dollars\'"

    .line 38
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09007d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/activities/EpargneActivity;->TV_Dollars:Landroid/widget/TextView;

    const-string v0, "field \'TV_Francs\'"

    .line 39
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09007e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/activities/EpargneActivity;->TV_Francs:Landroid/widget/TextView;

    const-string v0, "field \'LL_fitDollards\'"

    .line 40
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090046

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/maishapay/ui/activities/EpargneActivity;->LL_fitDollards:Landroid/widget/LinearLayout;

    const-string v0, "field \'LL_fitFrancs\'"

    .line 41
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090047

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/maishapay/ui/activities/EpargneActivity;->LL_fitFrancs:Landroid/widget/LinearLayout;

    const-string v0, "method \'cardEpargnePersonelleClicked\'"

    const v1, 0x7f0900f3

    .line 42
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 43
    iput-object p2, p0, Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding;->view7f0900f3:Landroid/view/View;

    .line 44
    new-instance v0, Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding$1;-><init>(Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding;Lcom/maishapay/ui/activities/EpargneActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/EpargneActivity;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/EpargneActivity;

    .line 59
    iput-object v1, v0, Lcom/maishapay/ui/activities/EpargneActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 60
    iput-object v1, v0, Lcom/maishapay/ui/activities/EpargneActivity;->francsChart:Lcom/txusballesteros/widgets/FitChart;

    .line 61
    iput-object v1, v0, Lcom/maishapay/ui/activities/EpargneActivity;->progressBarSolde:Landroid/widget/ProgressBar;

    .line 62
    iput-object v1, v0, Lcom/maishapay/ui/activities/EpargneActivity;->dollarsChart:Lcom/txusballesteros/widgets/FitChart;

    .line 63
    iput-object v1, v0, Lcom/maishapay/ui/activities/EpargneActivity;->TV_Dollars:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lcom/maishapay/ui/activities/EpargneActivity;->TV_Francs:Landroid/widget/TextView;

    .line 65
    iput-object v1, v0, Lcom/maishapay/ui/activities/EpargneActivity;->LL_fitDollards:Landroid/widget/LinearLayout;

    .line 66
    iput-object v1, v0, Lcom/maishapay/ui/activities/EpargneActivity;->LL_fitFrancs:Landroid/widget/LinearLayout;

    .line 68
    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding;->view7f0900f3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding;->view7f0900f3:Landroid/view/View;

    return-void
.end method
