.class public Lcom/github/mikephil/charting/renderer/scatter/SquareShapeRenderer;
.super Ljava/lang/Object;
.source "SquareShapeRenderer.java"

# interfaces
.implements Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public renderShape(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLandroid/graphics/Paint;)V
    .locals 13

    move-object/from16 v6, p6

    .line 23
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeSize()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    .line 25
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeHoleRadius()F

    move-result v5

    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v5

    mul-float v7, v5, v3

    sub-float v7, v2, v7

    div-float/2addr v7, v3

    div-float v3, v7, v3

    .line 30
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeHoleColor()I

    move-result v8

    float-to-double v9, v2

    const-wide/16 v11, 0x0

    cmpl-double v2, v9, v11

    if-lez v2, :cond_0

    .line 33
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sub-float v7, p4, v5

    sub-float v2, v7, v3

    sub-float v9, p5, v5

    sub-float v4, v9, v3

    add-float v10, p4, v5

    add-float v11, v10, v3

    add-float v12, p5, v5

    add-float v5, v12, v3

    move-object v0, p1

    move v1, v2

    move v2, v4

    move v3, v11

    move v4, v5

    move-object v5, v6

    .line 36
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const v0, 0x112233

    if-eq v8, v0, :cond_1

    .line 43
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    move-object v0, p1

    move v1, v7

    move v2, v9

    move v3, v10

    move v4, v12

    move-object v5, v6

    .line 46
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 54
    :cond_0
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sub-float v2, p4, v4

    sub-float v3, p5, v4

    add-float v5, p4, v4

    add-float v4, p5, v4

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v5

    move-object v5, v6

    .line 56
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method
