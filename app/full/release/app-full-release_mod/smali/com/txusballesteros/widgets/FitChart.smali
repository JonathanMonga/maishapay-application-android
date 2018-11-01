.class public Lcom/txusballesteros/widgets/FitChart;
.super Landroid/view/View;
.source "FitChart.java"


# static fields
.field static final ANIMATION_DURATION:I = 0x3e8

.field static final ANIMATION_MODE_LINEAR:I = 0x0

.field static final ANIMATION_MODE_OVERDRAW:I = 0x1

.field static final DEFAULT_MAX_VALUE:I = 0x64

.field static final DEFAULT_MIN_VALUE:I = 0x0

.field static final DEFAULT_VIEW_RADIUS:I = 0x0

.field static final DESIGN_MODE_SWEEP_ANGLE:I = 0xd8

.field static final INITIAL_ANIMATION_PROGRESS:F = 0.0f

.field static final MAXIMUM_SWEEP_ANGLE:F = 360.0f

.field static final START_ANGLE:I = -0x5a


# instance fields
.field private animationMode:Lcom/txusballesteros/widgets/AnimationMode;

.field private animationProgress:F

.field private backStrokeColor:I

.field private backStrokePaint:Landroid/graphics/Paint;

.field private chartValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txusballesteros/widgets/FitChartValue;",
            ">;"
        }
    .end annotation
.end field

.field private drawingArea:Landroid/graphics/RectF;

.field private maxSweepAngle:F

.field private maxValue:F

.field private minValue:F

.field private strokeSize:F

.field private valueDesignPaint:Landroid/graphics/Paint;

.field private valueStrokeColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 129
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/txusballesteros/widgets/FitChart;->minValue:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 62
    iput v0, p0, Lcom/txusballesteros/widgets/FitChart;->maxValue:F

    .line 64
    iput p1, p0, Lcom/txusballesteros/widgets/FitChart;->animationProgress:F

    const/high16 p1, 0x43b40000    # 360.0f

    .line 65
    iput p1, p0, Lcom/txusballesteros/widgets/FitChart;->maxSweepAngle:F

    .line 66
    sget-object p1, Lcom/txusballesteros/widgets/AnimationMode;->LINEAR:Lcom/txusballesteros/widgets/AnimationMode;

    iput-object p1, p0, Lcom/txusballesteros/widgets/FitChart;->animationMode:Lcom/txusballesteros/widgets/AnimationMode;

    const/4 p1, 0x0

    .line 130
    invoke-direct {p0, p1}, Lcom/txusballesteros/widgets/FitChart;->initializeView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/txusballesteros/widgets/FitChart;->minValue:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 62
    iput v0, p0, Lcom/txusballesteros/widgets/FitChart;->maxValue:F

    .line 64
    iput p1, p0, Lcom/txusballesteros/widgets/FitChart;->animationProgress:F

    const/high16 p1, 0x43b40000    # 360.0f

    .line 65
    iput p1, p0, Lcom/txusballesteros/widgets/FitChart;->maxSweepAngle:F

    .line 66
    sget-object p1, Lcom/txusballesteros/widgets/AnimationMode;->LINEAR:Lcom/txusballesteros/widgets/AnimationMode;

    iput-object p1, p0, Lcom/txusballesteros/widgets/FitChart;->animationMode:Lcom/txusballesteros/widgets/AnimationMode;

    .line 135
    invoke-direct {p0, p2}, Lcom/txusballesteros/widgets/FitChart;->initializeView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/txusballesteros/widgets/FitChart;->minValue:F

    const/high16 p3, 0x42c80000    # 100.0f

    .line 62
    iput p3, p0, Lcom/txusballesteros/widgets/FitChart;->maxValue:F

    .line 64
    iput p1, p0, Lcom/txusballesteros/widgets/FitChart;->animationProgress:F

    const/high16 p1, 0x43b40000    # 360.0f

    .line 65
    iput p1, p0, Lcom/txusballesteros/widgets/FitChart;->maxSweepAngle:F

    .line 66
    sget-object p1, Lcom/txusballesteros/widgets/AnimationMode;->LINEAR:Lcom/txusballesteros/widgets/AnimationMode;

    iput-object p1, p0, Lcom/txusballesteros/widgets/FitChart;->animationMode:Lcom/txusballesteros/widgets/AnimationMode;

    .line 140
    invoke-direct {p0, p2}, Lcom/txusballesteros/widgets/FitChart;->initializeView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private buildPaintForValue()Landroid/graphics/Paint;
    .locals 2

    .line 121
    invoke-direct {p0}, Lcom/txusballesteros/widgets/FitChart;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 122
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget v1, p0, Lcom/txusballesteros/widgets/FitChart;->strokeSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-object v0
.end method

