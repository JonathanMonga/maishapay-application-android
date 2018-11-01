.class public Lcom/rd/draw/drawer/type/FillDrawer;
.super Lcom/rd/draw/drawer/type/BaseDrawer;
.source "FillDrawer.java"


# instance fields
.field private strokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/rd/draw/drawer/type/BaseDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/rd/draw/drawer/type/FillDrawer;->strokePaint:Landroid/graphics/Paint;

    .line 18
    iget-object p1, p0, Lcom/rd/draw/drawer/type/FillDrawer;->strokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    iget-object p1, p0, Lcom/rd/draw/drawer/type/FillDrawer;->strokePaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;III)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    instance-of v0, p2, Lcom/rd/animation/data/type/FillAnimationValue;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    check-cast p2, Lcom/rd/animation/data/type/FillAnimationValue;

    .line 34
    iget-object v0, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v0

    .line 35
    iget-object v1, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v1

    int-to-float v1, v1

    .line 36
    iget-object v2, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getStroke()I

    move-result v2

    .line 38
    iget-object v3, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v3}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v3

    .line 39
    iget-object v4, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v4

    .line 40
    iget-object v5, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v5}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v5

    .line 42
    iget-object v6, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v6}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v6

    if-eqz v6, :cond_2

    if-ne p3, v4, :cond_1

    .line 44
    invoke-virtual {p2}, Lcom/rd/animation/data/type/FillAnimationValue;->getColor()I

    move-result v0

    .line 45
    invoke-virtual {p2}, Lcom/rd/animation/data/type/FillAnimationValue;->getRadius()I

    move-result p3

    int-to-float v1, p3

    .line 46
    invoke-virtual {p2}, Lcom/rd/animation/data/type/FillAnimationValue;->getStroke()I

    move-result v2

    goto :goto_0

    :cond_1
    if-ne p3, v3, :cond_4

    .line 49
    invoke-virtual {p2}, Lcom/rd/animation/data/type/FillAnimationValue;->getColorReverse()I

    move-result v0

    .line 50
    invoke-virtual {p2}, Lcom/rd/animation/data/type/FillAnimationValue;->getRadiusReverse()I

    move-result p3

    int-to-float v1, p3

    .line 51
    invoke-virtual {p2}, Lcom/rd/animation/data/type/FillAnimationValue;->getStrokeReverse()I

    move-result v2

    goto :goto_0

    :cond_2
    if-ne p3, v3, :cond_3

    .line 56
    invoke-virtual {p2}, Lcom/rd/animation/data/type/FillAnimationValue;->getColor()I

    move-result v0

    .line 57
    invoke-virtual {p2}, Lcom/rd/animation/data/type/FillAnimationValue;->getRadius()I

    move-result p3

    int-to-float v1, p3

    .line 58
    invoke-virtual {p2}, Lcom/rd/animation/data/type/FillAnimationValue;->getStroke()I

    move-result v2

    goto :goto_0

    :cond_3
    if-ne p3, v5, :cond_4

    .line 61
    invoke-virtual {p2}, Lcom/rd/animation/data/type/FillAnimationValue;->getColorReverse()I

    move-result v0

    .line 62
    invoke-virtual {p2}, Lcom/rd/animation/data/type/FillAnimationValue;->getRadiusReverse()I

    move-result p3

    int-to-float v1, p3

    .line 63
    invoke-virtual {p2}, Lcom/rd/animation/data/type/FillAnimationValue;->getStrokeReverse()I

    move-result v2

    .line 67
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/rd/draw/drawer/type/FillDrawer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object p2, p0, Lcom/rd/draw/drawer/type/FillDrawer;->strokePaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {p3}, Lcom/rd/draw/data/Indicator;->getStroke()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float p2, p4

    int-to-float p3, p5

    .line 69
    iget-object p4, p0, Lcom/rd/draw/drawer/type/FillDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {p4}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result p4

    int-to-float p4, p4

    iget-object p5, p0, Lcom/rd/draw/drawer/type/FillDrawer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 71
    iget-object p4, p0, Lcom/rd/draw/drawer/type/FillDrawer;->strokePaint:Landroid/graphics/Paint;

    int-to-float p5, v2

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object p4, p0, Lcom/rd/draw/drawer/type/FillDrawer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v1, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
