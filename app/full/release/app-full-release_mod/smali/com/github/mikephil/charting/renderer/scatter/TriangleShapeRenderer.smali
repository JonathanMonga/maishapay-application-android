.class public Lcom/github/mikephil/charting/renderer/scatter/TriangleShapeRenderer;
.super Ljava/lang/Object;
.source "TriangleShapeRenderer.java"

# interfaces
.implements Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;


# instance fields
.field protected mTrianglePathBuffer:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/scatter/TriangleShapeRenderer;->mTrianglePathBuffer:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public renderShape(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLandroid/graphics/Paint;)V
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object/from16 v3, p6

    .line 25
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeSize()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    .line 27
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeHoleRadius()F

    move-result v7

    invoke-static {v7}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v7

    mul-float/2addr v7, v5

    sub-float v7, v4, v7

    div-float/2addr v7, v5

    .line 31
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeHoleColor()I

    move-result v5

    .line 33
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v8, p0

    .line 36
    iget-object v9, v8, Lcom/github/mikephil/charting/renderer/scatter/TriangleShapeRenderer;->mTrianglePathBuffer:Landroid/graphics/Path;

    .line 37
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    sub-float v10, p5, v6

    .line 39
    invoke-virtual {v9, v1, v10}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v11, v1, v6

    add-float v2, p5, v6

    .line 40
    invoke-virtual {v9, v11, v2}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v6, v1, v6

    .line 41
    invoke-virtual {v9, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    float-to-double v12, v4

    const-wide/16 v14, 0x0

    cmpl-double v4, v12, v14

    if-lez v4, :cond_0

    .line 44
    invoke-virtual {v9, v1, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v4, v6, v7

    sub-float v14, v2, v7

    .line 46
    invoke-virtual {v9, v4, v14}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v15, v11, v7

    .line 48
    invoke-virtual {v9, v15, v14}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v15, v10, v7

    .line 50
    invoke-virtual {v9, v1, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    invoke-virtual {v9, v4, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 58
    invoke-virtual {v0, v9, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 59
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    const-wide/16 v14, 0x0

    cmpl-double v4, v12, v14

    if-lez v4, :cond_1

    const v4, 0x112233

    if-eq v5, v4, :cond_1

    .line 64
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr v10, v7

    .line 66
    invoke-virtual {v9, v1, v10}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float/2addr v11, v7

    sub-float/2addr v2, v7

    .line 68
    invoke-virtual {v9, v11, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v6, v7

    .line 70
    invoke-virtual {v9, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 74
    invoke-virtual {v0, v9, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 75
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    :cond_1
    return-void
.end method