.method private calculateAnimationSeek()F
    .locals 2

    .line 277
    iget v0, p0, Lcom/txusballesteros/widgets/FitChart;->maxSweepAngle:F

    iget v1, p0, Lcom/txusballesteros/widgets/FitChart;->animationProgress:F

    mul-float/2addr v0, v1

    const/high16 v1, -0x3d4c0000    # -90.0f

    add-float/2addr v0, v1

    return v0
.end method

.method private calculateDrawableArea()V
    .locals 4

    .line 159
    iget v0, p0, Lcom/txusballesteros/widgets/FitChart;->strokeSize:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 160
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/FitChart;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 161
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/FitChart;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v0

    sub-float/2addr v2, v0

    .line 166
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/txusballesteros/widgets/FitChart;->drawingArea:Landroid/graphics/RectF;

    return-void
.end method

.method private calculateSweepAngle(F)F
    .locals 3

    .line 281
    iget v0, p0, Lcom/txusballesteros/widgets/FitChart;->minValue:F

    iget v1, p0, Lcom/txusballesteros/widgets/FitChart;->maxValue:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/txusballesteros/widgets/FitChart;->minValue:F

    iget v2, p0, Lcom/txusballesteros/widgets/FitChart;->maxValue:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v1, v0

    mul-float/2addr p1, v1

    return p1
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 2

    .line 206
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/FitChart;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    return-object v0

    .line 209
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    return-object v0
.end method

.method private getViewRadius()F
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->drawingArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->drawingArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initializeBackground()V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/FitChart;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/FitChart;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/FitChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/txusballesteros/widgets/R$color;->default_back_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txusballesteros/widgets/FitChart;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private initializeView(Landroid/util/AttributeSet;)V
    .locals 1

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->chartValues:Ljava/util/List;

    .line 145
    invoke-direct {p0}, Lcom/txusballesteros/widgets/FitChart;->initializeBackground()V

    .line 146
    invoke-direct {p0, p1}, Lcom/txusballesteros/widgets/FitChart;->readAttributes(Landroid/util/AttributeSet;)V

    .line 147
    invoke-direct {p0}, Lcom/txusballesteros/widgets/FitChart;->preparePaints()V

    return-void
.end method

