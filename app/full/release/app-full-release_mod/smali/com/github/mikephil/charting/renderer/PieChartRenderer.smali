.class public Lcom/github/mikephil/charting/renderer/PieChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "PieChartRenderer.java"


# instance fields
.field protected mBitmapCanvas:Landroid/graphics/Canvas;

.field private mCenterTextLastBounds:Landroid/graphics/RectF;

.field private mCenterTextLastValue:Ljava/lang/CharSequence;

.field private mCenterTextLayout:Landroid/text/StaticLayout;

.field private mCenterTextPaint:Landroid/text/TextPaint;

.field protected mChart:Lcom/github/mikephil/charting/charts/PieChart;

.field protected mDrawBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mDrawCenterTextPathBuffer:Landroid/graphics/Path;

.field protected mDrawHighlightedRectF:Landroid/graphics/RectF;

.field private mEntryLabelsPaint:Landroid/graphics/Paint;

.field private mHoleCirclePath:Landroid/graphics/Path;

.field protected mHolePaint:Landroid/graphics/Paint;

.field private mInnerRectBuffer:Landroid/graphics/RectF;

.field private mPathBuffer:Landroid/graphics/Path;

.field private mRectBuffer:[Landroid/graphics/RectF;

.field protected mTransparentCirclePaint:Landroid/graphics/Paint;

.field protected mValueLinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2

    .line 73
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 61
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    const/4 p2, 0x3

    .line 62
    new-array p2, p2, [Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x0

    aput-object p3, p2, v0

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x1

    aput-object p3, p2, v0

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x2

    aput-object p3, p2, v1

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    .line 152
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 153
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    .line 642
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    .line 685
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawCenterTextPathBuffer:Landroid/graphics/Path;

    .line 758
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawHighlightedRectF:Landroid/graphics/RectF;

    .line 74
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 76
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    .line 77
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 81
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    const/16 p3, 0x69

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 85
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    .line 86
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 87
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    const/high16 p3, 0x41400000    # 12.0f

    invoke-static {p3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 89
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const/high16 p3, 0x41500000    # 13.0f

    invoke-static {p3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 93
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    .line 94
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 96
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    invoke-static {p3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    .line 99
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F
    .locals 18

    move-object/from16 v0, p1

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, p7, v6

    add-float v7, p6, v7

    .line 166
    iget v8, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v4, p6, p7

    const v5, 0x3c8efa35

    mul-float/2addr v4, v5

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v4, v11

    mul-float v4, v4, p2

    add-float/2addr v8, v4

    .line 167
    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v9, v9, p2

    add-float/2addr v4, v9

    .line 170
    iget v9, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float/2addr v7, v5

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v5, v12

    mul-float v5, v5, p2

    add-float/2addr v9, v5

    .line 171
    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v5, v10

    mul-float v5, v5, p2

    add-float/2addr v0, v5

    sub-float v5, v8, p4

    float-to-double v10, v5

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 175
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-float v5, v4, p5

    float-to-double v14, v5

    .line 176
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v10, v14

    .line 174
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double/2addr v10, v12

    move/from16 v5, p3

    float-to-double v14, v5

    const-wide v16, 0x4066800000000000L    # 180.0

    sub-double v16, v16, v14

    div-double v16, v16, v12

    const-wide v14, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v14, v14, v16

    .line 182
    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    mul-double/2addr v10, v14

    double-to-float v5, v10

    sub-float v1, p2, v5

    float-to-double v10, v1

    add-float v8, v8, p4

    div-float/2addr v8, v6

    sub-float/2addr v9, v8

    float-to-double v1, v9

    .line 189
    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-float v4, v4, p5

    div-float/2addr v4, v6

    sub-float/2addr v0, v4

    float-to-double v3, v0

    .line 190
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 188
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v10, v0

    double-to-float v0, v10

    return v0
.end method

.method protected drawCenterText(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 692
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 694
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawCenterTextEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    .line 696
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v2

    .line 697
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v13

    .line 699
    iget v3, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v5, v13, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v3, v5

    .line 700
    iget v5, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget v6, v13, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v5, v6

    .line 702
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 703
    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v6

    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v8

    div-float/2addr v8, v7

    mul-float/2addr v6, v8

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 704
    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v6

    .line 706
    :goto_0
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    const/4 v9, 0x0

    aget-object v14, v8, v9

    sub-float v8, v3, v6

    .line 707
    iput v8, v14, Landroid/graphics/RectF;->left:F

    sub-float v8, v5, v6

    .line 708
    iput v8, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    .line 709
    iput v3, v14, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v6

    .line 710
    iput v5, v14, Landroid/graphics/RectF;->bottom:F

    .line 711
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    const/4 v5, 0x1

    aget-object v15, v3, v5

    .line 712
    invoke-virtual {v15, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 714
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextRadiusPercent()F

    move-result v3

    div-float/2addr v3, v7

    float-to-double v5, v3

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    const/high16 v16, 0x40000000    # 2.0f

    if-lez v9, :cond_1

    .line 717
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    div-float v5, v5, v16

    .line 718
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    div-float v6, v6, v16

    .line 716
    invoke-virtual {v15, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 722
    :cond_1
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastValue:Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v15, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v18, v13

    goto :goto_2

    .line 725
    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 726
    iput-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastValue:Ljava/lang/CharSequence;

    .line 728
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 731
    new-instance v12, Landroid/text/StaticLayout;

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    float-to-double v8, v3

    .line 733
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-int v8, v8

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/16 v17, 0x0

    move-object v3, v12

    move-object/from16 v18, v13

    move-object v13, v12

    move/from16 v12, v17

    invoke-direct/range {v3 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v13, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    .line 738
    :goto_2
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 740
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 741
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_4

    .line 742
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawCenterTextPathBuffer:Landroid/graphics/Path;

    .line 743
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 744
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v14, v5}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 745
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 748
    :cond_4
    iget v4, v15, Landroid/graphics/RectF;->left:F

    iget v5, v15, Landroid/graphics/RectF;->top:F

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float/2addr v6, v3

    div-float v6, v6, v16

    add-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 749
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 751
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 753
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    move-object/from16 v1, v18

    .line 754
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    :cond_5
    return-void
.end method

.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v0

    float-to-int v0, v0

    .line 127
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v1

    float-to-int v1, v1

    .line 129
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 130
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 131
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    if-lez v0, :cond_4

    if-lez v1, :cond_4

    .line 135
    new-instance v2, Ljava/lang/ref/WeakReference;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 136
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 143
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/PieData;

    .line 145
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 147
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 148
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V
    .locals 35

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 217
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v10

    .line 219
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v11

    .line 220
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v12

    .line 222
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v13

    .line 224
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v14

    .line 225
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v15

    .line 226
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v7

    .line 227
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v6

    .line 228
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v0

    const/16 v16, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move/from16 v17, v5

    goto :goto_0

    :cond_0
    move/from16 v17, v16

    :goto_0
    const/16 v18, 0x0

    if-eqz v17, :cond_1

    .line 229
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 230
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v6

    move v4, v0

    goto :goto_1

    :cond_1
    move/from16 v4, v18

    :goto_1
    move/from16 v0, v16

    move v3, v0

    :goto_2
    if-ge v0, v14, :cond_3

    .line 236
    invoke-interface {v9, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-gt v3, v5, :cond_4

    move/from16 v19, v18

    goto :goto_3

    .line 241
    :cond_4
    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F

    move-result v0

    move/from16 v19, v0

    :goto_3
    move/from16 v2, v16

    move/from16 v20, v18

    :goto_4
    if-ge v2, v14, :cond_15

    .line 245
    aget v21, v15, v2

    .line 248
    invoke-interface {v9, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 253
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->needsHighlight(I)Z

    move-result v0

    if-nez v0, :cond_14

    cmpl-float v0, v19, v18

    if-lez v0, :cond_5

    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, v21, v0

    if-gtz v0, :cond_5

    move v0, v5

    goto :goto_5

    :cond_5
    move/from16 v0, v16

    .line 257
    :goto_5
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v9, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    const v23, 0x3c8efa35

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    move/from16 v1, v18

    goto :goto_6

    :cond_6
    mul-float v1, v23, v6

    div-float v1, v19, v1

    :goto_6
    const/high16 v22, 0x40000000    # 2.0f

    div-float v24, v1, v22

    add-float v24, v20, v24

    mul-float v24, v24, v12

    add-float v9, v10, v24

    sub-float v1, v21, v1

    mul-float/2addr v1, v12

    cmpg-float v24, v1, v18

    if-gez v24, :cond_7

    move/from16 v1, v18

    .line 268
    :cond_7
    iget-object v5, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 270
    iget v5, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    move/from16 v26, v2

    mul-float v2, v9, v23

    move/from16 v27, v3

    float-to-double v2, v2

    move/from16 v28, v14

    move-object/from16 v29, v15

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v14, v6

    add-float/2addr v5, v14

    .line 271
    iget v14, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v14, v2

    const/high16 v15, 0x43b40000    # 360.0f

    cmpl-float v2, v1, v15

    if-ltz v2, :cond_8

    rem-float v2, v1, v15

    .line 273
    sget v3, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8

    .line 275
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v3, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v15, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v30, v11

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v15, v6, v11}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_7

    :cond_8
    move/from16 v30, v11

    .line 278
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 280
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v2, v13, v9, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 288
    :goto_7
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    iget v3, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float/2addr v3, v4

    iget v11, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float/2addr v11, v4

    iget v15, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v15, v4

    move/from16 v31, v1

    iget v1, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v1, v4

    invoke-virtual {v2, v3, v11, v15, v1}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v17, :cond_11

    cmpl-float v1, v4, v18

    if-gtz v1, :cond_a

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    move v15, v4

    move/from16 v24, v6

    move/from16 v34, v10

    move-object/from16 v32, v13

    move/from16 v33, v26

    move/from16 v13, v27

    move/from16 v11, v31

    const/high16 v1, 0x43b40000    # 360.0f

    const/16 v25, 0x1

    move-object v10, v7

    goto/16 :goto_d

    :cond_a
    :goto_8
    if-eqz v0, :cond_c

    mul-float v3, v21, v12

    move-object v0, v8

    move/from16 v11, v31

    move-object v1, v7

    move/from16 v15, v26

    move v2, v6

    move-object/from16 v32, v13

    move/from16 v13, v27

    move/from16 v33, v15

    move v15, v4

    move v4, v5

    const/4 v8, 0x1

    move v5, v14

    move/from16 v24, v6

    move v6, v9

    move-object v9, v7

    move v7, v11

    .line 299
    invoke-virtual/range {v0 .. v7}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    move-result v0

    cmpg-float v1, v0, v18

    if-gez v1, :cond_b

    neg-float v0, v0

    .line 309
    :cond_b
    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_9

    :cond_c
    move v15, v4

    move/from16 v24, v6

    move-object v9, v7

    move-object/from16 v32, v13

    move/from16 v33, v26

    move/from16 v13, v27

    move/from16 v11, v31

    const/4 v8, 0x1

    :goto_9
    if-eq v13, v8, :cond_e

    cmpl-float v0, v4, v18

    if-nez v0, :cond_d

    goto :goto_a

    :cond_d
    mul-float v0, v23, v4

    div-float v0, v19, v0

    goto :goto_b

    :cond_e
    :goto_a
    move/from16 v0, v18

    :goto_b
    div-float v1, v0, v22

    add-float v1, v20, v1

    mul-float/2addr v1, v12

    add-float/2addr v1, v10

    sub-float v0, v21, v0

    mul-float/2addr v0, v12

    cmpg-float v2, v0, v18

    if-gez v2, :cond_f

    move/from16 v0, v18

    :cond_f
    add-float/2addr v1, v0

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v3, v11, v2

    if-ltz v3, :cond_10

    rem-float v2, v11, v2

    .line 322
    sget v3, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_10

    move/from16 v25, v8

    move-object/from16 v8, p0

    .line 324
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v1, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v2, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move/from16 v34, v10

    goto :goto_c

    :cond_10
    move/from16 v25, v8

    move-object/from16 v8, p0

    .line 327
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v3, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v5, v1, v23

    float-to-double v5, v5

    move/from16 v34, v10

    .line 328
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v7, v10

    mul-float/2addr v7, v4

    add-float/2addr v3, v7

    iget v7, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 329
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v7, v4

    .line 327
    invoke-virtual {v2, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 331
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget-object v3, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    neg-float v0, v0

    invoke-virtual {v2, v3, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_c
    move-object v10, v9

    goto :goto_e

    :cond_11
    move v15, v4

    move/from16 v24, v6

    move/from16 v34, v10

    move-object/from16 v32, v13

    move/from16 v33, v26

    move/from16 v13, v27

    move/from16 v11, v31

    const/16 v25, 0x1

    move-object v10, v7

    const/high16 v1, 0x43b40000    # 360.0f

    :goto_d
    rem-float v1, v11, v1

    .line 339
    sget v2, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_13

    if-eqz v0, :cond_12

    div-float v1, v11, v22

    add-float v22, v9, v1

    mul-float v3, v21, v12

    move-object v0, v8

    move-object v1, v10

    move/from16 v2, v24

    move v4, v5

    move v5, v14

    move v6, v9

    move v7, v11

    .line 345
    invoke-virtual/range {v0 .. v7}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    move-result v0

    .line 354
    iget v1, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v2, v22, v23

    float-to-double v2, v2

    .line 355
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v1, v4

    .line 356
    iget v4, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 357
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v4, v0

    .line 359
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_e

    .line 364
    :cond_12
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v1, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v2, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 372
    :cond_13
    :goto_e
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 374
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_f

    :cond_14
    move/from16 v33, v2

    move/from16 v25, v5

    move/from16 v24, v6

    move/from16 v34, v10

    move/from16 v30, v11

    move-object/from16 v32, v13

    move/from16 v28, v14

    move-object/from16 v29, v15

    move v13, v3

    move v15, v4

    move-object v10, v7

    :goto_f
    mul-float v21, v21, v30

    add-float v20, v20, v21

    add-int/lit8 v2, v33, 0x1

    move-object v7, v10

    move v3, v13

    move v4, v15

    move/from16 v6, v24

    move/from16 v5, v25

    move/from16 v14, v28

    move-object/from16 v15, v29

    move/from16 v11, v30

    move-object/from16 v13, v32

    move/from16 v10, v34

    move-object/from16 v9, p2

    goto/16 :goto_4

    :cond_15
    move-object v10, v7

    .line 381
    invoke-static {v10}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    return-void
.end method

.method protected drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 3

    .line 637
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawHole(Landroid/graphics/Canvas;)V

    .line 638
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 639
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawCenterText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 38

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 762
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v10

    .line 763
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v11

    .line 766
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v12

    .line 768
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v13

    .line 769
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v14

    .line 770
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v15

    .line 771
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v16

    .line 772
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v0

    const/16 v17, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v18, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v17

    :goto_0
    const/4 v6, 0x0

    if-eqz v18, :cond_1

    .line 773
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 774
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float v0, v0, v16

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v6

    .line 777
    :goto_1
    iget-object v4, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawHighlightedRectF:Landroid/graphics/RectF;

    .line 778
    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    move/from16 v3, v17

    .line 780
    :goto_2
    array-length v0, v9

    if-ge v3, v0, :cond_1a

    .line 783
    aget-object v0, v9, v3

    invoke-virtual {v0}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 785
    array-length v1, v13

    if-lt v0, v1, :cond_3

    :cond_2
    :goto_3
    move v9, v3

    move-object/from16 v35, v4

    move/from16 v36, v5

    move/from16 v19, v6

    move/from16 v32, v10

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    goto/16 :goto_11

    .line 788
    :cond_3
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/PieData;

    aget-object v2, v9, v3

    .line 790
    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v2

    .line 789
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/PieData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 792
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isHighlightEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 795
    :cond_4
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v2

    move/from16 v6, v17

    move v7, v6

    :goto_4
    if-ge v6, v2, :cond_6

    .line 799
    invoke-interface {v1, v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v21

    move/from16 v22, v2

    move-object/from16 v2, v21

    check-cast v2, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v21, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v2, v2, v21

    if-lez v2, :cond_5

    add-int/lit8 v7, v7, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v22

    goto :goto_4

    :cond_6
    if-nez v0, :cond_7

    const/4 v2, 0x1

    const/16 v21, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v0, -0x1

    .line 807
    aget v2, v14, v2

    mul-float v6, v2, v10

    move/from16 v21, v6

    const/4 v2, 0x1

    :goto_5
    if-gt v7, v2, :cond_8

    const/16 v22, 0x0

    goto :goto_6

    .line 809
    :cond_8
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v6

    move/from16 v22, v6

    .line 811
    :goto_6
    aget v23, v13, v0

    .line 814
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSelectionShift()F

    move-result v2

    add-float v6, v16, v2

    move/from16 v24, v3

    .line 816
    iget-object v3, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    neg-float v2, v2

    .line 817
    invoke-virtual {v4, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v2, 0x0

    cmpl-float v3, v22, v2

    if-lez v3, :cond_9

    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v2, v23, v2

    if-gtz v2, :cond_9

    const/16 v25, 0x1

    goto :goto_7

    :cond_9
    move/from16 v25, v17

    .line 821
    :goto_7
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v1, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const v26, 0x3c8efa35

    const/4 v3, 0x1

    if-ne v7, v3, :cond_a

    const/4 v0, 0x0

    goto :goto_8

    :cond_a
    mul-float v0, v26, v16

    div-float v0, v22, v0

    :goto_8
    if-ne v7, v3, :cond_b

    const/4 v1, 0x0

    goto :goto_9

    :cond_b
    mul-float v1, v26, v6

    div-float v1, v22, v1

    :goto_9
    const/high16 v20, 0x40000000    # 2.0f

    div-float v2, v0, v20

    add-float v2, v21, v2

    mul-float/2addr v2, v11

    add-float v27, v12, v2

    sub-float v0, v23, v0

    mul-float/2addr v0, v11

    const/16 v19, 0x0

    cmpg-float v2, v0, v19

    if-gez v2, :cond_c

    move/from16 v28, v19

    goto :goto_a

    :cond_c
    move/from16 v28, v0

    :goto_a
    div-float v0, v1, v20

    add-float v0, v21, v0

    mul-float/2addr v0, v11

    add-float/2addr v0, v12

    sub-float v1, v23, v1

    mul-float/2addr v1, v11

    cmpg-float v2, v1, v19

    if-gez v2, :cond_d

    move/from16 v1, v19

    .line 843
    :cond_d
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/high16 v29, 0x43b40000    # 360.0f

    cmpl-float v2, v28, v29

    if-ltz v2, :cond_e

    rem-float v2, v28, v29

    .line 845
    sget v30, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v2, v2, v30

    if-gtz v2, :cond_e

    .line 847
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move/from16 v31, v5

    move/from16 v32, v10

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    goto :goto_b

    .line 850
    :cond_e
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v3, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    move/from16 v31, v5

    mul-float v5, v0, v26

    move/from16 v32, v10

    float-to-double v9, v5

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    .line 851
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v5, v13

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    iget v5, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 852
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    .line 850
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 854
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_b
    if-eqz v25, :cond_f

    mul-float v3, v23, v11

    .line 863
    iget v0, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v1, v27, v26

    float-to-double v1, v1

    .line 867
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v16

    add-float/2addr v5, v0

    iget v0, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 868
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v16

    add-float v6, v0, v1

    move-object v0, v8

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v9, v24

    const/4 v10, 0x1

    move-object v13, v4

    move v4, v5

    move/from16 v14, v31

    move v5, v6

    move/from16 v6, v27

    move-object/from16 v35, v13

    move v13, v10

    move v10, v7

    move/from16 v7, v28

    .line 864
    invoke-virtual/range {v0 .. v7}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    move-result v6

    goto :goto_c

    :cond_f
    move-object/from16 v35, v4

    move v10, v7

    move/from16 v9, v24

    move/from16 v14, v31

    const/4 v13, 0x1

    move/from16 v6, v19

    .line 874
    :goto_c
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float/2addr v1, v14

    iget v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float/2addr v2, v14

    iget v3, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v3, v14

    iget v4, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v18, :cond_17

    cmpl-float v0, v14, v19

    if-gtz v0, :cond_10

    if-eqz v25, :cond_17

    :cond_10
    if-eqz v25, :cond_12

    cmpg-float v0, v6, v19

    if-gez v0, :cond_11

    neg-float v6, v6

    .line 889
    :cond_11
    invoke-static {v14, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_d

    :cond_12
    move v5, v14

    :goto_d
    if-eq v10, v13, :cond_14

    cmpl-float v0, v5, v19

    if-nez v0, :cond_13

    goto :goto_e

    :cond_13
    mul-float v0, v26, v5

    div-float v6, v22, v0

    goto :goto_f

    :cond_14
    :goto_e
    move/from16 v6, v19

    :goto_f
    div-float v0, v6, v20

    add-float v21, v21, v0

    mul-float v21, v21, v11

    add-float v21, v12, v21

    sub-float v23, v23, v6

    mul-float v6, v23, v11

    cmpg-float v0, v6, v19

    if-gez v0, :cond_15

    move/from16 v6, v19

    :cond_15
    add-float v0, v21, v6

    cmpl-float v1, v28, v29

    if-ltz v1, :cond_16

    rem-float v28, v28, v29

    .line 902
    sget v1, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v1, v28, v1

    if-gtz v1, :cond_16

    .line 904
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move/from16 v36, v14

    goto :goto_10

    .line 907
    :cond_16
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v3, v0, v26

    float-to-double v3, v3

    move/from16 v36, v14

    .line 908
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v7, v13

    mul-float/2addr v7, v5

    add-float/2addr v2, v7

    iget v7, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 909
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v5, v3

    add-float/2addr v7, v5

    .line 907
    invoke-virtual {v1, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 911
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    neg-float v3, v6

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_10

    :cond_17
    move/from16 v36, v14

    rem-float v0, v28, v29

    .line 919
    sget v1, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    if-eqz v25, :cond_18

    div-float v28, v28, v20

    add-float v27, v27, v28

    .line 924
    iget v0, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v1, v27, v26

    float-to-double v1, v1

    .line 925
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v0, v3

    .line 926
    iget v3, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 927
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    .line 929
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_10

    .line 935
    :cond_18
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 944
    :cond_19
    :goto_10
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 946
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_11
    add-int/lit8 v3, v9, 0x1

    move/from16 v6, v19

    move/from16 v10, v32

    move-object/from16 v13, v33

    move-object/from16 v14, v34

    move-object/from16 v4, v35

    move/from16 v5, v36

    move-object/from16 v9, p2

    goto/16 :goto_2

    .line 949
    :cond_1a
    invoke-static {v15}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    return-void
.end method

.method protected drawHole(Landroid/graphics/Canvas;)V
    .locals 7

    .line 650
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    if-eqz p1, :cond_2

    .line 652
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result p1

    .line 653
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    .line 654
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v2

    .line 656
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 658
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget v4, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v5, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 664
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 665
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 667
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    .line 668
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v4

    div-float/2addr v4, v1

    mul-float/2addr p1, v4

    .line 670
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    int-to-float v4, v3

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 673
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 674
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget v4, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v5, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v5, p1, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 675
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget v1, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v4, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v4, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 676
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 679
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 681
    :cond_1
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    :cond_2
    return-void
.end method

.method protected drawRoundedSlices(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 959
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawRoundedSlicesEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 962
    :cond_0
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v1

    .line 964
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 967
    :cond_1
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v2

    .line 968
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v3

    .line 970
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v4

    .line 971
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v5

    .line 974
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v6

    mul-float/2addr v6, v5

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    sub-float v6, v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 976
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v7

    .line 977
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v8

    const/4 v9, 0x0

    .line 979
    :goto_0
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 981
    aget v10, v7, v9

    .line 983
    invoke-interface {v1, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    .line 986
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sget v12, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    sub-float v11, v5, v6

    float-to-double v11, v11

    add-float v13, v8, v10

    mul-float/2addr v13, v3

    float-to-double v13, v13

    move-object v15, v7

    move/from16 v16, v8

    .line 989
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v11

    move/from16 v17, v3

    iget v3, v4, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    move/from16 v18, v2

    float-to-double v2, v3

    add-double/2addr v7, v2

    double-to-float v2, v7

    .line 992
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v11, v7

    iget v3, v4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    float-to-double v7, v3

    add-double/2addr v11, v7

    double-to-float v3, v11

    .line 995
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v1, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 996
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    move/from16 v18, v2

    move/from16 v17, v3

    move-object v15, v7

    move/from16 v16, v8

    :goto_1
    mul-float v10, v10, v18

    add-float v8, v16, v10

    add-int/lit8 v9, v9, 0x1

    move-object v7, v15

    move/from16 v3, v17

    move/from16 v2, v18

    goto :goto_0

    .line 1001
    :cond_3
    invoke-static {v4}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 57

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 387
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v11

    .line 390
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v12

    .line 391
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v13

    .line 392
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v14

    .line 393
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v15

    .line 395
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v16

    .line 396
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v17

    .line 398
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v0

    const/high16 v18, 0x42c80000    # 100.0f

    div-float v19, v0, v18

    const/high16 v0, 0x41200000    # 10.0f

    div-float v0, v12, v0

    const v1, 0x40666666    # 3.6f

    mul-float/2addr v0, v1

    .line 401
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v1

    const/high16 v20, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    mul-float v0, v12, v19

    sub-float v0, v12, v0

    div-float v0, v0, v20

    :cond_0
    sub-float v21, v12, v0

    .line 407
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/github/mikephil/charting/data/PieData;

    .line 408
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v7

    .line 410
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v22

    .line 412
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawEntryLabelsEnabled()Z

    move-result v23

    .line 417
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 419
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v24

    const/16 v25, 0x0

    move/from16 v0, v25

    move v6, v0

    .line 421
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_1c

    .line 423
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 425
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isDrawValuesEnabled()Z

    move-result v26

    if-nez v26, :cond_1

    if-nez v23, :cond_1

    move/from16 v33, v6

    move-object/from16 v37, v7

    move-object v7, v11

    move/from16 v50, v12

    move/from16 v41, v13

    move-object/from16 v42, v14

    move-object/from16 v44, v15

    move-object v11, v8

    goto/16 :goto_12

    .line 430
    :cond_1
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getXValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-result-object v4

    .line 431
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getYValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-result-object v3

    .line 434
    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 436
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const-string v2, "Q"

    invoke-static {v1, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    .line 437
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    add-float v27, v1, v2

    .line 439
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v28

    .line 441
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v2

    .line 443
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    move/from16 v29, v0

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 444
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineWidth()F

    move-result v1

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 446
    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F

    move-result v30

    .line 448
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(Lcom/github/mikephil/charting/utils/MPPointF;)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v1

    .line 449
    iget v0, v1, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, v1, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 450
    iget v0, v1, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, v1, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v0, v25

    :goto_1
    if-ge v0, v2, :cond_1b

    .line 454
    invoke-interface {v5, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v31

    move-object/from16 v32, v8

    move-object/from16 v8, v31

    check-cast v8, Lcom/github/mikephil/charting/data/PieEntry;

    if-nez v29, :cond_2

    const/16 v31, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v31, v29, -0x1

    .line 459
    aget v31, v15, v31

    mul-float v31, v31, v16

    .line 461
    :goto_2
    aget v33, v14, v29

    const v34, 0x3c8efa35

    mul-float v35, v34, v21

    div-float v35, v30, v35

    div-float v35, v35, v20

    sub-float v33, v33, v35

    div-float v33, v33, v20

    add-float v31, v31, v33

    mul-float v31, v31, v17

    move/from16 v36, v0

    add-float v0, v13, v31

    move-object/from16 v37, v1

    .line 471
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->isUsePercentValuesEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v1

    div-float v1, v1, v22

    mul-float v1, v1, v18

    :goto_3
    move/from16 v31, v1

    goto :goto_4

    .line 472
    :cond_3
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v1

    goto :goto_3

    :goto_4
    mul-float v1, v0, v34

    move/from16 v38, v2

    float-to-double v1, v1

    move/from16 v40, v6

    move-object/from16 v39, v7

    .line 474
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v7, v6

    move/from16 v41, v13

    move-object/from16 v42, v14

    .line 475
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    if-eqz v23, :cond_4

    .line 477
    sget-object v14, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->OUTSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    if-ne v4, v14, :cond_4

    const/4 v14, 0x1

    goto :goto_5

    :cond_4
    move/from16 v14, v25

    :goto_5
    if-eqz v26, :cond_5

    .line 479
    sget-object v6, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->OUTSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    if-ne v3, v6, :cond_5

    const/4 v6, 0x1

    goto :goto_6

    :cond_5
    move/from16 v6, v25

    :goto_6
    if-eqz v23, :cond_6

    move-object/from16 v44, v15

    .line 481
    sget-object v15, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    if-ne v4, v15, :cond_7

    const/4 v15, 0x1

    goto :goto_7

    :cond_6
    move-object/from16 v44, v15

    :cond_7
    move/from16 v15, v25

    :goto_7
    if-eqz v26, :cond_8

    move-object/from16 v45, v4

    .line 483
    sget-object v4, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    if-ne v3, v4, :cond_9

    const/16 v43, 0x1

    goto :goto_8

    :cond_8
    move-object/from16 v45, v4

    :cond_9
    move/from16 v43, v25

    :goto_8
    if-nez v14, :cond_b

    if-eqz v6, :cond_a

    goto :goto_9

    :cond_a
    move-object/from16 v54, v11

    move/from16 v50, v12

    move/from16 v53, v13

    move/from16 v55, v15

    move-object/from16 v11, v32

    move/from16 v12, v36

    move-object/from16 v51, v37

    move/from16 v35, v38

    move-object/from16 v37, v39

    move/from16 v33, v40

    move-object/from16 v38, v45

    move-object/from16 v36, v3

    move-object v13, v5

    move/from16 v39, v7

    move-object v15, v8

    goto/16 :goto_e

    .line 488
    :cond_b
    :goto_9
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart1Length()F

    move-result v4

    .line 489
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart2Length()F

    move-result v33

    .line 490
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart1OffsetPercentage()F

    move-result v34

    div-float v34, v34, v18

    move-object/from16 v46, v3

    .line 497
    iget-object v3, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    mul-float v3, v12, v19

    sub-float v35, v12, v3

    mul-float v35, v35, v34

    add-float v35, v35, v3

    goto :goto_a

    :cond_c
    mul-float v35, v12, v34

    .line 504
    :goto_a
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isValueLineVariableLength()Z

    move-result v3

    if-eqz v3, :cond_d

    mul-float v33, v33, v21

    .line 505
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v33, v33, v1

    goto :goto_b

    :cond_d
    mul-float v33, v33, v21

    :goto_b
    mul-float v1, v35, v7

    .line 509
    iget v2, v11, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v1, v2

    mul-float v35, v35, v13

    .line 510
    iget v2, v11, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v2, v35, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    mul-float v3, v3, v21

    mul-float v4, v3, v7

    move/from16 v47, v7

    .line 512
    iget v7, v11, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v7, v4

    mul-float/2addr v3, v13

    .line 513
    iget v4, v11, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v34, v3, v4

    float-to-double v3, v0

    const-wide v48, 0x4076800000000000L    # 360.0

    rem-double v3, v3, v48

    const-wide v48, 0x4056800000000000L    # 90.0

    cmpl-double v0, v3, v48

    if-ltz v0, :cond_f

    const-wide v48, 0x4070e00000000000L    # 270.0

    cmpg-double v0, v3, v48

    if-gtz v0, :cond_f

    sub-float v0, v7, v33

    .line 519
    iget-object v3, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v14, :cond_e

    .line 522
    iget-object v3, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_e
    sub-float v3, v0, v24

    move/from16 v33, v0

    move v4, v3

    goto :goto_c

    :cond_f
    add-float v33, v7, v33

    .line 529
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v14, :cond_10

    .line 532
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_10
    add-float v0, v33, v24

    move v4, v0

    .line 538
    :goto_c
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineColor()I

    move-result v0

    const v3, 0x112233

    if-eq v0, v3, :cond_11

    .line 539
    iget-object v3, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    move/from16 v50, v12

    move/from16 v12, v36

    move-object v0, v10

    move-object/from16 v51, v37

    move/from16 v35, v38

    move-object/from16 v37, v3

    move-object/from16 v36, v46

    move v3, v7

    move/from16 v52, v4

    move-object/from16 v38, v45

    move/from16 v4, v34

    move/from16 v53, v13

    move-object v13, v5

    move-object/from16 v5, v37

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 540
    iget-object v5, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    move v1, v7

    move/from16 v2, v34

    move/from16 v3, v33

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_11
    move/from16 v52, v4

    move/from16 v50, v12

    move/from16 v53, v13

    move/from16 v12, v36

    move-object/from16 v51, v37

    move/from16 v35, v38

    move-object/from16 v38, v45

    move-object/from16 v36, v46

    move-object v13, v5

    :goto_d
    if-eqz v14, :cond_12

    if-eqz v6, :cond_12

    const/4 v5, 0x0

    .line 553
    invoke-interface {v13, v12}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v14

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v28

    move/from16 v3, v31

    move-object v4, v8

    move/from16 v33, v40

    move/from16 v6, v52

    move-object/from16 v37, v39

    move/from16 v39, v47

    move/from16 v7, v34

    move-object/from16 v54, v11

    move/from16 v55, v15

    move-object/from16 v11, v32

    move-object v15, v8

    move v8, v14

    .line 546
    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 555
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v0

    if-ge v12, v0, :cond_14

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 556
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    add-float v1, v34, v27

    move/from16 v7, v52

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_e

    :cond_12
    move-object/from16 v54, v11

    move/from16 v55, v15

    move-object/from16 v11, v32

    move-object/from16 v37, v39

    move/from16 v33, v40

    move/from16 v39, v47

    move/from16 v7, v52

    move-object v15, v8

    if-eqz v14, :cond_13

    .line 560
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v0

    if-ge v12, v0, :cond_14

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 561
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    div-float v1, v27, v20

    add-float v1, v34, v1

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_e

    :cond_13
    if-eqz v6, :cond_14

    const/4 v5, 0x0

    div-float v0, v27, v20

    add-float v8, v34, v0

    .line 566
    invoke-interface {v13, v12}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v14

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v28

    move/from16 v3, v31

    move-object v4, v15

    move v6, v7

    move v7, v8

    move v8, v14

    .line 565
    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    :cond_14
    :goto_e
    if-nez v55, :cond_16

    if-eqz v43, :cond_15

    goto :goto_f

    :cond_15
    move-object/from16 v56, v54

    goto/16 :goto_10

    :cond_16
    :goto_f
    mul-float v7, v21, v39

    move-object/from16 v14, v54

    .line 572
    iget v0, v14, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v8, v7, v0

    mul-float v0, v21, v53

    .line 573
    iget v1, v14, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v32, v0, v1

    .line 575
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v55, :cond_17

    if-eqz v43, :cond_17

    const/4 v5, 0x0

    .line 580
    invoke-interface {v13, v12}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v34

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v28

    move/from16 v3, v31

    move-object v4, v15

    move v6, v8

    move/from16 v7, v32

    move-object/from16 v56, v14

    move v14, v8

    move/from16 v8, v34

    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 582
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v0

    if-ge v12, v0, :cond_19

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 583
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    add-float v1, v32, v27

    invoke-virtual {v9, v10, v0, v14, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_10

    :cond_17
    move-object/from16 v56, v14

    move v14, v8

    if-eqz v55, :cond_18

    .line 587
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v0

    if-ge v12, v0, :cond_19

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 588
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    div-float v1, v27, v20

    add-float v1, v32, v1

    invoke-virtual {v9, v10, v0, v14, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_10

    :cond_18
    if-eqz v43, :cond_19

    const/4 v5, 0x0

    div-float v0, v27, v20

    add-float v7, v32, v0

    .line 592
    invoke-interface {v13, v12}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v8

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v28

    move/from16 v3, v31

    move-object v4, v15

    move v6, v14

    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 596
    :cond_19
    :goto_10
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isDrawIconsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 598
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v6, v51

    .line 600
    iget v0, v6, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v0, v21, v0

    mul-float v0, v0, v39

    move-object/from16 v7, v56

    iget v2, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v0, v2

    .line 601
    iget v2, v6, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v2, v21, v2

    mul-float v2, v2, v53

    iget v3, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v2, v3

    .line 602
    iget v3, v6, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v2, v3

    float-to-int v3, v0

    float-to-int v4, v2

    .line 609
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 610
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    move-object v0, v10

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v8

    .line 604
    invoke-static/range {v0 .. v5}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_11

    :cond_1a
    move-object/from16 v6, v51

    move-object/from16 v7, v56

    :goto_11
    add-int/lit8 v29, v29, 0x1

    add-int/lit8 v0, v12, 0x1

    move-object v1, v6

    move-object v8, v11

    move-object v5, v13

    move/from16 v6, v33

    move/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v38

    move/from16 v13, v41

    move-object/from16 v14, v42

    move-object/from16 v15, v44

    move/from16 v12, v50

    move-object v11, v7

    move-object/from16 v7, v37

    goto/16 :goto_1

    :cond_1b
    move/from16 v33, v6

    move-object/from16 v37, v7

    move-object v7, v11

    move/from16 v50, v12

    move/from16 v41, v13

    move-object/from16 v42, v14

    move-object/from16 v44, v15

    move-object v6, v1

    move-object v11, v8

    .line 616
    invoke-static {v6}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    move/from16 v0, v29

    :goto_12
    add-int/lit8 v6, v33, 0x1

    move-object v8, v11

    move/from16 v13, v41

    move-object/from16 v14, v42

    move-object/from16 v15, v44

    move/from16 v12, v50

    move-object v11, v7

    move-object/from16 v7, v37

    goto/16 :goto_0

    :cond_1c
    move-object v7, v11

    .line 618
    invoke-static {v7}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 619
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getPaintCenterText()Landroid/text/TextPaint;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintEntryLabels()Landroid/graphics/Paint;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintHole()Landroid/graphics/Paint;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintTransparentCircle()Landroid/graphics/Paint;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F
    .locals 3

    .line 203
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isAutomaticallyDisableSliceSpacingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result p1

    return p1

    .line 206
    :cond_0
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getSmallestContentExtension()F

    move-result v1

    div-float/2addr v0, v1

    .line 207
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getYMin()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 209
    :cond_1
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result p1

    :goto_0
    return p1
.end method

.method public initBuffers()V
    .locals 0

    return-void
.end method

.method public releaseBitmap()V
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1010
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 1013
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1014
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1015
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method
