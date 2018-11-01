.class public Lcom/rd/draw/controller/AttributeController;
.super Ljava/lang/Object;
.source "AttributeController.java"


# static fields
.field private static final DEFAULT_IDLE_DURATION:I = 0xbb8


# instance fields
.field private indicator:Lcom/rd/draw/data/Indicator;


# direct methods
.method public constructor <init>(Lcom/rd/draw/data/Indicator;)V
    .locals 0
    .param p1    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    return-void
.end method

.method private getAnimationType(I)Lcom/rd/animation/type/AnimationType;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 168
    sget-object p1, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 165
    :pswitch_0
    sget-object p1, Lcom/rd/animation/type/AnimationType;->SCALE_DOWN:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 163
    :pswitch_1
    sget-object p1, Lcom/rd/animation/type/AnimationType;->SWAP:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 161
    :pswitch_2
    sget-object p1, Lcom/rd/animation/type/AnimationType;->DROP:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 159
    :pswitch_3
    sget-object p1, Lcom/rd/animation/type/AnimationType;->THIN_WORM:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 157
    :pswitch_4
    sget-object p1, Lcom/rd/animation/type/AnimationType;->FILL:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 155
    :pswitch_5
    sget-object p1, Lcom/rd/animation/type/AnimationType;->SLIDE:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 153
    :pswitch_6
    sget-object p1, Lcom/rd/animation/type/AnimationType;->WORM:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 151
    :pswitch_7
    sget-object p1, Lcom/rd/animation/type/AnimationType;->SCALE:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 149
    :pswitch_8
    sget-object p1, Lcom/rd/animation/type/AnimationType;->COLOR:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 147
    :pswitch_9
    sget-object p1, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRtlMode(I)Lcom/rd/draw/data/RtlMode;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 181
    sget-object p1, Lcom/rd/draw/data/RtlMode;->Auto:Lcom/rd/draw/data/RtlMode;

    return-object p1

    .line 178
    :pswitch_0
    sget-object p1, Lcom/rd/draw/data/RtlMode;->Auto:Lcom/rd/draw/data/RtlMode;

    return-object p1

    .line 176
    :pswitch_1
    sget-object p1, Lcom/rd/draw/data/RtlMode;->Off:Lcom/rd/draw/data/RtlMode;

    return-object p1

    .line 174
    :pswitch_2
    sget-object p1, Lcom/rd/draw/data/RtlMode;->On:Lcom/rd/draw/data/RtlMode;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initAnimationAttribute(Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    sget v0, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_interactiveAnimation:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 78
    sget v2, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_animationDuration:I

    const/16 v3, 0x15e

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    move-wide v2, v4

    .line 83
    :cond_0
    sget v4, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_animationType:I

    sget-object v5, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    invoke-virtual {v5}, Lcom/rd/animation/type/AnimationType;->ordinal()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 84
    invoke-direct {p0, v4}, Lcom/rd/draw/controller/AttributeController;->getAnimationType(I)Lcom/rd/animation/type/AnimationType;

    move-result-object v4

    .line 86
    sget v5, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_rtl_mode:I

    sget-object v6, Lcom/rd/draw/data/RtlMode;->Off:Lcom/rd/draw/data/RtlMode;

    invoke-virtual {v6}, Lcom/rd/draw/data/RtlMode;->ordinal()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 87
    invoke-direct {p0, v5}, Lcom/rd/draw/controller/AttributeController;->getRtlMode(I)Lcom/rd/draw/data/RtlMode;

    move-result-object v5

    .line 89
    sget v6, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_fadeOnIdle:I

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 90
    sget v6, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_idleDuration:I

    const/16 v7, 0xbb8

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    int-to-long v6, p1

    .line 92
    iget-object p1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {p1, v2, v3}, Lcom/rd/draw/data/Indicator;->setAnimationDuration(J)V

    .line 93
    iget-object p1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {p1, v0}, Lcom/rd/draw/data/Indicator;->setInteractiveAnimation(Z)V

    .line 94
    iget-object p1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {p1, v4}, Lcom/rd/draw/data/Indicator;->setAnimationType(Lcom/rd/animation/type/AnimationType;)V

    .line 95
    iget-object p1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {p1, v5}, Lcom/rd/draw/data/Indicator;->setRtlMode(Lcom/rd/draw/data/RtlMode;)V

    .line 96
    iget-object p1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {p1, v1}, Lcom/rd/draw/data/Indicator;->setFadeOnIdle(Z)V

    .line 97
    iget-object p1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {p1, v6, v7}, Lcom/rd/draw/data/Indicator;->setIdleDuration(J)V

    return-void
.end method

.method private initColorAttribute(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    sget v0, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_unselectedColor:I

    const-string v1, "#33ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 70
    sget v1, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_selectedColor:I

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 72
    iget-object v1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1, v0}, Lcom/rd/draw/data/Indicator;->setUnselectedColor(I)V

    .line 73
    iget-object v0, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setSelectedColor(I)V

    return-void
.end method

.method private initCountAttribute(Landroid/content/res/TypedArray;)V
    .locals 6
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    sget v0, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_viewPager:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 43
    sget v2, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_autoVisibility:I

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 44
    sget v3, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_dynamicCount:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 45
    sget v5, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_count:I

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v1, :cond_0

    const/4 v5, 0x3

    .line 51
    :cond_0
    sget v1, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_select:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    if-lez v5, :cond_2

    add-int/lit8 v4, v5, -0x1

    if-le p1, v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, p1

    .line 58
    :goto_0
    iget-object p1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {p1, v0}, Lcom/rd/draw/data/Indicator;->setViewPagerId(I)V

    .line 59
    iget-object p1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {p1, v2}, Lcom/rd/draw/data/Indicator;->setAutoVisibility(Z)V

    .line 60
    iget-object p1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {p1, v3}, Lcom/rd/draw/data/Indicator;->setDynamicCount(Z)V

    .line 61
    iget-object p1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {p1, v5}, Lcom/rd/draw/data/Indicator;->setCount(I)V

    .line 63
    iget-object p1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {p1, v4}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 64
    iget-object p1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {p1, v4}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 65
    iget-object p1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {p1, v4}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    return-void
.end method

.method private initSizeAttribute(Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    sget v0, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_orientation:I

    sget-object v1, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    invoke-virtual {v1}, Lcom/rd/draw/data/Orientation;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    sget-object v0, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    goto :goto_0

    .line 107
    :cond_0
    sget-object v0, Lcom/rd/draw/data/Orientation;->VERTICAL:Lcom/rd/draw/data/Orientation;

    .line 110
    :goto_0
    sget v1, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_radius:I

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/rd/utils/DensityUtils;->dpToPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    if-gez v1, :cond_1

    move v1, v2

    .line 115
    :cond_1
    sget v3, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_padding:I

    const/16 v4, 0x8

    invoke-static {v4}, Lcom/rd/utils/DensityUtils;->dpToPx(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    if-gez v3, :cond_2

    move v3, v2

    .line 120
    :cond_2
    sget v4, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_scaleFactor:I

    const v5, 0x3f333333    # 0.7f

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    cmpg-float v6, v4, v5

    const/high16 v7, 0x3f800000    # 1.0f

    if-gez v6, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    cmpl-float v5, v4, v7

    if-lez v5, :cond_4

    move v4, v7

    .line 128
    :cond_4
    :goto_1
    sget v5, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_strokeWidth:I

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/rd/utils/DensityUtils;->dpToPx(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    if-le p1, v1, :cond_5

    move p1, v1

    .line 133
    :cond_5
    iget-object v5, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v5}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v5

    sget-object v6, Lcom/rd/animation/type/AnimationType;->FILL:Lcom/rd/animation/type/AnimationType;

    if-eq v5, v6, :cond_6

    move p1, v2

    .line 137
    :cond_6
    iget-object v2, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v2, v1}, Lcom/rd/draw/data/Indicator;->setRadius(I)V

    .line 138
    iget-object v1, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1, v0}, Lcom/rd/draw/data/Indicator;->setOrientation(Lcom/rd/draw/data/Orientation;)V

    .line 139
    iget-object v0, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0, v3}, Lcom/rd/draw/data/Indicator;->setPadding(I)V

    .line 140
    iget-object v0, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0, v4}, Lcom/rd/draw/data/Indicator;->setScaleFactor(F)V

    .line 141
    iget-object v0, p0, Lcom/rd/draw/controller/AttributeController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setStroke(I)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    sget-object v0, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Lcom/rd/draw/controller/AttributeController;->initCountAttribute(Landroid/content/res/TypedArray;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/rd/draw/controller/AttributeController;->initColorAttribute(Landroid/content/res/TypedArray;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/rd/draw/controller/AttributeController;->initAnimationAttribute(Landroid/content/res/TypedArray;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/rd/draw/controller/AttributeController;->initSizeAttribute(Landroid/content/res/TypedArray;)V

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
