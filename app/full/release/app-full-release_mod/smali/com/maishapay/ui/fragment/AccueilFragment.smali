.class public Lcom/maishapay/ui/fragment/AccueilFragment;
.super Lcom/maishapay/ui/fragment/BaseFragment;
.source "AccueilFragment.java"

# interfaces
.implements Lcom/maishapay/view/AccueilView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maishapay/ui/fragment/BaseFragment<",
        "Lcom/maishapay/presenter/AccueilPresenter;",
        "Lcom/maishapay/view/AccueilView;",
        ">;",
        "Lcom/maishapay/view/AccueilView;"
    }
.end annotation


# instance fields
.field TV_Taux:Lorg/fabiomsr/moneytextview/MoneyTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090081
    .end annotation
.end field

.field bmb:Lcom/nightonke/boommenu/BoomMenuButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ac
    .end annotation
.end field

.field pageIndicatorView:Lcom/rd/PageIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d3
    .end annotation
.end field

.field pager:Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09026f
    .end annotation
.end field

.field progressBarSolde:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090205
    .end annotation
.end field

.field progressBarTaux:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090206
    .end annotation
.end field

.field taux:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090247
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/maishapay/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private updateIndicator()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    sget-object v1, Lcom/rd/animation/type/AnimationType;->SWAP:Lcom/rd/animation/type/AnimationType;

    invoke-virtual {v0, v1}, Lcom/rd/PageIndicatorView;->setAnimationType(Lcom/rd/animation/type/AnimationType;)V

    .line 334
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    sget-object v1, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    invoke-virtual {v0, v1}, Lcom/rd/PageIndicatorView;->setOrientation(Lcom/rd/draw/data/Orientation;)V

    .line 335
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    sget-object v1, Lcom/rd/draw/data/RtlMode;->Auto:Lcom/rd/draw/data/RtlMode;

    invoke-virtual {v0, v1}, Lcom/rd/PageIndicatorView;->setRtlMode(Lcom/rd/draw/data/RtlMode;)V

    .line 336
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rd/PageIndicatorView;->setInteractiveAnimation(Z)V

    .line 337
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-virtual {v0, v1}, Lcom/rd/PageIndicatorView;->setAutoVisibility(Z)V

    .line 338
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rd/PageIndicatorView;->setFadeOnIdle(Z)V

    .line 339
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/rd/PageIndicatorView;->setAnimationDuration(J)V

    .line 340
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-virtual {v0, v1, v2}, Lcom/rd/PageIndicatorView;->setIdleDuration(J)V

    return-void
.end method


# virtual methods
.method public enabledControls(Z)V
    .locals 0

    return-void
.end method

