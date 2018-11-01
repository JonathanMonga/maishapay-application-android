.class Lcom/txusballesteros/widgets/RendererFactory;
.super Ljava/lang/Object;
.source "RendererFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRenderer(Lcom/txusballesteros/widgets/AnimationMode;Lcom/txusballesteros/widgets/FitChartValue;Landroid/graphics/RectF;)Lcom/txusballesteros/widgets/Renderer;
    .locals 1

    .line 31
    sget-object v0, Lcom/txusballesteros/widgets/AnimationMode;->LINEAR:Lcom/txusballesteros/widgets/AnimationMode;

    if-ne p0, v0, :cond_0

    .line 32
    new-instance p0, Lcom/txusballesteros/widgets/LinearValueRenderer;

    invoke-direct {p0, p2, p1}, Lcom/txusballesteros/widgets/LinearValueRenderer;-><init>(Landroid/graphics/RectF;Lcom/txusballesteros/widgets/FitChartValue;)V

    return-object p0

    .line 34
    :cond_0
    new-instance p0, Lcom/txusballesteros/widgets/OverdrawValueRenderer;

    invoke-direct {p0, p2, p1}, Lcom/txusballesteros/widgets/OverdrawValueRenderer;-><init>(Landroid/graphics/RectF;Lcom/txusballesteros/widgets/FitChartValue;)V

    return-object p0
.end method
