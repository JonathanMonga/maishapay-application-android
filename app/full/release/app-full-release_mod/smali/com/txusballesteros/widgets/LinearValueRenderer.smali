.class Lcom/txusballesteros/widgets/LinearValueRenderer;
.super Lcom/txusballesteros/widgets/BaseRenderer;
.source "LinearValueRenderer.java"

# interfaces
.implements Lcom/txusballesteros/widgets/Renderer;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Lcom/txusballesteros/widgets/FitChartValue;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/txusballesteros/widgets/BaseRenderer;-><init>(Landroid/graphics/RectF;Lcom/txusballesteros/widgets/FitChartValue;)V

    return-void
.end method

.method private calculateSweepAngle(FLcom/txusballesteros/widgets/FitChartValue;)F
    .locals 2

    .line 48
    invoke-virtual {p2}, Lcom/txusballesteros/widgets/FitChartValue;->getStartAngle()F

    move-result v0

    invoke-virtual {p2}, Lcom/txusballesteros/widgets/FitChartValue;->getSweepAngle()F

    move-result v1

    add-float/2addr v0, v1

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    .line 50
    invoke-virtual {p2}, Lcom/txusballesteros/widgets/FitChartValue;->getStartAngle()F

    move-result p2

    sub-float/2addr p1, p2

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p2}, Lcom/txusballesteros/widgets/FitChartValue;->getSweepAngle()F

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public buildPath(FF)Landroid/graphics/Path;
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/LinearValueRenderer;->getValue()Lcom/txusballesteros/widgets/FitChartValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txusballesteros/widgets/FitChartValue;->getStartAngle()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    .line 39
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/LinearValueRenderer;->getValue()Lcom/txusballesteros/widgets/FitChartValue;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/txusballesteros/widgets/LinearValueRenderer;->calculateSweepAngle(FLcom/txusballesteros/widgets/FitChartValue;)F

    move-result p2

    .line 41
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/LinearValueRenderer;->getDrawingArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/txusballesteros/widgets/LinearValueRenderer;->getValue()Lcom/txusballesteros/widgets/FitChartValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txusballesteros/widgets/FitChartValue;->getStartAngle()F

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
