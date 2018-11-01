.class public Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;
.super Ljava/lang/Object;
.source "AccueilFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/fragment/AccueilFragment;

.field private view7f0900a8:Landroid/view/View;

.field private view7f09011e:Landroid/view/View;

.field private view7f0901d4:Landroid/view/View;

.field private view7f090268:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/fragment/AccueilFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;->target:Lcom/maishapay/ui/fragment/AccueilFragment;

    const-string v0, "field \'progressBarSolde\'"

    .line 36
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f090205

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/maishapay/ui/fragment/AccueilFragment;->progressBarSolde:Landroid/widget/ProgressBar;

    const-string v0, "field \'progressBarTaux\'"

    .line 37
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f090206

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/maishapay/ui/fragment/AccueilFragment;->progressBarTaux:Landroid/widget/ProgressBar;

    const-string v0, "field \'taux\'"

    .line 38
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090247

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/maishapay/ui/fragment/AccueilFragment;->taux:Landroid/widget/LinearLayout;

    const-string v0, "field \'TV_Taux\'"

    .line 39
    const-class v1, Lorg/fabiomsr/moneytextview/MoneyTextView;

    const v2, 0x7f090081

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fabiomsr/moneytextview/MoneyTextView;

    iput-object v0, p1, Lcom/maishapay/ui/fragment/AccueilFragment;->TV_Taux:Lorg/fabiomsr/moneytextview/MoneyTextView;

    const-string v0, "field \'pageIndicatorView\'"

    .line 40
    const-class v1, Lcom/rd/PageIndicatorView;

    const v2, 0x7f0901d3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rd/PageIndicatorView;

    iput-object v0, p1, Lcom/maishapay/ui/fragment/AccueilFragment;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    const-string v0, "field \'pager\'"

    .line 41
    const-class v1, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;

    const v2, 0x7f09026f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;

    iput-object v0, p1, Lcom/maishapay/ui/fragment/AccueilFragment;->pager:Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;

    const-string v0, "field \'bmb\'"

    .line 42
    const-class v1, Lcom/nightonke/boommenu/BoomMenuButton;

    const v2, 0x7f0900ac

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nightonke/boommenu/BoomMenuButton;

    iput-object v0, p1, Lcom/maishapay/ui/fragment/AccueilFragment;->bmb:Lcom/nightonke/boommenu/BoomMenuButton;

    const-string v0, "method \'paiementCardIdClicked\'"

    const v1, 0x7f0901d4

    .line 43
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;->view7f0901d4:Landroid/view/View;

    .line 45
    new-instance v1, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding$1;-><init>(Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;Lcom/maishapay/ui/fragment/AccueilFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'epargneClicked\'"

    const v1, 0x7f09011e

    .line 51
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;->view7f09011e:Landroid/view/View;

    .line 53
    new-instance v1, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding$2;-><init>(Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;Lcom/maishapay/ui/fragment/AccueilFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'transactionCardIdClicked\'"

    const v1, 0x7f090268

    .line 59
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;->view7f090268:Landroid/view/View;

    .line 61
    new-instance v1, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding$3;-><init>(Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;Lcom/maishapay/ui/fragment/AccueilFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'transfertClicked\'"

    const v1, 0x7f0900a8

    .line 67
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 68
    iput-object p2, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;->view7f0900a8:Landroid/view/View;

    .line 69
    new-instance v0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding$4;-><init>(Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;Lcom/maishapay/ui/fragment/AccueilFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;->target:Lcom/maishapay/ui/fragment/AccueilFragment;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 82
    iput-object v1, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;->target:Lcom/maishapay/ui/fragment/AccueilFragment;

    .line 84
    iput-object v1, v0, Lcom/maishapay/ui/fragment/AccueilFragment;->progressBarSolde:Landroid/widget/ProgressBar;

    .line 85
    iput-object v1, v0, Lcom/maishapay/ui/fragment/AccueilFragment;->progressBarTaux:Landroid/widget/ProgressBar;

    .line 86
    iput-object v1, v0, Lcom/maishapay/ui/fragment/AccueilFragment;->taux:Landroid/widget/LinearLayout;

    .line 87
    iput-object v1, v0, Lcom/maishapay/ui/fragment/AccueilFragment;->TV_Taux:Lorg/fabiomsr/moneytextview/MoneyTextView;

    .line 88
    iput-object v1, v0, Lcom/maishapay/ui/fragment/AccueilFragment;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    .line 89
    iput-object v1, v0, Lcom/maishapay/ui/fragment/AccueilFragment;->pager:Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;

    .line 90
    iput-object v1, v0, Lcom/maishapay/ui/fragment/AccueilFragment;->bmb:Lcom/nightonke/boommenu/BoomMenuButton;

    .line 92
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;->view7f0901d4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object v1, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;->view7f0901d4:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;->view7f09011e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iput-object v1, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;->view7f09011e:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;->view7f090268:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iput-object v1, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;->view7f090268:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;->view7f0900a8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iput-object v1, p0, Lcom/maishapay/ui/fragment/AccueilFragment_ViewBinding;->view7f0900a8:Landroid/view/View;

    return-void
.end method
