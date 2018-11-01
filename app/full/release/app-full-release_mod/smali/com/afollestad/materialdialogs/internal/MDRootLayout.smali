.class public Lcom/afollestad/materialdialogs/internal/MDRootLayout;
.super Landroid/view/ViewGroup;
.source "MDRootLayout.java"


# static fields
.field private static final INDEX_NEGATIVE:I = 0x1

.field private static final INDEX_NEUTRAL:I = 0x0

.field private static final INDEX_POSITIVE:I = 0x2


# instance fields
.field private bottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private buttonBarHeight:I

.field private buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field private buttonHorizontalEdgeMargin:I

.field private buttonPaddingFull:I

.field private final buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

.field private content:Landroid/view/View;

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private drawBottomDivider:Z

.field private drawTopDivider:Z

.field private isStacked:Z

.field private maxHeight:I

.field private noTitleNoPadding:Z

.field private noTitlePaddingFull:I

.field private reducePaddingNoTitleNoButtons:Z

.field private stackBehavior:Lcom/afollestad/materialdialogs/StackingBehavior;

.field private titleBar:Landroid/view/View;

.field private topOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private useFullPadding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    .line 35
    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    .line 40
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    .line 41
    sget-object v1, Lcom/afollestad/materialdialogs/StackingBehavior;->ADAPTIVE:Lcom/afollestad/materialdialogs/StackingBehavior;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->stackBehavior:Lcom/afollestad/materialdialogs/StackingBehavior;

    .line 42
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isStacked:Z

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    .line 51
    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, v1, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    .line 35
    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    .line 40
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    .line 41
    sget-object v1, Lcom/afollestad/materialdialogs/StackingBehavior;->ADAPTIVE:Lcom/afollestad/materialdialogs/StackingBehavior;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->stackBehavior:Lcom/afollestad/materialdialogs/StackingBehavior;

    .line 42
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isStacked:Z

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    .line 51
    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    .line 35
    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    .line 40
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    .line 41
    sget-object v1, Lcom/afollestad/materialdialogs/StackingBehavior;->ADAPTIVE:Lcom/afollestad/materialdialogs/StackingBehavior;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->stackBehavior:Lcom/afollestad/materialdialogs/StackingBehavior;

    .line 42
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isStacked:Z

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    .line 51
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, 0x3

    .line 35
    new-array p4, p4, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 p4, 0x0

    .line 39
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    .line 40
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    .line 41
    sget-object v0, Lcom/afollestad/materialdialogs/StackingBehavior;->ADAPTIVE:Lcom/afollestad/materialdialogs/StackingBehavior;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->stackBehavior:Lcom/afollestad/materialdialogs/StackingBehavior;

    .line 42
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isStacked:Z

    const/4 p4, 0x1

    .line 43
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    .line 51
    sget-object p4, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebView;)Z
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canWebViewScroll(Landroid/webkit/WebView;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    return p1
.end method

.method static synthetic access$202(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    return p1
.end method

.method static synthetic access$300(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/afollestad/materialdialogs/internal/MDRootLayout;)[Lcom/afollestad/materialdialogs/internal/MDButton;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZZ)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidateDividersForScrollingView(Landroid/view/ViewGroup;ZZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/webkit/WebView;ZZZ)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidateDividersForWebView(Landroid/webkit/WebView;ZZZ)V

    return-void
.end method

.method private addScrollListener(Landroid/view/ViewGroup;ZZ)V
    .locals 1

    if-nez p3, :cond_0

    .line 554
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->topOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->bottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_4

    .line 556
    :cond_1
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 557
    new-instance v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V

    .line 573
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    const/4 p2, 0x0

    .line 574
    invoke-virtual {v0, p1, p2, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_1

    .line 576
    :cond_2
    new-instance v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V

    if-nez p3, :cond_3

    .line 596
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->topOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 597
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->topOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0

    .line 599
    :cond_3
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->bottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 600
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->bottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 602
    :goto_0
    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    :cond_4
    :goto_1
    return-void
.end method

.method private static canAdapterViewScroll(Landroid/widget/AdapterView;)Z
    .locals 5

    .line 113
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 119
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v3, v4, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 121
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 123
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v3

    if-ge v0, v3, :cond_3

    return v2

    .line 127
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 128
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v3, p0

    if-le v0, v3, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method public static canRecyclerViewScroll(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static canScrollViewScroll(Landroid/widget/ScrollView;)Z
    .locals 4

    .line 99
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 103
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    if-ge v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static canWebViewScroll(Landroid/webkit/WebView;)Z
    .locals 2

    .line 108
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result p0

    mul-float/2addr v1, p0

    cmpg-float p0, v0, v1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getBottomView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 143
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 148
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 150
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private static getTopView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 160
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 165
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 166
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 177
    sget-object v1, Lcom/afollestad/materialdialogs/R$styleable;->MDRootLayout:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 178
    sget p3, Lcom/afollestad/materialdialogs/R$styleable;->MDRootLayout_md_reduce_padding_no_title_no_buttons:I

    const/4 v1, 0x1

    .line 179
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->reducePaddingNoTitleNoButtons:Z

    .line 180
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_notitle_vertical_padding:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->noTitlePaddingFull:I

    .line 183
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_button_frame_vertical_padding:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonPaddingFull:I

    .line 185
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_button_padding_frame_side:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonHorizontalEdgeMargin:I

    .line 186
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_button_height:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonBarHeight:I

    .line 188
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->dividerPaint:Landroid/graphics/Paint;

    .line 189
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_divider_height:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->dividerWidth:I

    .line 190
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->dividerPaint:Landroid/graphics/Paint;

    sget p3, Lcom/afollestad/materialdialogs/R$attr;->md_divider_color:I

    invoke-static {p1, p3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    invoke-virtual {p0, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private invalidateDividersForScrollingView(Landroid/view/ViewGroup;ZZZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 609
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 610
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    .line 612
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    .line 615
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    :cond_1
    if-eqz p3, :cond_3

    .line 617
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_3

    if-eqz p4, :cond_2

    .line 620
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    .line 621
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p2, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    :cond_3
    return-void
.end method

.method private invalidateDividersForWebView(Landroid/webkit/WebView;ZZZ)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 628
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    .line 630
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    .line 633
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v2

    add-int/2addr p2, v2

    if-lez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    :cond_1
    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    .line 639
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    .line 640
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result p1

    mul-float/2addr p3, p1

    cmpg-float p1, p2, p3

    if-gez p1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    :cond_3
    return-void
.end method

.method private invertGravityIfNecessary()V
    .locals 2

    .line 456
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    return-void

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 461
    sget-object v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$4;->$SwitchMap$com$afollestad$materialdialogs$GravityEnum:[I

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/GravityEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 466
    :pswitch_0
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    goto :goto_0

    .line 463
    :pswitch_1
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isVisible(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 86
    instance-of v3, p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    if-eqz v3, :cond_2

    .line 87
    check-cast p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :cond_2
    :goto_1
    return v2
.end method

.method private setUpDividersVisibility(Landroid/view/View;ZZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 485
    :cond_0
    instance-of v0, p1, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 486
    check-cast p1, Landroid/widget/ScrollView;

    .line 487
    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canScrollViewScroll(Landroid/widget/ScrollView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 491
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    :cond_2
    if-eqz p3, :cond_b

    .line 494
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    goto :goto_0

    .line 497
    :cond_3
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_6

    .line 498
    check-cast p1, Landroid/widget/AdapterView;

    .line 499
    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canAdapterViewScroll(Landroid/widget/AdapterView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 500
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 503
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    :cond_5
    if-eqz p3, :cond_b

    .line 506
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    goto :goto_0

    .line 509
    :cond_6
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/View;ZZ)V

    .line 511
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 531
    :cond_7
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_a

    .line 532
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canRecyclerViewScroll(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz p2, :cond_8

    .line 534
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    :cond_8
    if-eqz p3, :cond_9

    .line 537
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    :cond_9
    if-eqz v0, :cond_b

    .line 540
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    .line 542
    :cond_a
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 543
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getTopView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 544
    invoke-direct {p0, v0, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    .line 545
    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getBottomView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eq p1, v0, :cond_b

    const/4 p2, 0x1

    .line 547
    invoke-direct {p0, p1, v1, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    :cond_b
    :goto_0
    return-void
.end method


# virtual methods
.method public noTitleNoPadding()V
    .locals 1

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->noTitleNoPadding:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 318
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 320
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 321
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/4 v2, 0x0

    .line 323
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->dividerWidth:I

    sub-int v1, v0, v1

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 326
    :cond_0
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    const/4 v2, 0x0

    int-to-float v3, v0

    .line 328
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->dividerWidth:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .line 204
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x0

    move v1, v0

    .line 205
    :goto_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 206
    invoke-virtual {p0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->md_titleFrame:I

    if-ne v3, v4, :cond_0

    .line 208
    iput-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    goto :goto_1

    .line 209
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->md_buttonDefaultNeutral:I

    if-ne v3, v4, :cond_1

    .line 210
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    check-cast v2, Lcom/afollestad/materialdialogs/internal/MDButton;

    aput-object v2, v3, v0

    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->md_buttonDefaultNegative:I

    if-ne v3, v4, :cond_2

    .line 212
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    check-cast v2, Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->md_buttonDefaultPositive:I

    if-ne v3, v4, :cond_3

    .line 214
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v4, 0x2

    check-cast v2, Lcom/afollestad/materialdialogs/internal/MDButton;

    aput-object v2, v3, v4

    goto :goto_1

    .line 216
    :cond_3
    iput-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 335
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 336
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 337
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    add-int/2addr p1, p3

    invoke-virtual {v0, p2, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    move p3, p1

    goto :goto_0

    .line 339
    :cond_0
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->noTitleNoPadding:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    if-eqz p1, :cond_1

    .line 340
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->noTitlePaddingFull:I

    add-int/2addr p3, p1

    .line 343
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 344
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 347
    :cond_2
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isStacked:Z

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 348
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonPaddingFull:I

    sub-int/2addr p5, p1

    .line 349
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_10

    aget-object v2, p1, v0

    .line 350
    invoke-static {v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 351
    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v3

    sub-int v3, p5, v3

    invoke-virtual {v2, p2, v3, p4, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 352
    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr p5, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    :cond_4
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    if-eqz p1, :cond_5

    .line 359
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonPaddingFull:I

    sub-int/2addr p5, p1

    .line 361
    :cond_5
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonBarHeight:I

    sub-int p1, p5, p1

    .line 373
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonHorizontalEdgeMargin:I

    .line 379
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_7

    .line 381
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v5, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v2, v5, :cond_6

    add-int v2, p2, v1

    .line 383
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    move v6, v4

    goto :goto_2

    :cond_6
    sub-int v5, p4, v1

    .line 387
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v5, v2

    move v6, v2

    .line 390
    :goto_2
    iget-object v7, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v7, v7, v3

    invoke-virtual {v7, v2, p1, v5, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 391
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3

    :cond_7
    move v6, v4

    .line 394
    :goto_3
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v2, v2, p3

    invoke-static {v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 396
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v5, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v2, v5, :cond_8

    add-int/2addr v1, p2

    .line 398
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    :goto_4
    move v5, v4

    goto :goto_5

    .line 399
    :cond_8
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v5, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v2, v5, :cond_9

    sub-int v2, p4, v1

    .line 401
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v2, v1

    goto :goto_4

    .line 404
    :cond_9
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonHorizontalEdgeMargin:I

    add-int/2addr v1, p2

    .line 405
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    move v5, v2

    .line 408
    :goto_5
    iget-object v7, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v7, v7, p3

    invoke-virtual {v7, v1, p1, v2, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    goto :goto_6

    :cond_a
    move v5, v4

    .line 411
    :goto_6
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 413
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v2, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v1, v2, :cond_b

    .line 414
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonHorizontalEdgeMargin:I

    sub-int/2addr p4, p2

    .line 415
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p2

    sub-int p2, p4, p2

    goto :goto_8

    .line 416
    :cond_b
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v2, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v1, v2, :cond_c

    .line 417
    iget p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonHorizontalEdgeMargin:I

    add-int/2addr p2, p4

    .line 418
    iget-object p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p4, p4, v0

    invoke-virtual {p4}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    goto :goto_8

    :cond_c
    if-ne v5, v4, :cond_e

    if-eq v6, v4, :cond_e

    .line 422
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p2

    sub-int v5, v6, p2

    :cond_d
    :goto_7
    move p2, v5

    move p4, v6

    goto :goto_8

    :cond_e
    if-ne v6, v4, :cond_f

    if-eq v5, v4, :cond_f

    .line 424
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p2

    add-int v6, v5, p2

    goto :goto_7

    :cond_f
    if-ne v6, v4, :cond_d

    sub-int/2addr p4, p2

    .line 426
    div-int/2addr p4, v3

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p2

    div-int/2addr p2, v3

    sub-int v5, p4, p2

    .line 427
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p2

    add-int v6, v5, p2

    goto :goto_7

    .line 433
    :goto_8
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v1, v0

    invoke-virtual {v0, p2, p1, p4, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 437
    :cond_10
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-direct {p0, p1, p3, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 12

    .line 223
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 224
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 226
    iget v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->maxHeight:I

    if-le v1, v2, :cond_0

    .line 227
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->maxHeight:I

    :cond_0
    const/4 v2, 0x1

    .line 230
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    .line 234
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->stackBehavior:Lcom/afollestad/materialdialogs/StackingBehavior;

    sget-object v4, Lcom/afollestad/materialdialogs/StackingBehavior;->ALWAYS:Lcom/afollestad/materialdialogs/StackingBehavior;

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v3, v4, :cond_1

    move v3, v2

    move v9, v6

    goto :goto_1

    .line 236
    :cond_1
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->stackBehavior:Lcom/afollestad/materialdialogs/StackingBehavior;

    sget-object v4, Lcom/afollestad/materialdialogs/StackingBehavior;->NEVER:Lcom/afollestad/materialdialogs/StackingBehavior;

    if-ne v3, v4, :cond_2

    move v3, v6

    move v9, v3

    goto :goto_1

    .line 240
    :cond_2
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v4, v3

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v7, v4, :cond_4

    aget-object v10, v3, v7

    if-eqz v10, :cond_3

    .line 241
    invoke-static {v10}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 242
    invoke-virtual {v10, v6, v6}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStacked(ZZ)V

    .line 243
    invoke-virtual {p0, v10, p1, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->measureChild(Landroid/view/View;II)V

    .line 244
    invoke-virtual {v10}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    move v9, v2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 250
    :cond_4
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/afollestad/materialdialogs/R$dimen;->md_neutral_button_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v3, v5

    sub-int v3, v0, v3

    if-le v8, v3, :cond_5

    move v3, v2

    goto :goto_1

    :cond_5
    move v3, v6

    .line 256
    :goto_1
    iput-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isStacked:Z

    if-eqz v3, :cond_7

    .line 258
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v4, v3

    move v7, v6

    move v8, v7

    :goto_2
    if-ge v7, v4, :cond_8

    aget-object v10, v3, v7

    if-eqz v10, :cond_6

    .line 259
    invoke-static {v10}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 260
    invoke-virtual {v10, v2, v6}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStacked(ZZ)V

    .line 261
    invoke-virtual {p0, v10, p1, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->measureChild(Landroid/view/View;II)V

    .line 262
    invoke-virtual {v10}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    move v9, v2

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    move v8, v6

    :cond_8
    if-eqz v9, :cond_a

    .line 272
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isStacked:Z

    if-eqz p1, :cond_9

    sub-int p1, v1, v8

    .line 274
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonPaddingFull:I

    mul-int/2addr p2, v5

    add-int/2addr p2, v6

    .line 275
    iget v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonPaddingFull:I

    mul-int/2addr v5, v3

    add-int v3, v6, v5

    goto :goto_4

    .line 277
    :cond_9
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonBarHeight:I

    sub-int p1, v1, p1

    .line 278
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonPaddingFull:I

    mul-int/2addr v5, p2

    add-int p2, v6, v5

    goto :goto_3

    .line 283
    :cond_a
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonPaddingFull:I

    mul-int/2addr v5, p1

    add-int p2, v6, v5

    move p1, v1

    :goto_3
    move v3, v6

    .line 286
    :goto_4
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_b

    .line 287
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    .line 288
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 287
    invoke-virtual {v4, v7, v6}, Landroid/view/View;->measure(II)V

    .line 289
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr p1, v4

    goto :goto_5

    .line 290
    :cond_b
    iget-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->noTitleNoPadding:Z

    if-nez v4, :cond_c

    .line 291
    iget v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->noTitlePaddingFull:I

    add-int/2addr p2, v4

    .line 294
    :cond_c
    :goto_5
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 295
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    .line 296
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    sub-int v7, p1, v3

    const/high16 v8, -0x80000000

    .line 297
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 295
    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    .line 299
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v5, p1, p2

    if-gt v4, v5, :cond_f

    .line 300
    iget-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->reducePaddingNoTitleNoButtons:Z

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_e

    if-eqz v9, :cond_d

    goto :goto_6

    .line 304
    :cond_d
    iput-boolean v6, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    .line 305
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v3

    sub-int v6, p1, p2

    goto :goto_7

    .line 301
    :cond_e
    :goto_6
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    .line 302
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    sub-int v6, p1, v2

    goto :goto_7

    .line 308
    :cond_f
    iput-boolean v6, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    goto :goto_7

    :cond_10
    move v6, p1

    :goto_7
    sub-int/2addr v1, v6

    .line 313
    invoke-virtual {p0, v0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setButtonGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 452
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invertGravityIfNecessary()V

    return-void
.end method

.method public setButtonStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .locals 4

    .line 473
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    .line 475
    invoke-virtual {v3, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->maxHeight:I

    return-void
.end method

.method public setStackingBehavior(Lcom/afollestad/materialdialogs/StackingBehavior;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->stackBehavior:Lcom/afollestad/materialdialogs/StackingBehavior;

    .line 442
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    return-void
.end method
