.class public Lcom/github/mikephil/charting/components/YAxis;
.super Lcom/github/mikephil/charting/components/AxisBase;
.source "YAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/YAxis$AxisDependency;,
        Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    }
.end annotation


# instance fields
.field private mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field private mDrawBottomYLabelEntry:Z

.field private mDrawTopYLabelEntry:Z

.field protected mDrawZeroLine:Z

.field protected mInverted:Z

.field protected mMaxWidth:F

.field protected mMinWidth:F

.field private mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

.field protected mSpacePercentBottom:F

.field protected mSpacePercentTop:F

.field protected mZeroLineColor:I

.field protected mZeroLineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 102
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawBottomYLabelEntry:Z

    .line 29
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    .line 39
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawZeroLine:Z

    const v0, -0x777778

    .line 44
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineWidth:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 54
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    .line 59
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    .line 64
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 90
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    .line 105
    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 106
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mYOffset:F

    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawBottomYLabelEntry:Z

    .line 29
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    .line 39
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawZeroLine:Z

    const v0, -0x777778

    .line 44
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineWidth:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 54
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    .line 59
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    .line 64
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 90
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    .line 111
    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 112
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mYOffset:F

    return-void
.end method


# virtual methods
.method public calculate(FF)V
    .locals 4

    .line 364
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMin:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    .line 365
    :cond_0
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMax:Z

    if-eqz v0, :cond_1

    iget p2, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    :cond_1
    sub-float v0, p2, p1

    .line 368
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p2, v1

    sub-float/2addr p1, v1

    .line 377
    :cond_2
    iget-boolean v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMin:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-nez v1, :cond_3

    div-float v1, v0, v2

    .line 379
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getSpaceBottom()F

    move-result v3

    mul-float/2addr v1, v3

    sub-float/2addr p1, v1

    .line 380
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    .line 384
    :cond_3
    iget-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMax:Z

    if-nez p1, :cond_4

    div-float/2addr v0, v2

    .line 386
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getSpaceTop()F

    move-result p1

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    .line 387
    iput p2, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    .line 391
    :cond_4
    iget p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    iget p2, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    return-void
.end method

.method public getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object v0
.end method

.method public getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    return-object v0
.end method

.method public getMaxWidth()F
    .locals 1

    .line 139
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .line 123
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    return v0
.end method

.method public getRequiredHeightSpace(Landroid/graphics/Paint;)F
    .locals 2

    .line 341
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 343
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getLongestLabel()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {p1, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getYOffset()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    return p1
.end method

.method public getRequiredWidthSpace(Landroid/graphics/Paint;)F
    .locals 7

    .line 314
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 316
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getLongestLabel()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {p1, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getXOffset()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    .line 319
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getMinWidth()F

    move-result v0

    .line 320
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getMaxWidth()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    .line 323
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    :cond_0
    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 326
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    :cond_1
    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    .line 328
    :goto_0
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public getSpaceBottom()F
    .locals 1

    .line 263
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    return v0
.end method

.method public getSpaceTop()F
    .locals 1

    .line 245
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    return v0
.end method

.method public getZeroLineColor()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineColor:I

    return v0
.end method

.method public getZeroLineWidth()F
    .locals 1

    .line 294
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineWidth:F

    return v0
.end method

.method public isDrawBottomYLabelEntryEnabled()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawBottomYLabelEntry:Z

    return v0
.end method

.method public isDrawTopYLabelEntryEnabled()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    return v0
.end method

.method public isDrawZeroLineEnabled()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawZeroLine:Z

    return v0
.end method

.method public isInverted()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    return v0
.end method

.method public needsOffset()Z
    .locals 2

    .line 353
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLabelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDrawTopYLabelEntry(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    return-void
.end method

.method public setDrawZeroLine(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawZeroLine:Z

    return-void
.end method

.method public setInverted(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    return-void
.end method

.method public setMaxWidth(F)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    return-void
.end method

.method public setMinWidth(F)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    return-void
.end method

.method public setPosition(Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    return-void
.end method

.method public setSpaceBottom(F)V
    .locals 0

    .line 254
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    return-void
.end method

.method public setSpaceTop(F)V
    .locals 0

    .line 236
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    return-void
.end method

.method public setStartAtZero(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 225
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->resetAxisMinimum()V

    :goto_0
    return-void
.end method

.method public setZeroLineColor(I)V
    .locals 0

    .line 290
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineColor:I

    return-void
.end method

.method public setZeroLineWidth(F)V
    .locals 0

    .line 303
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineWidth:F

    return-void
.end method
