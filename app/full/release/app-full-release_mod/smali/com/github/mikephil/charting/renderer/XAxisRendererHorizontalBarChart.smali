.class public Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;
.super Lcom/github/mikephil/charting/renderer/XAxisRenderer;
.source "XAxisRendererHorizontalBarChart.java"


# instance fields
.field protected mChart:Lcom/github/mikephil/charting/charts/BarChart;

.field protected mRenderLimitLinesPathBuffer:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 210
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mRenderLimitLinesPathBuffer:Landroid/graphics/Path;

    .line 31
    iput-object p4, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    return-void
.end method


# virtual methods
.method public computeAxis(FFZ)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOutY()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result p2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 46
    iget-wide v0, p2, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p3, v0

    .line 47
    iget-wide v0, p1, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v0, v0

    goto :goto_0

    .line 50
    :cond_0
    iget-wide v0, p1, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p3, v0

    .line 51
    iget-wide v0, p2, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v0, v0

    .line 54
    :goto_0
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 55
    invoke-static {p2}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    move p1, p3

    move p2, v0

    .line 58
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->computeAxisValues(FF)V

    return-void
.end method

.method protected computeSize()V
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 65
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getLongestLabel()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-static {v1, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v0

    .line 71
    iget v1, v0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getXOffset()F

    move-result v2

    const/high16 v3, 0x40600000    # 3.5f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 72
    iget v2, v0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    .line 74
    iget v0, v0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 77
    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/XAxis;->getLabelRotationAngle()F

    move-result v4

    .line 74
    invoke-static {v0, v2, v4}, Lcom/github/mikephil/charting/utils/Utils;->getSizeOfRotatedRectangleByDegrees(FFF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v0

    .line 79
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v4, Lcom/github/mikephil/charting/components/XAxis;->mLabelWidth:I

    .line 80
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Lcom/github/mikephil/charting/components/XAxis;->mLabelHeight:I

    .line 81
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/XAxis;->getXOffset()F

    move-result v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedWidth:I

    .line 82
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    .line 84
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/FSize;->recycleInstance(Lcom/github/mikephil/charting/utils/FSize;)V

    return-void
.end method

.method protected drawGridLine(Landroid/graphics/Canvas;FFLandroid/graphics/Path;)V
    .locals 0

    .line 175
    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result p2

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 176
    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result p2

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 179
    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 181
    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method protected drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 10

    .line 136
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getLabelRotationAngle()F

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->isCenterAxisLabelsEnabled()Z

    move-result v1

    .line 139
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mEntryCount:I

    mul-int/lit8 v2, v2, 0x2

    new-array v8, v2, [F

    const/4 v2, 0x0

    move v3, v2

    .line 141
    :goto_0
    array-length v4, v8

    if-ge v3, v4, :cond_1

    if-eqz v1, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 145
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v5, v5, Lcom/github/mikephil/charting/components/XAxis;->mCenteredEntries:[F

    div-int/lit8 v6, v3, 0x2

    aget v5, v5, v6

    aput v5, v8, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 147
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v5, v5, Lcom/github/mikephil/charting/components/XAxis;->mEntries:[F

    div-int/lit8 v6, v3, 0x2

    aget v5, v5, v6

    aput v5, v8, v4

    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    move v9, v2

    .line 153
    :goto_2
    array-length v1, v8

    if-ge v9, v1, :cond_3

    add-int/lit8 v1, v9, 0x1

    .line 155
    aget v5, v8, v1

    .line 157
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mEntries:[F

    div-int/lit8 v3, v9, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-interface {v1, v2, v3}, Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v6, p3

    move v7, v0

    .line 160
    invoke-virtual/range {v1 .. v7}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;F)V

    :cond_2
    add-int/lit8 v9, v9, 0x2

    goto :goto_2

    :cond_3
    return-void
.end method

.method public getGridClippingRect()Landroid/graphics/RectF;
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mGridClippingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 168
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mGridClippingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/AxisBase;->getGridLineWidth()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 169
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mGridClippingRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public renderAxisLabels(Landroid/graphics/Canvas;)V
    .locals 7

    .line 90
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isDrawLabelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getXOffset()F

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 96
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 97
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 99
    invoke-static {v1, v1}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v3

    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v3, v4, :cond_1

    .line 102
    iput v1, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 103
    iput v5, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 104
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v3

    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v3, v4, :cond_2

    .line 107
    iput v6, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 108
    iput v5, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 109
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v3

    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v3, v4, :cond_3

    .line 112
    iput v6, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 113
    iput v5, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 114
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_0

    .line 116
    :cond_3
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v3

    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v3, v4, :cond_4

    .line 117
    iput v6, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 118
    iput v5, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 119
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_0

    .line 122
    :cond_4
    iput v1, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 123
    iput v5, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 124
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 125
    iput v6, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 126
    iput v5, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 127
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 130
    :goto_0
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public renderAxisLine(Landroid/graphics/Canvas;)V
    .locals 7

    .line 187
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isDrawAxisLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getAxisLineColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getAxisLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 194
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 195
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v0, v1, :cond_2

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 197
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v4

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 198
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v5

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 196
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 202
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 203
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v0, v1, :cond_4

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 205
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v4

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 206
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v5

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 204
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public renderLimitLines(Landroid/graphics/Canvas;)V
    .locals 13

    .line 220
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getLimitLines()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 222
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_3

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mRenderLimitLinesBuffer:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 226
    aput v3, v1, v2

    const/4 v4, 0x1

    .line 227
    aput v3, v1, v4

    .line 229
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mRenderLimitLinesPathBuffer:Landroid/graphics/Path;

    .line 230
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 232
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 234
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/components/LimitLine;

    .line 236
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_2

    .line 239
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 240
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLineClippingRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 241
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLineClippingRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v8, v3, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 242
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLineClippingRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 244
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 245
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getLineColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 247
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 249
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getLimit()F

    move-result v8

    aput v8, v1, v4

    .line 251
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v8, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 253
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v8

    aget v9, v1, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 254
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v8

    aget v9, v1, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 257
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 260
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getLabel()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    const-string v9, ""

    .line 263
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 265
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getTextStyle()Landroid/graphics/Paint$Style;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 266
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 267
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getTextColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 269
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getTextSize()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 271
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-static {v9, v8}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40800000    # 4.0f

    .line 272
    invoke-static {v10}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v10

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getXOffset()F

    move-result v11

    add-float/2addr v10, v11

    .line 273
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v11

    add-float/2addr v11, v9

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getYOffset()F

    move-result v12

    add-float/2addr v11, v12

    .line 275
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getLabelPosition()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    move-result-object v6

    .line 277
    sget-object v12, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v6, v12, :cond_2

    .line 279
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 280
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 281
    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v6

    sub-float/2addr v6, v10

    aget v10, v1, v4

    sub-float/2addr v10, v11

    add-float/2addr v10, v9

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 280
    invoke-virtual {p1, v8, v6, v10, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 284
    :cond_2
    sget-object v12, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_BOTTOM:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v6, v12, :cond_3

    .line 286
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 287
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 288
    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v6

    sub-float/2addr v6, v10

    aget v9, v1, v4

    add-float/2addr v9, v11

    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 287
    invoke-virtual {p1, v8, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 291
    :cond_3
    sget-object v12, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->LEFT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v6, v12, :cond_4

    .line 293
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 294
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 295
    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v6

    add-float/2addr v6, v10

    aget v10, v1, v4

    sub-float/2addr v10, v11

    add-float/2addr v10, v9

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 294
    invoke-virtual {p1, v8, v6, v10, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 300
    :cond_4
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 301
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 302
    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v6

    add-float/2addr v6, v10

    aget v9, v1, v4

    add-float/2addr v9, v11

    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 301
    invoke-virtual {p1, v8, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 307
    :cond_5
    :goto_1
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void

    :cond_7
    :goto_3
    return-void
.end method
