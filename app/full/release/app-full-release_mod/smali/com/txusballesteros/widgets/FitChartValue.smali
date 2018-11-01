.class public Lcom/txusballesteros/widgets/FitChartValue;
.super Ljava/lang/Object;
.source "FitChartValue.java"


# instance fields
.field private final color:I

.field private paint:Landroid/graphics/Paint;

.field private startAngle:F

.field private sweepAngle:F

.field private final value:F


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/txusballesteros/widgets/FitChartValue;->value:F

    .line 71
    iput p2, p0, Lcom/txusballesteros/widgets/FitChartValue;->color:I

    return-void
.end method


# virtual methods
.method getColor()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/txusballesteros/widgets/FitChartValue;->color:I

    return v0
.end method

.method getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/txusballesteros/widgets/FitChartValue;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method getStartAngle()F
    .locals 1

    .line 58
    iget v0, p0, Lcom/txusballesteros/widgets/FitChartValue;->startAngle:F

    return v0
.end method

.method getSweepAngle()F
    .locals 1

    .line 62
    iget v0, p0, Lcom/txusballesteros/widgets/FitChartValue;->sweepAngle:F

    return v0
.end method

.method getValue()F
    .locals 1

    .line 37
    iget v0, p0, Lcom/txusballesteros/widgets/FitChartValue;->value:F

    return v0
.end method

.method setPaint(Landroid/graphics/Paint;)V
    .locals 1

    .line 45
    iput-object p1, p0, Lcom/txusballesteros/widgets/FitChartValue;->paint:Landroid/graphics/Paint;

    .line 46
    iget-object p1, p0, Lcom/txusballesteros/widgets/FitChartValue;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/txusballesteros/widgets/FitChartValue;->color:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method setStartAngle(F)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/txusballesteros/widgets/FitChartValue;->startAngle:F

    return-void
.end method

.method setSweepAngle(F)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/txusballesteros/widgets/FitChartValue;->sweepAngle:F

    return-void
.end method
