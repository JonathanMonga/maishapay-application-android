.class public Lcom/futuremind/recyclerviewfastscroll/FastScroller;
.super Landroid/widget/LinearLayout;
.source "FastScroller.java"


# static fields
.field private static final STYLE_NONE:I = -0x1


# instance fields
.field private bubble:Landroid/view/View;

.field private bubbleColor:I

.field private bubbleOffset:I

.field private bubbleTextAppearance:I

.field private bubbleTextView:Landroid/widget/TextView;

.field private handle:Landroid/view/View;

.field private handleColor:I

.field private manuallyChangingPosition:Z

.field private maxVisibility:I

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final scrollListener:Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;

.field private scrollerOrientation:I

.field private titleProvider:Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;

.field private viewProvider:Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p3, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;

    invoke-direct {p3, p0}, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;-><init>(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V

    iput-object p3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->scrollListener:Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;

    const/4 p3, 0x0

    .line 55
    invoke-virtual {p0, p3}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setClipChildren(Z)V

    .line 56
    sget-object v0, Lcom/futuremind/recyclerviewfastscroll/R$styleable;->fastscroll__fastScroller:[I

    sget v1, Lcom/futuremind/recyclerviewfastscroll/R$attr;->fastscroll__style:I

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    :try_start_0
    sget p2, Lcom/futuremind/recyclerviewfastscroll/R$styleable;->fastscroll__fastScroller_fastscroll__bubbleColor:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubbleColor:I

    .line 59
    sget p2, Lcom/futuremind/recyclerviewfastscroll/R$styleable;->fastscroll__fastScroller_fastscroll__handleColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handleColor:I

    .line 60
    sget p2, Lcom/futuremind/recyclerviewfastscroll/R$styleable;->fastscroll__fastScroller_fastscroll__bubbleTextAppearance:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubbleTextAppearance:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->maxVisibility:I

    .line 65
    new-instance p1, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;

    invoke-direct {p1}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;-><init>()V

    invoke-virtual {p0, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setViewProvider(Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;)V

    return-void

    :catchall_0
    move-exception p2

    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method static synthetic access$000(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->invalidateVisibility()V

    return-void
.end method

.method static synthetic access$100(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->titleProvider:Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->viewProvider:Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;

    return-object p0
.end method

.method static synthetic access$302(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->manuallyChangingPosition:Z

    return p1
.end method

.method static synthetic access$400(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Landroid/view/MotionEvent;)F
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getRelativeTouchPosition(Landroid/view/MotionEvent;)F

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/futuremind/recyclerviewfastscroll/FastScroller;F)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setRecyclerViewPosition(F)V

    return-void
.end method

.method private applyStyling()V
    .locals 3

    .line 173
    iget v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubbleColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubbleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubbleColor:I

    invoke-direct {p0, v0, v2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setBackgroundTint(Landroid/view/View;I)V

    .line 174
    :cond_0
    iget v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handleColor:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    iget v2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handleColor:I

    invoke-direct {p0, v0, v2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setBackgroundTint(Landroid/view/View;I)V

    .line 175
    :cond_1
    iget v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubbleTextAppearance:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubbleTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubbleTextAppearance:I

    invoke-static {v0, v1}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    :cond_2
    return-void
.end method

.method private getRelativeTouchPosition(Landroid/view/MotionEvent;)F
    .locals 2

    .line 208
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    invoke-static {v0}, Lcom/futuremind/recyclerviewfastscroll/Utils;->getViewRawY(Landroid/view/View;)F

    move-result v0

    sub-float/2addr p1, v0

    .line 210
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    invoke-static {v0}, Lcom/futuremind/recyclerviewfastscroll/Utils;->getViewRawX(Landroid/view/View;)F

    move-result v0

    sub-float/2addr p1, v0

    .line 213
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method private initHandleMovement()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    new-instance v1, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;

    invoke-direct {v1, p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;-><init>(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private invalidateVisibility()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 225
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 226
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    .line 227
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    invoke-direct {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->isRecyclerViewNotScrollable()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->maxVisibility:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x4

    .line 231
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private isRecyclerViewNotScrollable()Z
    .locals 4

    .line 238
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->isVertical()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    mul-int/2addr v0, v3

    iget-object v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    if-gt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    mul-int/2addr v0, v3

    iget-object v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    if-gt v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private setBackgroundTint(Landroid/view/View;I)V
    .locals 2

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 182
    invoke-static {p1, v0}, Lcom/futuremind/recyclerviewfastscroll/Utils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setRecyclerViewPosition(F)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    .line 248
    invoke-static {v1, v2, p1}, Lcom/futuremind/recyclerviewfastscroll/Utils;->getValueInRange(FFF)F

    move-result p1

    float-to-int p1, p1

    .line 249
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 250
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->titleProvider:Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubbleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubbleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->titleProvider:Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;

    invoke-interface {v1, p1}, Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;->getSectionTitle(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addScrollerListener(Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener$ScrollerListener;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->scrollListener:Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;

    invoke-virtual {v0, p1}, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->addScrollerListener(Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener$ScrollerListener;)V

    return-void
.end method

.method getViewProvider()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->viewProvider:Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;

    return-object v0
.end method

.method public isVertical()Z
    .locals 2

    .line 280
    iget v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->scrollerOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 160
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 162
    invoke-direct {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->initHandleMovement()V

    .line 163
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->viewProvider:Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getBubbleOffset()I

    move-result p1

    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubbleOffset:I

    .line 165
    invoke-direct {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->applyStyling()V

    .line 168
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->scrollListener:Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;

    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->updateHandlePosition(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public setBubbleColor(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubbleColor:I

    .line 128
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->invalidate()V

    return-void
.end method

.method public setBubbleTextAppearance(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubbleTextAppearance:I

    .line 146
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->invalidate()V

    return-void
.end method

.method public setHandleColor(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handleColor:I

    .line 137
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->scrollerOrientation:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 119
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 90
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 91
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;

    iput-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->titleProvider:Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->scrollListener:Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 93
    invoke-direct {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->invalidateVisibility()V

    .line 94
    new-instance v0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$1;

    invoke-direct {v0, p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller$1;-><init>(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method setScrollerPosition(F)V
    .locals 5

    .line 254
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->isVertical()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubble:Landroid/view/View;

    .line 257
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubble:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 258
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubbleOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 255
    invoke-static {v1, v2, v3}, Lcom/futuremind/recyclerviewfastscroll/Utils;->getValueInRange(FFF)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    .line 260
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    .line 262
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 263
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr p1, v3

    .line 260
    invoke-static {v1, v2, p1}, Lcom/futuremind/recyclerviewfastscroll/Utils;->getValueInRange(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubble:Landroid/view/View;

    .line 268
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubble:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 269
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubbleOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 266
    invoke-static {v1, v2, v3}, Lcom/futuremind/recyclerviewfastscroll/Utils;->getValueInRange(FFF)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 271
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    .line 273
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 274
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr p1, v3

    .line 271
    invoke-static {v1, v2, p1}, Lcom/futuremind/recyclerviewfastscroll/Utils;->getValueInRange(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    :goto_0
    return-void
.end method

.method public setViewProvider(Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->removeAllViews()V

    .line 74
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->viewProvider:Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;

    .line 75
    invoke-virtual {p1, p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->setFastScroller(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V

    .line 76
    invoke-virtual {p1, p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->provideBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubble:Landroid/view/View;

    .line 77
    invoke-virtual {p1, p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->provideHandleView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    .line 78
    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->provideBubbleTextView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubbleTextView:Landroid/widget/TextView;

    .line 79
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->bubble:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->addView(Landroid/view/View;)V

    .line 80
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->maxVisibility:I

    .line 220
    invoke-direct {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->invalidateVisibility()V

    return-void
.end method

.method shouldUpdateHandlePosition()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->handle:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->manuallyChangingPosition:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
