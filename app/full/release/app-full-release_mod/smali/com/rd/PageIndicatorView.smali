.class public Lcom/rd/PageIndicatorView;
.super Landroid/view/View;
.source "PageIndicatorView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/rd/IndicatorManager$Listener;
.implements Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final HANDLER:Landroid/os/Handler;


# instance fields
.field private idleRunnable:Ljava/lang/Runnable;

.field private isInteractionEnabled:Z

.field private manager:Lcom/rd/IndicatorManager;

.field private setObserver:Landroid/database/DataSetObserver;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/rd/PageIndicatorView;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 878
    new-instance p1, Lcom/rd/PageIndicatorView$2;

    invoke-direct {p1, p0}, Lcom/rd/PageIndicatorView$2;-><init>(Lcom/rd/PageIndicatorView;)V

    iput-object p1, p0, Lcom/rd/PageIndicatorView;->idleRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/rd/PageIndicatorView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 878
    new-instance p1, Lcom/rd/PageIndicatorView$2;

    invoke-direct {p1, p0}, Lcom/rd/PageIndicatorView$2;-><init>(Lcom/rd/PageIndicatorView;)V

    iput-object p1, p0, Lcom/rd/PageIndicatorView;->idleRunnable:Ljava/lang/Runnable;

    .line 50
    invoke-direct {p0, p2}, Lcom/rd/PageIndicatorView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 878
    new-instance p1, Lcom/rd/PageIndicatorView$2;

    invoke-direct {p1, p0}, Lcom/rd/PageIndicatorView$2;-><init>(Lcom/rd/PageIndicatorView;)V

    iput-object p1, p0, Lcom/rd/PageIndicatorView;->idleRunnable:Ljava/lang/Runnable;

    .line 55
    invoke-direct {p0, p2}, Lcom/rd/PageIndicatorView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 878
    new-instance p1, Lcom/rd/PageIndicatorView$2;

    invoke-direct {p1, p0}, Lcom/rd/PageIndicatorView$2;-><init>(Lcom/rd/PageIndicatorView;)V

    iput-object p1, p0, Lcom/rd/PageIndicatorView;->idleRunnable:Ljava/lang/Runnable;

    .line 61
    invoke-direct {p0, p2}, Lcom/rd/PageIndicatorView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/rd/PageIndicatorView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/rd/PageIndicatorView;)Lcom/rd/IndicatorManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/rd/PageIndicatorView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->hideWithAnimation()V

    return-void
.end method

.method private adjustPosition(I)I
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .line 845
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private displayWithAnimation()V
    .locals 3

    .line 859
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 860
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private findViewPager(Landroid/view/ViewGroup;I)Landroid/support/v4/view/ViewPager;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 831
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 835
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 836
    instance-of p2, p1, Landroid/support/v4/view/ViewPager;

    if-eqz p2, :cond_1

    .line 837
    check-cast p1, Landroid/support/v4/view/ViewPager;

    return-object p1

    :cond_1
    return-object v1
.end method

.method private findViewPager(Landroid/view/ViewParent;)V
    .locals 2
    .param p1    # Landroid/view/ViewParent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 811
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 813
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getViewPagerId()I

    move-result v0

    .line 820
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/rd/PageIndicatorView;->findViewPager(Landroid/view/ViewGroup;I)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 823
    invoke-virtual {p0, v0}, Lcom/rd/PageIndicatorView;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    goto :goto_1

    .line 825
    :cond_2
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/rd/PageIndicatorView;->findViewPager(Landroid/view/ViewParent;)V

    :goto_1
    return-void
.end method

