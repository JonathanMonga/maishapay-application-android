.class public Lcom/rd/draw/drawer/Drawer;
.super Ljava/lang/Object;
.source "Drawer.java"


# instance fields
.field private basicDrawer:Lcom/rd/draw/drawer/type/BasicDrawer;

.field private colorDrawer:Lcom/rd/draw/drawer/type/ColorDrawer;

.field private coordinateX:I

.field private coordinateY:I

.field private dropDrawer:Lcom/rd/draw/drawer/type/DropDrawer;

.field private fillDrawer:Lcom/rd/draw/drawer/type/FillDrawer;

.field private position:I

.field private scaleDownDrawer:Lcom/rd/draw/drawer/type/ScaleDownDrawer;

.field private scaleDrawer:Lcom/rd/draw/drawer/type/ScaleDrawer;

.field private slideDrawer:Lcom/rd/draw/drawer/type/SlideDrawer;

.field private swapDrawer:Lcom/rd/draw/drawer/type/SwapDrawer;

.field private thinWormDrawer:Lcom/rd/draw/drawer/type/ThinWormDrawer;

.field private wormDrawer:Lcom/rd/draw/drawer/type/WormDrawer;


# direct methods
.method public constructor <init>(Lcom/rd/draw/data/Indicator;)V
    .locals 2
    .param p1    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 29
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    new-instance v1, Lcom/rd/draw/drawer/type/BasicDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/BasicDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->basicDrawer:Lcom/rd/draw/drawer/type/BasicDrawer;

    .line 33
    new-instance v1, Lcom/rd/draw/drawer/type/ColorDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/ColorDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->colorDrawer:Lcom/rd/draw/drawer/type/ColorDrawer;

    .line 34
    new-instance v1, Lcom/rd/draw/drawer/type/ScaleDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/ScaleDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->scaleDrawer:Lcom/rd/draw/drawer/type/ScaleDrawer;

    .line 35
    new-instance v1, Lcom/rd/draw/drawer/type/WormDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/WormDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->wormDrawer:Lcom/rd/draw/drawer/type/WormDrawer;

    .line 36
    new-instance v1, Lcom/rd/draw/drawer/type/SlideDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/SlideDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->slideDrawer:Lcom/rd/draw/drawer/type/SlideDrawer;

    .line 37
    new-instance v1, Lcom/rd/draw/drawer/type/FillDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/FillDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->fillDrawer:Lcom/rd/draw/drawer/type/FillDrawer;

    .line 38
    new-instance v1, Lcom/rd/draw/drawer/type/ThinWormDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/ThinWormDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->thinWormDrawer:Lcom/rd/draw/drawer/type/ThinWormDrawer;

    .line 39
    new-instance v1, Lcom/rd/draw/drawer/type/DropDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/DropDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->dropDrawer:Lcom/rd/draw/drawer/type/DropDrawer;

    .line 40
    new-instance v1, Lcom/rd/draw/drawer/type/SwapDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/SwapDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->swapDrawer:Lcom/rd/draw/drawer/type/SwapDrawer;

    .line 41
    new-instance v1, Lcom/rd/draw/drawer/type/ScaleDownDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/ScaleDownDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->scaleDownDrawer:Lcom/rd/draw/drawer/type/ScaleDownDrawer;

    return-void
.end method


# virtual methods
.method public drawBasic(Landroid/graphics/Canvas;Z)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->colorDrawer:Lcom/rd/draw/drawer/type/ColorDrawer;

    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/rd/draw/drawer/Drawer;->basicDrawer:Lcom/rd/draw/drawer/type/BasicDrawer;

    iget v3, p0, Lcom/rd/draw/drawer/Drawer;->position:I

    iget v5, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v6, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/rd/draw/drawer/type/BasicDrawer;->draw(Landroid/graphics/Canvas;IZII)V

    :cond_0
    return-void
.end method

.method public drawColor(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->colorDrawer:Lcom/rd/draw/drawer/type/ColorDrawer;

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/rd/draw/drawer/Drawer;->colorDrawer:Lcom/rd/draw/drawer/type/ColorDrawer;

    iget v4, p0, Lcom/rd/draw/drawer/Drawer;->position:I

    iget v5, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v6, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/rd/draw/drawer/type/ColorDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;III)V

    :cond_0
    return-void
.end method

.method public drawDrop(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->dropDrawer:Lcom/rd/draw/drawer/type/DropDrawer;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->dropDrawer:Lcom/rd/draw/drawer/type/DropDrawer;

    iget v1, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v2, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/rd/draw/drawer/type/DropDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;II)V

    :cond_0
    return-void
.end method

.method public drawFill(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->fillDrawer:Lcom/rd/draw/drawer/type/FillDrawer;

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/rd/draw/drawer/Drawer;->fillDrawer:Lcom/rd/draw/drawer/type/FillDrawer;

    iget v4, p0, Lcom/rd/draw/drawer/Drawer;->position:I

    iget v5, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v6, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/rd/draw/drawer/type/FillDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;III)V

    :cond_0
    return-void
.end method

.method public drawScale(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->scaleDrawer:Lcom/rd/draw/drawer/type/ScaleDrawer;

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/rd/draw/drawer/Drawer;->scaleDrawer:Lcom/rd/draw/drawer/type/ScaleDrawer;

    iget v4, p0, Lcom/rd/draw/drawer/Drawer;->position:I

    iget v5, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v6, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/rd/draw/drawer/type/ScaleDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;III)V

    :cond_0
    return-void
.end method

.method public drawScaleDown(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->scaleDownDrawer:Lcom/rd/draw/drawer/type/ScaleDownDrawer;

    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/rd/draw/drawer/Drawer;->scaleDownDrawer:Lcom/rd/draw/drawer/type/ScaleDownDrawer;

    iget v4, p0, Lcom/rd/draw/drawer/Drawer;->position:I

    iget v5, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v6, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/rd/draw/drawer/type/ScaleDownDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;III)V

    :cond_0
    return-void
.end method

.method public drawSlide(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->slideDrawer:Lcom/rd/draw/drawer/type/SlideDrawer;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->slideDrawer:Lcom/rd/draw/drawer/type/SlideDrawer;

    iget v1, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v2, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/rd/draw/drawer/type/SlideDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;II)V

    :cond_0
    return-void
.end method

.method public drawSwap(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 99
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->swapDrawer:Lcom/rd/draw/drawer/type/SwapDrawer;

    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/rd/draw/drawer/Drawer;->swapDrawer:Lcom/rd/draw/drawer/type/SwapDrawer;

    iget v4, p0, Lcom/rd/draw/drawer/Drawer;->position:I

    iget v5, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v6, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/rd/draw/drawer/type/SwapDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;III)V

    :cond_0
    return-void
.end method

.method public drawThinWorm(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->thinWormDrawer:Lcom/rd/draw/drawer/type/ThinWormDrawer;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->thinWormDrawer:Lcom/rd/draw/drawer/type/ThinWormDrawer;

    iget v1, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v2, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/rd/draw/drawer/type/ThinWormDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;II)V

    :cond_0
    return-void
.end method

.method public drawWorm(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->wormDrawer:Lcom/rd/draw/drawer/type/WormDrawer;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->wormDrawer:Lcom/rd/draw/drawer/type/WormDrawer;

    iget v1, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v2, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/rd/draw/drawer/type/WormDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;II)V

    :cond_0
    return-void
.end method

.method public setup(III)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/rd/draw/drawer/Drawer;->position:I

    .line 46
    iput p2, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    .line 47
    iput p3, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    return-void
.end method