.method public epargneClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09011e
        }
    .end annotation

    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v1

    const-class v2, Lcom/maishapay/ui/activities/EpargneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/maishapay/ui/fragment/AccueilFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public finishToLoadSoldeAndRappot(Lcom/maishapay/model/domain/SoldeAndRapport;)V
    .locals 5

    .line 294
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maishapay/model/prefs/UserPrefencesManager;->setLastSoldeAndRapport(Landroid/content/Context;Lcom/maishapay/model/domain/SoldeAndRapport;)V

    .line 296
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->progressBarSolde:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 297
    new-instance v0, Lcom/maishapay/ui/adapter/HeaderPagerAdapter;

    invoke-virtual {p0}, Lcom/maishapay/ui/fragment/AccueilFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/maishapay/ui/adapter/HeaderPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    invoke-virtual {p1}, Lcom/maishapay/model/domain/SoldeAndRapport;->getSoldeFrancs()I

    move-result v2

    invoke-virtual {p1}, Lcom/maishapay/model/domain/SoldeAndRapport;->getEnvoiFrancs()I

    move-result v3

    invoke-virtual {p1}, Lcom/maishapay/model/domain/SoldeAndRapport;->getRecuFrancs()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->newInstance(III)Lcom/maishapay/ui/fragment/BalanceFrancsFragment;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {p1}, Lcom/maishapay/model/domain/SoldeAndRapport;->getSoldeDollars()I

    move-result v2

    invoke-virtual {p1}, Lcom/maishapay/model/domain/SoldeAndRapport;->getEnvoiDollars()I

    move-result v3

    invoke-virtual {p1}, Lcom/maishapay/model/domain/SoldeAndRapport;->getRecuDollars()I

    move-result p1

    invoke-static {v2, v3, p1}, Lcom/maishapay/ui/fragment/BalanceDollarsFragment;->newInstance(III)Lcom/maishapay/ui/fragment/BalanceDollarsFragment;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {v0, v1}, Lcom/maishapay/ui/adapter/HeaderPagerAdapter;->setData(Ljava/util/List;)V

    .line 305
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->pager:Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v1, v2}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->setInterval(J)V

    .line 306
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->pager:Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;

    invoke-virtual {p1}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->startAutoScroll()V

    .line 307
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->pager:Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;

    invoke-virtual {p1, v0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 308
    invoke-virtual {v0}, Lcom/maishapay/ui/adapter/HeaderPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public finishToLoadTaux(Ljava/lang/Double;)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->progressBarTaux:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->taux:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->TV_Taux:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/fabiomsr/moneytextview/MoneyTextView;->setAmount(F)V

    .line 317
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/maishapay/model/prefs/UserPrefencesManager;->setCurrentTaux(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/maishapay/ui/fragment/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0b001c

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 80
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 82
    invoke-direct {p0}, Lcom/maishapay/ui/fragment/AccueilFragment;->updateIndicator()V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 345
    invoke-super {p0}, Lcom/maishapay/ui/fragment/BaseFragment;->onPause()V

    .line 346
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->pager:Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;

    invoke-virtual {v0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->stopAutoScroll()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    invoke-super {p0, p1, p2}, Lcom/maishapay/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->pager:Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;

    invoke-virtual {p1}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->startAutoScroll()V

    .line 91
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->bmb:Lcom/nightonke/boommenu/BoomMenuButton;

    sget-object p2, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->HAM_4:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomMenuButton;->setPiecePlaceEnum(Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;)V

    .line 92
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->bmb:Lcom/nightonke/boommenu/BoomMenuButton;

    sget-object p2, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->HAM_4:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomMenuButton;->setButtonPlaceEnum(Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;)V

    .line 94
    new-instance p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    invoke-direct {p1}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;-><init>()V

    const p2, 0x7f0801c7

    .line 95
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->normalImageRes(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    const p2, 0x7f060002

    .line 96
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->normalColorRes(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    const p2, 0x7f0f0097

    .line 97
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->normalTextRes(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    const p2, 0x7f0f067c

    .line 98
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subNormalTextRes(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    move-result-object p1

    .line 99
    iget-object p2, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->bmb:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-virtual {p2, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->addBuilder(Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;)V

    .line 101
    new-instance p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    invoke-direct {p1}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;-><init>()V

    const p2, 0x7f0801b7

    .line 102
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->normalImageRes(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    const/high16 p2, 0x7f060000

    .line 103
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->normalColorRes(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    const p2, 0x7f0f064f

    .line 104
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->normalTextRes(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    const p2, 0x7f0f067e

    .line 105
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subNormalTextRes(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    move-result-object p1

    .line 106
    iget-object p2, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->bmb:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-virtual {p2, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->addBuilder(Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;)V

    .line 108
    new-instance p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    invoke-direct {p1}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;-><init>()V

    const p2, 0x7f0801b1

    .line 109
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->normalImageRes(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    const p2, 0x7f060004

    .line 110
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->normalColorRes(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    const p2, 0x7f0f0689

    .line 111
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->normalTextRes(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    const p2, 0x7f0f067f

    .line 112
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subNormalTextRes(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    move-result-object p1

    .line 113
    iget-object p2, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->bmb:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-virtual {p2, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->addBuilder(Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;)V

    .line 115
    new-instance p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    invoke-direct {p1}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;-><init>()V

    const p2, 0x7f0802ae

    .line 116
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->normalImageRes(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    const p2, 0x7f060008

    .line 117
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->normalColorRes(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    const p2, 0x7f0f060c

    .line 118
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->normalTextRes(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    const p2, 0x7f0f067d

    .line 119
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subNormalTextRes(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    move-result-object p1

    .line 120
    iget-object p2, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->bmb:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-virtual {p2, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->addBuilder(Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;)V

    .line 123
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->bmb:Lcom/nightonke/boommenu/BoomMenuButton;

    new-instance p2, Lcom/maishapay/ui/fragment/AccueilFragment$1;

    invoke-direct {p2, p0}, Lcom/maishapay/ui/fragment/AccueilFragment$1;-><init>(Lcom/maishapay/ui/fragment/AccueilFragment;)V

    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomMenuButton;->setOnBoomListener(Lcom/nightonke/boommenu/OnBoomListener;)V

    .line 193
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p1

    invoke-static {p1}, Lorg/alfonz/utility/NetworkUtility;->isOnline(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 194
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getLastSoldeAndRapport(Landroid/content/Context;)Lcom/maishapay/model/domain/SoldeAndRapport;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 195
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->taux:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->progressBarSolde:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 197
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->progressBarTaux:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 198
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->TV_Taux:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentTaux(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/fabiomsr/moneytextview/MoneyTextView;->setAmount(F)V

    .line 200
    new-instance p1, Lcom/maishapay/ui/adapter/HeaderPagerAdapter;

    invoke-virtual {p0}, Lcom/maishapay/ui/fragment/AccueilFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/maishapay/ui/adapter/HeaderPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 202
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getLastSoldeAndRapport(Landroid/content/Context;)Lcom/maishapay/model/domain/SoldeAndRapport;

    move-result-object p2

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-virtual {p2}, Lcom/maishapay/model/domain/SoldeAndRapport;->getSoldeFrancs()I

    move-result v1

    invoke-virtual {p2}, Lcom/maishapay/model/domain/SoldeAndRapport;->getEnvoiFrancs()I

    move-result v2

    invoke-virtual {p2}, Lcom/maishapay/model/domain/SoldeAndRapport;->getRecuFrancs()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->newInstance(III)Lcom/maishapay/ui/fragment/BalanceFrancsFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p2}, Lcom/maishapay/model/domain/SoldeAndRapport;->getSoldeDollars()I

    move-result v1

    invoke-virtual {p2}, Lcom/maishapay/model/domain/SoldeAndRapport;->getEnvoiDollars()I

    move-result v2

    invoke-virtual {p2}, Lcom/maishapay/model/domain/SoldeAndRapport;->getRecuDollars()I

    move-result p2

    invoke-static {v1, v2, p2}, Lcom/maishapay/ui/fragment/BalanceDollarsFragment;->newInstance(III)Lcom/maishapay/ui/fragment/BalanceDollarsFragment;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {p1, v0}, Lcom/maishapay/ui/adapter/HeaderPagerAdapter;->setData(Ljava/util/List;)V

    .line 210
    iget-object p2, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->pager:Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, v0, v1}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->setInterval(J)V

    .line 211
    iget-object p2, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->pager:Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;

    invoke-virtual {p2}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->startAutoScroll()V

    .line 212
    iget-object p2, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->pager:Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;

    invoke-virtual {p2, p1}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 213
    invoke-virtual {p1}, Lcom/maishapay/ui/adapter/HeaderPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->taux:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->progressBarSolde:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->progressBarTaux:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 219
    invoke-virtual {p0}, Lcom/maishapay/ui/fragment/AccueilFragment;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    check-cast p1, Lcom/maishapay/presenter/AccueilPresenter;

    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/maishapay/presenter/AccueilPresenter;->solde(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/maishapay/ui/fragment/AccueilFragment;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    check-cast p1, Lcom/maishapay/presenter/AccueilPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/AccueilPresenter;->taux()V

    :cond_1
    :goto_0
    return-void
.end method

.method public paiementCardIdClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901d4
        }
    .end annotation

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v1

    const-class v2, Lcom/maishapay/ui/activities/PaiementActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/maishapay/ui/fragment/AccueilFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public providePresenter()Lcom/maishapay/presenter/AccueilPresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 328
    new-instance v0, Lcom/maishapay/presenter/AccueilPresenter;

    invoke-direct {v0}, Lcom/maishapay/presenter/AccueilPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic providePresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/maishapay/ui/fragment/AccueilFragment;->providePresenter()Lcom/maishapay/presenter/AccueilPresenter;

    move-result-object v0

    return-object v0
.end method

.method public showNetworkError()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->progressBarSolde:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment;->progressBarTaux:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 275
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    .line 276
    invoke-virtual {p0}, Lcom/maishapay/ui/fragment/AccueilFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "Vous avez besion d\'une connexion internet pour effectuer cette action!"

    .line 277
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const/4 v1, -0x2

    .line 278
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "R\u00e9esseyer"

    .line 279
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    new-instance v1, Lcom/maishapay/ui/fragment/AccueilFragment$3;

    invoke-direct {v1, p0}, Lcom/maishapay/ui/fragment/AccueilFragment$3;-><init>(Lcom/maishapay/ui/fragment/AccueilFragment;)V

    .line 280
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionClickListener(Landroid/view/View$OnClickListener;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lde/mateware/snacky/Snacky$Builder;->error()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public transactionCardIdClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090268
        }
    .end annotation

    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v1

    const-class v2, Lcom/maishapay/ui/activities/TransactionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/maishapay/ui/fragment/AccueilFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public transfertClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900a8
        }
    .end annotation

    .line 242
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/maishapay/ui/fragment/AccueilFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Type des transferts"

    .line 243
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f030004

    .line 244
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/maishapay/ui/fragment/AccueilFragment$2;

    invoke-direct {v1, p0}, Lcom/maishapay/ui/fragment/AccueilFragment$2;-><init>(Lcom/maishapay/ui/fragment/AccueilFragment;)V

    .line 245
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method
