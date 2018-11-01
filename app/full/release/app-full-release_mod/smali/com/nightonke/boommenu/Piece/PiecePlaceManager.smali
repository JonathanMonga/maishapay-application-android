.class public Lcom/nightonke/boommenu/Piece/PiecePlaceManager;
.super Ljava/lang/Object;
.source "PiecePlaceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDot(Landroid/content/Context;Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;F)Lcom/nightonke/boommenu/Piece/Dot;
    .locals 1

    .line 444
    new-instance v0, Lcom/nightonke/boommenu/Piece/Dot;

    invoke-direct {v0, p0}, Lcom/nightonke/boommenu/Piece/Dot;-><init>(Landroid/content/Context;)V

    .line 445
    invoke-virtual {p1, v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->piece(Lcom/nightonke/boommenu/Piece/BoomPiece;)V

    .line 446
    invoke-virtual {p1, p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0, p2}, Lcom/nightonke/boommenu/Piece/Dot;->init(IF)V

    return-object v0
.end method

.method private static createHam(Landroid/content/Context;Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;F)Lcom/nightonke/boommenu/Piece/Ham;
    .locals 1

    .line 451
    new-instance v0, Lcom/nightonke/boommenu/Piece/Ham;

    invoke-direct {v0, p0}, Lcom/nightonke/boommenu/Piece/Ham;-><init>(Landroid/content/Context;)V

    .line 452
    invoke-virtual {p1, v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->piece(Lcom/nightonke/boommenu/Piece/BoomPiece;)V

    .line 453
    invoke-virtual {p1, p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0, p2}, Lcom/nightonke/boommenu/Piece/Ham;->init(IF)V

    return-object v0
.end method

.method public static createPiece(Lcom/nightonke/boommenu/BoomMenuButton;Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;)Lcom/nightonke/boommenu/Piece/BoomPiece;
    .locals 2

    .line 432
    sget-object v0, Lcom/nightonke/boommenu/Piece/PiecePlaceManager$2;->$SwitchMap$com$nightonke$boommenu$ButtonEnum:[I

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonEnum()Lcom/nightonke/boommenu/ButtonEnum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nightonke/boommenu/ButtonEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 440
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown button-enum!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 438
    :pswitch_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPieceCornerRadius()F

    move-result p0

    invoke-static {v0, p1, p0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->createHam(Landroid/content/Context;Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;F)Lcom/nightonke/boommenu/Piece/Ham;

    move-result-object p0

    return-object p0

    .line 436
    :pswitch_1
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPieceCornerRadius()F

    move-result p0

    invoke-static {v0, p1, p0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->createDot(Landroid/content/Context;Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;F)Lcom/nightonke/boommenu/Piece/Dot;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDotPositions(Lcom/nightonke/boommenu/BoomMenuButton;Landroid/graphics/Point;)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nightonke/boommenu/BoomMenuButton;",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPieceHorizontalMargin()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, v1, v2

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v5, v1, v4

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPieceVerticalMargin()F

    move-result v6

    mul-float/2addr v2, v6

    mul-float/2addr v4, v6

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPieceInclinedMargin()F

    move-result v7

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getDotRadius()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v10, v8, v9

    const/high16 v11, 0x40400000    # 3.0f

    mul-float v12, v8, v11

    .line 39
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    add-float v15, v3, v8

    move/from16 v17, v12

    float-to-double v11, v15

    move/from16 v18, v10

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    .line 44
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double v19, v19, v9

    div-double v11, v11, v19

    double-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float v19, v11, v12

    sub-float v12, v11, v19

    .line 48
    sget-object v20, Lcom/nightonke/boommenu/Piece/PiecePlaceManager$2;->$SwitchMap$com$nightonke$boommenu$Piece$PiecePlaceEnum:[I

    invoke-virtual/range {p0 .. p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPiecePlaceEnum()Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->ordinal()I

    move-result v9

    aget v9, v20, v9

    packed-switch v9, :pswitch_data_0

    move/from16 v22, v4

    move/from16 v21, v5

    move v7, v15

    move/from16 v4, v19

    :goto_0
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_1

    :pswitch_0
    add-float v7, v2, v8

    float-to-double v9, v7

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    .line 54
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    move/from16 v22, v4

    move/from16 v21, v5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v4

    div-double/2addr v9, v11

    double-to-float v11, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float v19, v11, v9

    sub-float v12, v11, v19

    move v5, v9

    move/from16 v4, v19

    goto :goto_1

    :pswitch_1
    move/from16 v22, v4

    move/from16 v21, v5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v9, 0x40000000    # 2.0f

    add-float v10, v18, v7

    float-to-double v9, v10

    .line 50
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v9, v4

    double-to-float v4, v9

    move v7, v15

    goto :goto_0

    :goto_1
    mul-float v9, v5, v4

    mul-float v10, v5, v7

    move-object/from16 v23, v13

    const/high16 v16, 0x40400000    # 3.0f

    mul-float v13, v16, v7

    mul-float/2addr v5, v11

    .line 65
    sget-object v16, Lcom/nightonke/boommenu/Piece/PiecePlaceManager$2;->$SwitchMap$com$nightonke$boommenu$Piece$PiecePlaceEnum:[I

    invoke-virtual/range {p0 .. p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPiecePlaceEnum()Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->ordinal()I

    move-result v0

    aget v0, v16, v0

    move/from16 v24, v12

    const/4 v12, 0x0

    packed-switch v0, :pswitch_data_1

    .line 346
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown piece-place-enum!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getCustomPiecePlacePositions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_3
    neg-float v0, v9

    sub-float/2addr v0, v5

    .line 321
    invoke-static {v12, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v3

    sub-float/2addr v0, v8

    neg-float v1, v4

    sub-float/2addr v1, v11

    .line 322
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-static {v15, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v10

    .line 324
    invoke-static {v1, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 325
    invoke-static {v1, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(II)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-static {v10, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v4, v11

    .line 327
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-static {v15, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v9, v5

    .line 329
    invoke-static {v12, v9}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_4
    neg-float v0, v1

    sub-float v0, v0, v18

    neg-float v2, v6

    sub-float v2, v2, v18

    .line 310
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-static {v12, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v1, v18

    .line 312
    invoke-static {v1, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-static {v0, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 314
    invoke-static {v2, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(II)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-static {v1, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v6, v6, v18

    .line 316
    invoke-static {v0, v6}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-static {v12, v6}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-static {v1, v6}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_5
    neg-float v0, v3

    sub-float/2addr v0, v8

    move/from16 v6, v22

    neg-float v1, v6

    sub-float v1, v1, v17

    .line 300
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-static {v15, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v2

    sub-float/2addr v1, v8

    .line 302
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-static {v15, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v2, v8

    .line 304
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-static {v15, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v4, v6, v17

    .line 306
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-static {v15, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_6
    move/from16 v1, v21

    neg-float v0, v1

    sub-float v0, v0, v17

    neg-float v4, v2

    sub-float/2addr v4, v8

    .line 290
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v3, v3

    sub-float/2addr v3, v8

    .line 291
    invoke-static {v3, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-static {v15, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v5, v1, v17

    .line 293
    invoke-static {v5, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v2, v8

    .line 294
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-static {v3, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-static {v15, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-static {v5, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_7
    neg-float v0, v9

    sub-float/2addr v0, v5

    .line 270
    invoke-static {v12, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v3

    sub-float/2addr v0, v8

    neg-float v1, v4

    sub-float/2addr v1, v11

    .line 271
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-static {v15, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v10

    .line 273
    invoke-static {v1, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-static {v10, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v4, v11

    .line 275
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-static {v15, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v9, v5

    .line 277
    invoke-static {v12, v9}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_8
    neg-float v0, v1

    sub-float v0, v0, v18

    neg-float v2, v6

    sub-float v2, v2, v18

    .line 260
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-static {v12, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v1, v18

    .line 262
    invoke-static {v1, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-static {v0, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-static {v1, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v6, v6, v18

    .line 265
    invoke-static {v0, v6}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-static {v12, v6}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-static {v1, v6}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_9
    neg-float v0, v10

    neg-float v1, v4

    sub-float/2addr v1, v11

    .line 240
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-static {v12, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v3

    sub-float/2addr v1, v8

    .line 243
    invoke-static {v1, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-static {v15, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v4, v11

    .line 245
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {v12, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-static {v10, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_a
    neg-float v0, v10

    neg-float v1, v11

    .line 231
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-static {v12, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v13

    .line 234
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v7

    .line 235
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-static {v7, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static {v13, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_b
    neg-float v0, v13

    neg-float v1, v4

    .line 222
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v7

    .line 223
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static {v7, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-static {v13, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v10

    .line 226
    invoke-static {v0, v11}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-static {v12, v11}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {v10, v11}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_c
    neg-float v0, v10

    .line 213
    invoke-static {v12, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v4

    sub-float/2addr v0, v11

    neg-float v1, v7

    .line 214
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v4, v11

    .line 215
    invoke-static {v4, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 216
    invoke-static {v1, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(II)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-static {v0, v7}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-static {v4, v7}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-static {v12, v10}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_d
    neg-float v0, v7

    neg-float v1, v4

    sub-float/2addr v1, v11

    .line 204
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-static {v7, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v10

    .line 206
    invoke-static {v1, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 207
    invoke-static {v1, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(II)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-static {v10, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v4, v11

    .line 209
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-static {v7, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_e
    neg-float v0, v6

    sub-float v0, v0, v18

    .line 195
    invoke-static {v12, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v1

    sub-float v0, v0, v18

    .line 196
    invoke-static {v0, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 197
    invoke-static {v2, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(II)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v1, v18

    .line 198
    invoke-static {v1, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v6, v6, v18

    .line 199
    invoke-static {v0, v6}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-static {v12, v6}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static {v1, v6}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_f
    neg-float v0, v1

    sub-float v0, v0, v18

    neg-float v2, v6

    sub-float v2, v2, v18

    .line 186
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {v12, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v1, v18

    .line 188
    invoke-static {v1, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-static {v0, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 190
    invoke-static {v0, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(II)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-static {v1, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v6, v6, v18

    .line 192
    invoke-static {v12, v6}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_10
    neg-float v0, v4

    sub-float/2addr v0, v11

    sub-float v0, v0, v24

    .line 178
    invoke-static {v12, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v3

    sub-float/2addr v0, v8

    move/from16 v1, v24

    neg-float v2, v1

    .line 179
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {v15, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v10

    add-float/2addr v4, v11

    sub-float/2addr v4, v1

    .line 181
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-static {v12, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {v10, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_11
    move/from16 v1, v24

    neg-float v0, v10

    neg-float v2, v4

    sub-float/2addr v2, v11

    add-float/2addr v2, v1

    .line 170
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-static {v12, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {v10, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v3

    sub-float/2addr v0, v8

    .line 173
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-static {v15, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v4, v11

    add-float/2addr v4, v1

    .line 175
    invoke-static {v12, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_12
    neg-float v0, v10

    .line 162
    invoke-static {v12, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v4

    sub-float/2addr v0, v11

    neg-float v1, v7

    .line 163
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v4, v11

    .line 164
    invoke-static {v4, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-static {v0, v7}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {v4, v7}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-static {v12, v10}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_13
    neg-float v0, v7

    neg-float v1, v4

    sub-float/2addr v1, v11

    .line 154
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-static {v7, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v10

    .line 156
    invoke-static {v1, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-static {v10, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v4, v11

    .line 158
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static {v7, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_14
    neg-float v0, v3

    sub-float/2addr v0, v8

    neg-float v1, v6

    sub-float v1, v1, v18

    .line 146
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-static {v15, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-static {v0, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-static {v15, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v6, v6, v18

    .line 150
    invoke-static {v0, v6}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-static {v15, v6}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_15
    neg-float v0, v1

    sub-float v0, v0, v18

    neg-float v3, v2

    sub-float/2addr v3, v8

    .line 138
    invoke-static {v0, v3}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-static {v12, v3}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v1, v18

    .line 140
    invoke-static {v1, v3}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v2, v8

    .line 141
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {v12, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-static {v1, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_16
    neg-float v0, v6

    sub-float v0, v0, v18

    .line 124
    invoke-static {v12, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v1

    sub-float v0, v0, v18

    .line 125
    invoke-static {v0, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 126
    invoke-static {v0, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(II)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v1, v18

    .line 127
    invoke-static {v1, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v6, v6, v18

    .line 128
    invoke-static {v12, v6}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_17
    neg-float v0, v3

    sub-float/2addr v0, v8

    neg-float v1, v11

    .line 117
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {v15, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v10

    .line 119
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static {v12, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-static {v10, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_18
    neg-float v0, v10

    neg-float v1, v4

    .line 110
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {v12, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v3

    sub-float/2addr v0, v8

    .line 113
    invoke-static {v0, v11}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-static {v15, v11}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_19
    neg-float v0, v3

    sub-float/2addr v0, v8

    neg-float v1, v2

    sub-float/2addr v1, v8

    .line 98
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {v15, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v2, v8

    .line 100
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-static {v15, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_1a
    neg-float v0, v11

    .line 93
    invoke-static {v12, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v7

    .line 94
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-static {v7, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_1b
    neg-float v0, v7

    neg-float v1, v4

    .line 88
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {v7, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-static {v12, v11}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_1c
    neg-float v0, v6

    sub-float v0, v0, v18

    .line 83
    invoke-static {v12, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 84
    invoke-static {v0, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(II)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v6, v6, v18

    .line 85
    invoke-static {v12, v6}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_1d
    const/4 v0, 0x0

    neg-float v2, v1

    sub-float v2, v2, v18

    .line 78
    invoke-static {v2, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {v0, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(II)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v1, v18

    .line 80
    invoke-static {v1, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_1e
    neg-float v0, v2

    sub-float/2addr v0, v8

    .line 74
    invoke-static {v12, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v2, v8

    .line 75
    invoke-static {v12, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_1f
    neg-float v0, v3

    sub-float/2addr v0, v8

    .line 70
    invoke-static {v0, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {v15, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_20
    const/4 v0, 0x0

    .line 67
    invoke-static {v0, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(II)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_21
    neg-float v0, v4

    sub-float/2addr v0, v11

    neg-float v1, v10

    .line 250
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v4, v11

    .line 251
    invoke-static {v4, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v2

    sub-float/2addr v1, v8

    .line 252
    invoke-static {v12, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-static {v0, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-static {v4, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v2, v8

    .line 255
    invoke-static {v12, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {v0, v10}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-static {v4, v10}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_22
    neg-float v0, v9

    .line 332
    invoke-static {v12, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v4

    .line 333
    invoke-static {v1, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-static {v4, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-static {v0, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 336
    invoke-static {v0, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(II)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-static {v9, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-static {v1, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-static {v4, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-static {v12, v9}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_23
    neg-float v0, v9

    .line 280
    invoke-static {v12, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v4

    .line 281
    invoke-static {v1, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-static {v4, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-static {v0, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {v9, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-static {v1, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-static {v4, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-static {v12, v9}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_24
    neg-float v0, v4

    .line 131
    invoke-static {v0, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-static {v4, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 133
    invoke-static {v1, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(II)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {v4, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_25
    neg-float v0, v4

    .line 104
    invoke-static {v12, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {v4, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {v12, v4}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {v0, v12}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_0
    :goto_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v4, p1

    iget v5, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    sub-float/2addr v3, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v5, v4, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v1, v5

    sub-float/2addr v1, v8

    move/from16 v9, v18

    invoke-direct {v2, v3, v1, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v1, v23

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1
    move-object/from16 v1, v23

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getHamPositions(Lcom/nightonke/boommenu/BoomMenuButton;Landroid/graphics/Point;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nightonke/boommenu/BoomMenuButton;",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 360
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPiecePlaceEnum()Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->pieceNumber()I

    move-result v2

    .line 361
    div-int/lit8 v3, v2, 0x2

    .line 363
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getHamWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    .line 365
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getHamHeight()F

    move-result v7

    div-float v8, v7, v5

    .line 368
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPieceVerticalMargin()F

    move-result v9

    div-float v5, v9, v5

    .line 371
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPiecePlaceEnum()Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    move-result-object v10

    sget-object v11, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Custom:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    invoke-virtual {v10, v11}, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 372
    rem-int/lit8 v2, v2, 0x2

    const/4 p0, 0x0

    const/4 v10, 0x0

    if-nez v2, :cond_1

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_0

    neg-float v11, v8

    sub-float/2addr v11, v5

    int-to-float v12, v2

    add-float v13, v7, v9

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    .line 374
    invoke-static {v10, v11}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p0, v3, :cond_4

    add-float v2, v8, v5

    int-to-float v11, p0

    add-float v12, v7, v9

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    .line 376
    invoke-static {v10, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v3, -0x1

    :goto_2
    if-ltz v2, :cond_2

    neg-float v5, v7

    sub-float/2addr v5, v9

    int-to-float v11, v2

    add-float v12, v7, v9

    mul-float/2addr v11, v12

    sub-float/2addr v5, v11

    .line 379
    invoke-static {v10, v5}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 380
    :cond_2
    invoke-static {p0, p0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(II)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    if-ge p0, v3, :cond_4

    add-float v2, v7, v9

    int-to-float v5, p0

    mul-float/2addr v5, v2

    add-float/2addr v2, v5

    .line 382
    invoke-static {v10, v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .line 385
    :cond_3
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getCustomPiecePlacePositions()Ljava/util/ArrayList;

    move-result-object v1

    .line 388
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    sub-float/2addr v3, v6

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v1, v5

    sub-float/2addr v1, v8

    invoke-direct {v2, v3, v1, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    return-object v0
.end method

.method public static getShareDotPositions(Lcom/nightonke/boommenu/BoomMenuButton;Landroid/graphics/Point;I)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nightonke/boommenu/BoomMenuButton;",
            "Landroid/graphics/Point;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getDotRadius()F

    move-result v1

    .line 400
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getShareLineLength()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    .line 402
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getShareLineLength()F

    move-result p0

    div-float/2addr p0, v3

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    if-ge v5, p2, :cond_0

    .line 404
    rem-int/lit8 v6, v5, 0x3

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 412
    :pswitch_0
    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v1, v1

    invoke-direct {v6, v4, p0, v7, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 409
    :pswitch_1
    new-instance v6, Landroid/graphics/RectF;

    neg-float v7, v2

    const/4 v8, 0x0

    add-float v9, v1, v1

    invoke-direct {v6, v7, v8, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 406
    :pswitch_2
    new-instance v6, Landroid/graphics/RectF;

    neg-float v7, p0

    add-float v8, v1, v1

    invoke-direct {v6, v4, v7, v8, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 416
    :cond_0
    new-instance p0, Lcom/nightonke/boommenu/Piece/PiecePlaceManager$1;

    invoke-direct {p0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 424
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v3, p0, :cond_1

    .line 425
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    iget p2, p0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    add-float/2addr p2, v2

    iput p2, p0, Landroid/graphics/RectF;->left:F

    .line 426
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    iget p2, p0, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    add-float/2addr p2, v2

    iput p2, p0, Landroid/graphics/RectF;->top:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static point(FF)Landroid/graphics/PointF;
    .locals 1

    .line 458
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private static point(II)Landroid/graphics/PointF;
    .locals 1

    .line 461
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p0, p0

    int-to-float p1, p1

    invoke-direct {v0, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