.method private playAnimation()V
    .locals 4

    const-string v0, "animationSeek"

    const/4 v1, 0x2

    .line 287
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 288
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0x3e8

    .line 289
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 290
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 291
    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 292
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 293
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private preparePaints()V
    .locals 2

    .line 194
    invoke-direct {p0}, Lcom/txusballesteros/widgets/FitChart;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->backStrokePaint:Landroid/graphics/Paint;

    .line 195
    iget-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->backStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/txusballesteros/widgets/FitChart;->backStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    iget-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->backStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    iget-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->backStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/txusballesteros/widgets/FitChart;->strokeSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 198
    invoke-direct {p0}, Lcom/txusballesteros/widgets/FitChart;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->valueDesignPaint:Landroid/graphics/Paint;

    .line 199
    iget-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->valueDesignPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/txusballesteros/widgets/FitChart;->valueStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->valueDesignPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    iget-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->valueDesignPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 202
    iget-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->valueDesignPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/txusballesteros/widgets/FitChart;->strokeSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private readAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .line 170
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/FitChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    sget v1, Lcom/txusballesteros/widgets/R$color;->default_chart_value_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/txusballesteros/widgets/FitChart;->valueStrokeColor:I

    .line 172
    sget v1, Lcom/txusballesteros/widgets/R$color;->default_back_stroke_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/txusballesteros/widgets/FitChart;->backStrokeColor:I

    .line 173
    sget v1, Lcom/txusballesteros/widgets/R$dimen;->default_stroke_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/txusballesteros/widgets/FitChart;->strokeSize:F

    if-eqz p1, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/FitChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/txusballesteros/widgets/R$styleable;->FitChart:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 177
    sget v0, Lcom/txusballesteros/widgets/R$styleable;->FitChart_strokeSize:I

    iget v1, p0, Lcom/txusballesteros/widgets/FitChart;->strokeSize:F

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/txusballesteros/widgets/FitChart;->strokeSize:F

    .line 179
    sget v0, Lcom/txusballesteros/widgets/R$styleable;->FitChart_valueStrokeColor:I

    iget v1, p0, Lcom/txusballesteros/widgets/FitChart;->valueStrokeColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/txusballesteros/widgets/FitChart;->valueStrokeColor:I

    .line 181
    sget v0, Lcom/txusballesteros/widgets/R$styleable;->FitChart_backStrokeColor:I

    iget v1, p0, Lcom/txusballesteros/widgets/FitChart;->backStrokeColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/txusballesteros/widgets/FitChart;->backStrokeColor:I

    .line 183
    sget v0, Lcom/txusballesteros/widgets/R$styleable;->FitChart_animationMode:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    sget-object v0, Lcom/txusballesteros/widgets/AnimationMode;->LINEAR:Lcom/txusballesteros/widgets/AnimationMode;

    iput-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->animationMode:Lcom/txusballesteros/widgets/AnimationMode;

    goto :goto_0

    .line 187
    :cond_0
    sget-object v0, Lcom/txusballesteros/widgets/AnimationMode;->OVERDRAW:Lcom/txusballesteros/widgets/AnimationMode;

    iput-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->animationMode:Lcom/txusballesteros/widgets/AnimationMode;

    .line 189
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private renderBack(Landroid/graphics/Canvas;)V
    .locals 5

    .line 244
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 245
    invoke-direct {p0}, Lcom/txusballesteros/widgets/FitChart;->getViewRadius()F

    move-result v1

    .line 246
    iget-object v2, p0, Lcom/txusballesteros/widgets/FitChart;->drawingArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/txusballesteros/widgets/FitChart;->drawingArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 247
    iget-object v1, p0, Lcom/txusballesteros/widgets/FitChart;->backStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private renderValue(Landroid/graphics/Canvas;Lcom/txusballesteros/widgets/FitChartValue;)V
    .locals 3

    .line 262
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/FitChart;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/txusballesteros/widgets/FitChart;->calculateAnimationSeek()F

    move-result v0

    .line 264
    iget-object v1, p0, Lcom/txusballesteros/widgets/FitChart;->animationMode:Lcom/txusballesteros/widgets/AnimationMode;

    iget-object v2, p0, Lcom/txusballesteros/widgets/FitChart;->drawingArea:Landroid/graphics/RectF;

    invoke-static {v1, p2, v2}, Lcom/txusballesteros/widgets/RendererFactory;->getRenderer(Lcom/txusballesteros/widgets/AnimationMode;Lcom/txusballesteros/widgets/FitChartValue;Landroid/graphics/RectF;)Lcom/txusballesteros/widgets/Renderer;

    move-result-object v1

    .line 265
    iget v2, p0, Lcom/txusballesteros/widgets/FitChart;->animationProgress:F

    invoke-interface {v1, v2, v0}, Lcom/txusballesteros/widgets/Renderer;->buildPath(FF)Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p2}, Lcom/txusballesteros/widgets/FitChartValue;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 270
    :cond_0
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 271
    iget-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->drawingArea:Landroid/graphics/RectF;

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x43580000    # 216.0f

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 272
    iget-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->valueDesignPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private renderValues(Landroid/graphics/Canvas;)V
    .locals 2

    .line 251
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/FitChart;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->chartValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 254
    iget-object v1, p0, Lcom/txusballesteros/widgets/FitChart;->chartValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txusballesteros/widgets/FitChartValue;

    invoke-direct {p0, p1, v1}, Lcom/txusballesteros/widgets/FitChart;->renderValue(Landroid/graphics/Canvas;Lcom/txusballesteros/widgets/FitChartValue;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 257
    invoke-direct {p0, p1, v0}, Lcom/txusballesteros/widgets/FitChart;->renderValue(Landroid/graphics/Canvas;Lcom/txusballesteros/widgets/FitChartValue;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMaxValue()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/txusballesteros/widgets/FitChart;->maxValue:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/txusballesteros/widgets/FitChart;->minValue:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 238
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 239
    invoke-direct {p0, p1}, Lcom/txusballesteros/widgets/FitChart;->renderBack(Landroid/graphics/Canvas;)V

    .line 240
    invoke-direct {p0, p1}, Lcom/txusballesteros/widgets/FitChart;->renderValues(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 229
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 230
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/FitChart;->getMeasuredWidth()I

    move-result p1

    .line 231
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/FitChart;->getMeasuredHeight()I

    move-result p2

    .line 232
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 233
    invoke-virtual {p0, p1, p1}, Lcom/txusballesteros/widgets/FitChart;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 224
    invoke-direct {p0}, Lcom/txusballesteros/widgets/FitChart;->calculateDrawableArea()V

    return-void
.end method

.method public setAnimationMode(Lcom/txusballesteros/widgets/AnimationMode;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/txusballesteros/widgets/FitChart;->animationMode:Lcom/txusballesteros/widgets/AnimationMode;

    return-void
.end method

.method setAnimationSeek(F)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/txusballesteros/widgets/FitChart;->animationProgress:F

    .line 117
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/FitChart;->invalidate()V

    return-void
.end method

.method public setMaxValue(F)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/txusballesteros/widgets/FitChart;->maxValue:F

    return-void
.end method

.method public setMinValue(F)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/txusballesteros/widgets/FitChart;->minValue:F

    return-void
.end method

.method public setValue(F)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->chartValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    new-instance v0, Lcom/txusballesteros/widgets/FitChartValue;

    iget v1, p0, Lcom/txusballesteros/widgets/FitChart;->valueStrokeColor:I

    invoke-direct {v0, p1, v1}, Lcom/txusballesteros/widgets/FitChartValue;-><init>(FI)V

    .line 87
    invoke-direct {p0}, Lcom/txusballesteros/widgets/FitChart;->buildPaintForValue()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/txusballesteros/widgets/FitChartValue;->setPaint(Landroid/graphics/Paint;)V

    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 88
    invoke-virtual {v0, v1}, Lcom/txusballesteros/widgets/FitChartValue;->setStartAngle(F)V

    .line 89
    invoke-direct {p0, p1}, Lcom/txusballesteros/widgets/FitChart;->calculateSweepAngle(F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/txusballesteros/widgets/FitChartValue;->setSweepAngle(F)V

    .line 90
    iget-object p1, p0, Lcom/txusballesteros/widgets/FitChart;->chartValues:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {v0}, Lcom/txusballesteros/widgets/FitChartValue;->getSweepAngle()F

    move-result p1

    iput p1, p0, Lcom/txusballesteros/widgets/FitChart;->maxSweepAngle:F

    .line 92
    invoke-direct {p0}, Lcom/txusballesteros/widgets/FitChart;->playAnimation()V

    return-void
.end method

.method public setValues(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/txusballesteros/widgets/FitChartValue;",
            ">;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/txusballesteros/widgets/FitChart;->chartValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/txusballesteros/widgets/FitChart;->maxSweepAngle:F

    .line 99
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/high16 v0, -0x3d4c0000    # -90.0f

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txusballesteros/widgets/FitChartValue;

    .line 100
    invoke-virtual {v1}, Lcom/txusballesteros/widgets/FitChartValue;->getValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/txusballesteros/widgets/FitChart;->calculateSweepAngle(F)F

    move-result v2

    .line 101
    invoke-direct {p0}, Lcom/txusballesteros/widgets/FitChart;->buildPaintForValue()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/txusballesteros/widgets/FitChartValue;->setPaint(Landroid/graphics/Paint;)V

    .line 102
    invoke-virtual {v1, v0}, Lcom/txusballesteros/widgets/FitChartValue;->setStartAngle(F)V

    .line 103
    invoke-virtual {v1, v2}, Lcom/txusballesteros/widgets/FitChartValue;->setSweepAngle(F)V

    .line 104
    iget-object v3, p0, Lcom/txusballesteros/widgets/FitChart;->chartValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float/2addr v0, v2

    .line 106
    iget v1, p0, Lcom/txusballesteros/widgets/FitChart;->maxSweepAngle:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/txusballesteros/widgets/FitChart;->maxSweepAngle:F

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/txusballesteros/widgets/FitChart;->playAnimation()V

    return-void
.end method