.method private hideWithAnimation()V
    .locals 3

    .line 864
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 865
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 669
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->setupId()V

    .line 670
    invoke-direct {p0, p1}, Lcom/rd/PageIndicatorView;->initIndicatorManager(Landroid/util/AttributeSet;)V

    .line 672
    iget-object p1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {p1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rd/draw/data/Indicator;->isFadeOnIdle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 673
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->startIdleRunnable()V

    :cond_0
    return-void
.end method

.method private initIndicatorManager(Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 684
    new-instance v0, Lcom/rd/IndicatorManager;

    invoke-direct {v0, p0}, Lcom/rd/IndicatorManager;-><init>(Lcom/rd/IndicatorManager$Listener;)V

    iput-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    .line 685
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->drawer()Lcom/rd/draw/DrawManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/rd/draw/DrawManager;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 687
    iget-object p1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {p1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object p1

    .line 688
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/rd/draw/data/Indicator;->setPaddingLeft(I)V

    .line 689
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/rd/draw/data/Indicator;->setPaddingTop(I)V

    .line 690
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/rd/draw/data/Indicator;->setPaddingRight(I)V

    .line 691
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/rd/draw/data/Indicator;->setPaddingBottom(I)V

    .line 692
    invoke-virtual {p1}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result p1

    iput-boolean p1, p0, Lcom/rd/PageIndicatorView;->isInteractionEnabled:Z

    return-void
.end method

.method private isRtl()Z
    .locals 3

    .line 792
    sget-object v0, Lcom/rd/PageIndicatorView$3;->$SwitchMap$com$rd$draw$data$RtlMode:[I

    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getRtlMode()Lcom/rd/draw/data/RtlMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rd/draw/data/RtlMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    .line 800
    :pswitch_0
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_1
    return v2

    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isViewMeasured()Z
    .locals 1

    .line 807
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onPageScroll(IF)V
    .locals 4

    .line 776
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v1

    .line 778
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v2

    .line 779
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isViewMeasured()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 785
    :cond_1
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isRtl()Z

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lcom/rd/utils/CoordinatesUtils;->getProgress(Lcom/rd/draw/data/Indicator;IFZ)Landroid/util/Pair;

    move-result-object p1

    .line 786
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 787
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 788
    invoke-virtual {p0, p2, p1}, Lcom/rd/PageIndicatorView;->setProgress(IF)V

    return-void
.end method

.method private onPageSelect(I)V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .line 763
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isViewMeasured()Z

    move-result v1

    .line 764
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    if-eqz v1, :cond_1

    .line 767
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 771
    :cond_0
    invoke-virtual {p0, p1}, Lcom/rd/PageIndicatorView;->setSelection(I)V

    :cond_1
    return-void
.end method

.method private registerSetObserver()V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 700
    :cond_0
    new-instance v0, Lcom/rd/PageIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/rd/PageIndicatorView$1;-><init>(Lcom/rd/PageIndicatorView;)V

    iput-object v0, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 710
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method private setupId()V
    .locals 2

    .line 678
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 679
    invoke-static {}, Lcom/rd/utils/IdUtils;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rd/PageIndicatorView;->setId(I)V

    :cond_0
    return-void
.end method

.method private startIdleRunnable()V
    .locals 4

    .line 869
    sget-object v0, Lcom/rd/PageIndicatorView;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rd/PageIndicatorView;->idleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 870
    sget-object v0, Lcom/rd/PageIndicatorView;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rd/PageIndicatorView;->idleRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getIdleDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopIdleRunnable()V
    .locals 2

    .line 874
    sget-object v0, Lcom/rd/PageIndicatorView;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rd/PageIndicatorView;->idleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 875
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->displayWithAnimation()V

    return-void
.end method

.method private unRegisterSetObserver()V
    .locals 2

    .line 715
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 720
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    .line 721
    iput-object v0, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 723
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method private updateState()V
    .locals 3

    .line 728
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 733
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 735
    :goto_0
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 736
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 737
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 738
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/rd/draw/data/Indicator;->setCount(I)V

    .line 739
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->animate()Lcom/rd/animation/AnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/animation/AnimationManager;->end()V

    .line 741
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->updateVisibility()V

    .line 742
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->requestLayout()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private updateVisibility()V
    .locals 4

    .line 746
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->isAutoVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    .line 751
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-le v0, v2, :cond_1

    const/4 v0, 0x0

    .line 754
    invoke-virtual {p0, v0}, Lcom/rd/PageIndicatorView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    if-gt v0, v2, :cond_2

    .line 757
    invoke-virtual {p0, v3}, Lcom/rd/PageIndicatorView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    const/4 v1, 0x0

    .line 621
    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setInteractiveAnimation(Z)V

    const/4 v1, -0x1

    .line 622
    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 623
    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 624
    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 625
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->animate()Lcom/rd/animation/AnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/animation/AnimationManager;->basic()V

    return-void
.end method

.method public getAnimationDuration()J
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount()I
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    return v0
.end method

.method public getPadding()I
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getPadding()I

    move-result v0

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v0

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getScaleFactor()F

    move-result v0

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v0

    return v0
.end method

.method public getSelection()I
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getStroke()I

    move-result v0

    return v0
.end method

.method public getUnselectedColor()I
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v0

    return v0
.end method

.method public onAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 0
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 160
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->updateState()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 67
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rd/PageIndicatorView;->findViewPager(Landroid/view/ViewParent;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->unRegisterSetObserver()V

    .line 73
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->drawer()Lcom/rd/draw/DrawManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/DrawManager;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onIndicatorUpdated()V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->drawer()Lcom/rd/draw/DrawManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/rd/draw/DrawManager;->measureViewSize(II)Landroid/util/Pair;

    move-result-object p1

    .line 105
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/rd/PageIndicatorView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {p1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object p1

    iget-boolean v0, p0, Lcom/rd/PageIndicatorView;->isInteractionEnabled:Z

    invoke-virtual {p1, v0}, Lcom/rd/draw/data/Indicator;->setInteractiveAnimation(Z)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/rd/PageIndicatorView;->onPageScroll(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/rd/PageIndicatorView;->onPageSelect(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 89
    instance-of v0, p1, Lcom/rd/draw/data/PositionSavedState;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .line 91
    check-cast p1, Lcom/rd/draw/data/PositionSavedState;

    .line 92
    invoke-virtual {p1}, Lcom/rd/draw/data/PositionSavedState;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 93
    invoke-virtual {p1}, Lcom/rd/draw/data/PositionSavedState;->getSelectingPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 94
    invoke-virtual {p1}, Lcom/rd/draw/data/PositionSavedState;->getLastSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 95
    invoke-virtual {p1}, Lcom/rd/draw/data/PositionSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/rd/draw/data/PositionSavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/rd/draw/data/PositionSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 80
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/rd/draw/data/PositionSavedState;->setSelectedPosition(I)V

    .line 81
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/rd/draw/data/PositionSavedState;->setSelectingPosition(I)V

    .line 82
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/rd/draw/data/PositionSavedState;->setLastSelectedPosition(I)V

    return-object v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {p1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rd/draw/data/Indicator;->isFadeOnIdle()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 124
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 130
    :pswitch_0
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->startIdleRunnable()V

    goto :goto_0

    .line 126
    :pswitch_1
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->stopIdleRunnable()V

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->drawer()Lcom/rd/draw/DrawManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/DrawManager;->touch(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public releaseViewPager()V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 531
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    const/4 v0, 0x0

    .line 532
    iput-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    :cond_0
    return-void
.end method

.method public setAnimationDuration(J)V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/rd/draw/data/Indicator;->setAnimationDuration(J)V

    return-void
.end method

.method public setAnimationType(Lcom/rd/animation/type/AnimationType;)V
    .locals 2
    .param p1    # Lcom/rd/animation/type/AnimationType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 480
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rd/IndicatorManager;->onValueUpdated(Lcom/rd/animation/data/Value;)V

    if-eqz p1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setAnimationType(Lcom/rd/animation/type/AnimationType;)V

    goto :goto_0

    .line 485
    :cond_0
    iget-object p1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {p1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object p1

    sget-object v0, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    invoke-virtual {p1, v0}, Lcom/rd/draw/data/Indicator;->setAnimationType(Lcom/rd/animation/type/AnimationType;)V

    .line 487
    :goto_0
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setAutoVisibility(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0, v0}, Lcom/rd/PageIndicatorView;->setVisibility(I)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setAutoVisibility(Z)V

    .line 422
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->updateVisibility()V

    return-void
.end method

.method public setClickListener(Lcom/rd/draw/controller/DrawController$ClickListener;)V
    .locals 1
    .param p1    # Lcom/rd/draw/controller/DrawController$ClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 665
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->drawer()Lcom/rd/draw/DrawManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/DrawManager;->setClickListener(Lcom/rd/draw/controller/DrawController$ClickListener;)V

    return-void
.end method

.method public setCount(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setCount(I)V

    .line 171
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->updateVisibility()V

    .line 172
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setDynamicCount(Z)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setDynamicCount(Z)V

    if-eqz p1, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->registerSetObserver()V

    goto :goto_0

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->unRegisterSetObserver()V

    :goto_0
    return-void
.end method

.method public setFadeOnIdle(Z)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setFadeOnIdle(Z)V

    if-eqz p1, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->startIdleRunnable()V

    goto :goto_0

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->stopIdleRunnable()V

    :goto_0
    return-void
.end method

.method public setIdleDuration(J)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/rd/draw/data/Indicator;->setIdleDuration(J)V

    .line 458
    iget-object p1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {p1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rd/draw/data/Indicator;->isFadeOnIdle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->startIdleRunnable()V

    goto :goto_0

    .line 461
    :cond_0
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->stopIdleRunnable()V

    :goto_0
    return-void
.end method

.method public setInteractiveAnimation(Z)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setInteractiveAnimation(Z)V

    .line 499
    iput-boolean p1, p0, Lcom/rd/PageIndicatorView;->isInteractionEnabled:Z

    return-void
.end method

.method public setOrientation(Lcom/rd/draw/data/Orientation;)V
    .locals 1
    .param p1    # Lcom/rd/draw/data/Orientation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setOrientation(Lcom/rd/draw/data/Orientation;)V

    .line 434
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setPadding(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setPadding(I)V

    .line 283
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setPadding(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 267
    :cond_0
    invoke-static {p1}, Lcom/rd/utils/DensityUtils;->dpToPx(I)I

    move-result p1

    .line 268
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setPadding(I)V

    .line 269
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setProgress(IF)V
    .locals 4

    .line 635
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .line 636
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 640
    :cond_0
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :cond_3
    :goto_1
    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_4

    move p2, v1

    goto :goto_2

    :cond_4
    cmpl-float v1, p2, v3

    if-lez v1, :cond_5

    move p2, v3

    :cond_5
    :goto_2
    cmpl-float v1, p2, v3

    if-nez v1, :cond_6

    .line 656
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 657
    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 660
    :cond_6
    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 661
    iget-object p1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {p1}, Lcom/rd/IndicatorManager;->animate()Lcom/rd/animation/AnimationManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/rd/animation/AnimationManager;->interactive(F)V

    return-void
.end method

.method public setRadius(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setRadius(I)V

    .line 246
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setRadius(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 229
    :cond_0
    invoke-static {p1}, Lcom/rd/utils/DensityUtils;->dpToPx(I)I

    move-result p1

    .line 230
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setRadius(I)V

    .line 231
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setRtlMode(Lcom/rd/draw/data/RtlMode;)V
    .locals 2
    .param p1    # Lcom/rd/draw/data/RtlMode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 545
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    if-nez p1, :cond_0

    .line 547
    sget-object p1, Lcom/rd/draw/data/RtlMode;->Off:Lcom/rd/draw/data/RtlMode;

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setRtlMode(Lcom/rd/draw/data/RtlMode;)V

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setRtlMode(Lcom/rd/draw/data/RtlMode;)V

    .line 552
    :goto_0
    iget-object p1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-nez p1, :cond_1

    return-void

    .line 556
    :cond_1
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result p1

    .line 559
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 560
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int p1, v1, p1

    goto :goto_1

    .line 562
    :cond_2
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_3

    .line 563
    iget-object p1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    .line 566
    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 567
    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 568
    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 569
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const v2, 0x3e99999a    # 0.3f

    if-lez v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    move p1, v2

    .line 310
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setScaleFactor(F)V

    return-void
.end method

.method public setSelected(I)V
    .locals 3

    .line 607
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v1

    .line 609
    sget-object v2, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    invoke-virtual {v0, v2}, Lcom/rd/draw/data/Indicator;->setAnimationType(Lcom/rd/animation/type/AnimationType;)V

    .line 611
    invoke-virtual {p0, p1}, Lcom/rd/PageIndicatorView;->setSelection(I)V

    .line 612
    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setAnimationType(Lcom/rd/animation/type/AnimationType;)V

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setSelectedColor(I)V

    .line 381
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setSelection(I)V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .line 587
    invoke-direct {p0, p1}, Lcom/rd/PageIndicatorView;->adjustPosition(I)I

    move-result p1

    .line 589
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    if-eq p1, v1, :cond_1

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 593
    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setInteractiveAnimation(Z)V

    .line 594
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 595
    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 596
    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 597
    iget-object p1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {p1}, Lcom/rd/IndicatorManager;->animate()Lcom/rd/animation/AnimationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rd/animation/AnimationManager;->basic()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    .line 341
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setStroke(I)V

    .line 342
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    .line 353
    invoke-static {p1}, Lcom/rd/utils/DensityUtils;->dpToPx(I)I

    move-result p1

    .line 354
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 363
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setStroke(I)V

    .line 364
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setUnselectedColor(I)V

    .line 399
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->releaseViewPager()V

    if-nez p1, :cond_0

    return-void

    .line 515
    :cond_0
    iput-object p1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 516
    iget-object p1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 517
    iget-object p1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 518
    iget-object p1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 519
    iget-object p1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {p1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object p1

    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/rd/draw/data/Indicator;->setViewPagerId(I)V

    .line 521
    iget-object p1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {p1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rd/draw/data/Indicator;->isDynamicCount()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/rd/PageIndicatorView;->setDynamicCount(Z)V

    .line 522
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->updateState()V

    return-void
.end method
