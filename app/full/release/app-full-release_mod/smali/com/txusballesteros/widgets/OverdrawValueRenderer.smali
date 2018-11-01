.class Lcom/txusballesteros/widgets/OverdrawValueRenderer;
.super Lcom/txusballesteros/widgets/BaseRenderer;
.source "OverdrawValueRenderer.java"

# interfaces
.implements Lcom/txusballesteros/widgets/Renderer;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Lcom/txusballesteros/widgets/FitChartValue;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/txusballesteros/widgets/BaseRenderer;-><init>(Landroid/graphics/RectF;Lcom/txusballesteros/widgets/FitChartValue;)V

    return-void
.end method


# virtual methods
.method public buildPath(FF)Landroid/graphics/Path;
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/OverdrawValueRenderer;->getValue()Lcom/txusballesteros/widgets/FitChartValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/txusballesteros/widgets/FitChartValue;->getStartAngle()F

    move-result p2

    invoke-virtual {p0}, Lcom/txusballesteros/widgets/OverdrawValueRenderer;->getValue()Lcom/txusballesteros/widgets/FitChartValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txusballesteros/widgets/FitChartValue;->getSweepAngle()F

    move-result v0

    add-float/2addr p2, v0

    const/high16 v0, -0x3d4c0000    # -90.0f

    sub-float/2addr p2, v0

    mul-float/2addr p2, p1

    .line 41
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/txusballesteros/widgets/OverdrawValueRenderer;->getDrawingArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    return-object p1
.end method
