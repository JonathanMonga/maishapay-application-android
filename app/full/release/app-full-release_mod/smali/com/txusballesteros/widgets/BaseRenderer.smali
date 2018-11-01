.class abstract Lcom/txusballesteros/widgets/BaseRenderer;
.super Ljava/lang/Object;
.source "BaseRenderer.java"


# instance fields
.field private final drawingArea:Landroid/graphics/RectF;

.field private final value:Lcom/txusballesteros/widgets/FitChartValue;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Lcom/txusballesteros/widgets/FitChartValue;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/txusballesteros/widgets/BaseRenderer;->drawingArea:Landroid/graphics/RectF;

    .line 43
    iput-object p2, p0, Lcom/txusballesteros/widgets/BaseRenderer;->value:Lcom/txusballesteros/widgets/FitChartValue;

    return-void
.end method


# virtual methods
.method getDrawingArea()Landroid/graphics/RectF;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/txusballesteros/widgets/BaseRenderer;->drawingArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method getValue()Lcom/txusballesteros/widgets/FitChartValue;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/txusballesteros/widgets/BaseRenderer;->value:Lcom/txusballesteros/widgets/FitChartValue;

    return-object v0
.end method
