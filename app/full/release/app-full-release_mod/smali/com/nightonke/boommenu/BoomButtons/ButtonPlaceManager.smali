.class public Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;
.super Ljava/lang/Object;
.source "ButtonPlaceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjust(Ljava/util/ArrayList;FF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;FF)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 802
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static adjust(Ljava/util/ArrayList;Landroid/graphics/Point;FFLcom/nightonke/boommenu/BoomMenuButton;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Point;",
            "FF",
            "Lcom/nightonke/boommenu/BoomMenuButton;",
            ")V"
        }
    .end annotation

    .line 756
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v1

    move v4, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 757
    iget v6, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 758
    iget v6, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 759
    iget v6, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 760
    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_0

    .line 765
    :cond_0
    sget-object v0, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager$1;->$SwitchMap$com$nightonke$boommenu$BoomButtons$ButtonPlaceAlignmentEnum:[I

    invoke-virtual {p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonPlaceAlignmentEnum()Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceAlignmentEnum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceAlignmentEnum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 793
    :pswitch_0
    iget p2, p1, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    sub-float/2addr p2, p3

    sub-float/2addr p2, v1

    invoke-virtual {p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonBottomMargin()F

    move-result v0

    sub-float v3, p2, v0

    .line 794
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float/2addr p1, p3

    sub-float/2addr p1, v1

    invoke-virtual {p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonRightMargin()F

    move-result p2

    sub-float/2addr p1, p2

    goto :goto_3

    .line 789
    :pswitch_1
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float/2addr p1, p3

    sub-float/2addr p1, v1

    invoke-virtual {p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonBottomMargin()F

    move-result p3

    sub-float v3, p1, p3

    .line 790
    invoke-virtual {p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonLeftMargin()F

    move-result p1

    add-float/2addr p2, p1

    sub-float p1, p2, v2

    goto :goto_3

    .line 785
    :pswitch_2
    invoke-virtual {p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonTopMargin()F

    move-result p2

    add-float/2addr p2, p3

    sub-float v3, p2, v2

    .line 786
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float/2addr p1, p3

    sub-float/2addr p1, v1

    invoke-virtual {p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonRightMargin()F

    move-result p2

    sub-float/2addr p1, p2

    goto :goto_3

    .line 781
    :pswitch_3
    invoke-virtual {p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonTopMargin()F

    move-result p1

    add-float/2addr p3, p1

    sub-float v3, p3, v2

    .line 782
    invoke-virtual {p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonLeftMargin()F

    move-result p1

    add-float/2addr p2, p1

    sub-float p1, p2, v2

    goto :goto_3

    .line 778
    :pswitch_4
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float/2addr p1, p3

    sub-float/2addr p1, v1

    invoke-virtual {p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonRightMargin()F

    move-result p2

    sub-float/2addr p1, p2

    goto :goto_3

    .line 775
    :pswitch_5
    invoke-virtual {p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonLeftMargin()F

    move-result p1

    add-float/2addr p2, p1

    sub-float p1, p2, v2

    goto :goto_3

    .line 772
    :pswitch_6
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float/2addr p1, p3

    sub-float/2addr p1, v1

    invoke-virtual {p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonBottomMargin()F

    move-result p2

    sub-float/2addr p1, p2

    goto :goto_1

    .line 769
    :pswitch_7
    invoke-virtual {p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonTopMargin()F

    move-result p1

    add-float/2addr p3, p1

    sub-float p1, p3, v2

    :goto_1
    move v7, v3

    move v3, p1

    move p1, v7

    goto :goto_3

    :goto_2
    :pswitch_8
    move p1, v3

    .line 798
    :goto_3
    invoke-static {p0, p1, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->adjust(Ljava/util/ArrayList;FF)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPositions(Landroid/graphics/Point;FFILcom/nightonke/boommenu/BoomMenuButton;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "FFI",
            "Lcom/nightonke/boommenu/BoomMenuButton;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 28
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    div-int/lit8 v5, v3, 0x2

    .line 32
    invoke-virtual/range {p4 .. p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonHorizontalMargin()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v6, v7

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float v10, v6, v9

    mul-float v11, v6, v7

    .line 36
    invoke-virtual/range {p4 .. p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonVerticalMargin()F

    move-result v12

    div-float v13, v12, v7

    mul-float v14, v12, v9

    mul-float v15, v12, v7

    div-float v0, v1, v7

    mul-float v16, v1, v9

    mul-float v17, v1, v7

    move/from16 v18, v5

    div-float v5, v2, v7

    mul-float/2addr v9, v2

    mul-float/2addr v7, v2

    .line 47
    sget-object v19, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager$1;->$SwitchMap$com$nightonke$boommenu$BoomButtons$ButtonPlaceEnum:[I

    invoke-virtual/range {p4 .. p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonPlaceEnum()Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->ordinal()I

    move-result v3

    aget v3, v19, v3

    const/16 v19, 0x0

    move/from16 v20, v10

    const/4 v10, 0x0

    packed-switch v3, :pswitch_data_0

    .line 356
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Button place enum not found!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :pswitch_0
    invoke-virtual/range {p4 .. p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getCustomButtonPlacePositions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v6, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    neg-float v3, v12

    sub-float/2addr v3, v2

    .line 342
    invoke-static {v10, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v3, v6

    sub-float/2addr v3, v1

    neg-float v7, v13

    sub-float/2addr v7, v5

    .line 343
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 344
    invoke-static {v6, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v11

    sub-float v1, v1, v17

    .line 345
    invoke-static {v1, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-static {v10, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v11, v11, v17

    .line 347
    invoke-static {v11, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v13, v5

    .line 348
    invoke-static {v3, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-static {v6, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 350
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_2
    neg-float v3, v15

    sub-float/2addr v3, v7

    .line 331
    invoke-static {v10, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v3, v8

    sub-float/2addr v3, v0

    neg-float v9, v12

    sub-float/2addr v9, v2

    .line 332
    invoke-static {v3, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v11, v8, v0

    .line 333
    invoke-static {v11, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v9, v6

    sub-float/2addr v9, v1

    .line 334
    invoke-static {v9, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-static {v10, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 336
    invoke-static {v6, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 337
    invoke-static {v3, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-static {v11, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v15, v7

    .line 339
    invoke-static {v10, v15}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_3
    neg-float v3, v6

    sub-float/2addr v3, v1

    neg-float v7, v12

    sub-float/2addr v7, v2

    .line 320
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-static {v10, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 322
    invoke-static {v6, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-static {v3, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-static {v10, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-static {v6, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 326
    invoke-static {v3, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-static {v6, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_4
    neg-float v1, v8

    sub-float/2addr v1, v0

    neg-float v3, v14

    sub-float/2addr v3, v9

    .line 310
    invoke-static {v1, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v6, v8, v0

    .line 311
    invoke-static {v6, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v3, v13

    sub-float/2addr v3, v5

    .line 312
    invoke-static {v1, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-static {v6, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v13, v5

    .line 314
    invoke-static {v1, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-static {v6, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v14, v9

    .line 316
    invoke-static {v1, v14}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-static {v6, v14}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_5
    move/from16 v9, v20

    neg-float v1, v9

    sub-float v1, v1, v16

    neg-float v3, v13

    sub-float/2addr v3, v5

    .line 300
    invoke-static {v1, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v6, v8

    sub-float/2addr v6, v0

    .line 301
    invoke-static {v6, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v7, v8, v0

    .line 302
    invoke-static {v7, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v9, v9, v16

    .line 303
    invoke-static {v9, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v13, v5

    .line 304
    invoke-static {v1, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-static {v6, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-static {v7, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-static {v9, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_6
    neg-float v3, v12

    sub-float/2addr v3, v2

    .line 290
    invoke-static {v10, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v3, v6

    sub-float/2addr v3, v1

    neg-float v7, v13

    sub-float/2addr v7, v5

    .line 291
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 292
    invoke-static {v6, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v11

    sub-float v1, v1, v17

    .line 293
    invoke-static {v1, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v11, v11, v17

    .line 294
    invoke-static {v11, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v13, v5

    .line 295
    invoke-static {v3, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-static {v6, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 297
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_7
    neg-float v3, v15

    sub-float/2addr v3, v7

    .line 280
    invoke-static {v10, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v3, v8

    sub-float/2addr v3, v0

    neg-float v9, v12

    sub-float/2addr v9, v2

    .line 281
    invoke-static {v3, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v11, v8, v0

    .line 282
    invoke-static {v11, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v9, v6

    sub-float/2addr v9, v1

    .line 283
    invoke-static {v9, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 284
    invoke-static {v6, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 285
    invoke-static {v3, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-static {v11, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v15, v7

    .line 287
    invoke-static {v10, v15}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_8
    neg-float v3, v6

    sub-float/2addr v3, v1

    neg-float v7, v12

    sub-float/2addr v7, v2

    .line 270
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-static {v10, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 272
    invoke-static {v6, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-static {v3, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-static {v6, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 275
    invoke-static {v3, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-static {v6, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_9
    neg-float v3, v6

    sub-float/2addr v3, v1

    neg-float v7, v12

    sub-float/2addr v7, v2

    .line 260
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 261
    invoke-static {v6, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v13

    sub-float/2addr v1, v5

    .line 262
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-static {v3, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-static {v6, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v13, v5

    .line 265
    invoke-static {v10, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 266
    invoke-static {v3, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-static {v6, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_a
    neg-float v3, v6

    sub-float/2addr v3, v1

    neg-float v7, v12

    sub-float/2addr v7, v2

    .line 250
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-static {v10, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 252
    invoke-static {v6, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v8

    sub-float/2addr v1, v0

    .line 253
    invoke-static {v1, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v8, v0

    .line 254
    invoke-static {v1, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 255
    invoke-static {v3, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-static {v6, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_b
    move/from16 v9, v20

    neg-float v3, v6

    sub-float/2addr v3, v1

    neg-float v7, v13

    sub-float/2addr v7, v5

    .line 241
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-static {v10, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 243
    invoke-static {v6, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v9

    sub-float v1, v1, v16

    add-float/2addr v13, v5

    .line 244
    invoke-static {v1, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v8

    sub-float/2addr v1, v0

    .line 245
    invoke-static {v1, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v8, v0

    .line 246
    invoke-static {v1, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v9, v16

    .line 247
    invoke-static {v1, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_c
    move/from16 v9, v20

    neg-float v3, v9

    sub-float v3, v3, v16

    neg-float v7, v13

    sub-float/2addr v7, v5

    .line 232
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v3, v8

    sub-float/2addr v3, v0

    .line 233
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v3, v8, v0

    .line 234
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v3, v9, v16

    .line 235
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v3, v6

    sub-float/2addr v3, v1

    add-float/2addr v13, v5

    .line 236
    invoke-static {v3, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static {v10, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 238
    invoke-static {v6, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_d
    neg-float v3, v12

    sub-float/2addr v3, v2

    .line 223
    invoke-static {v10, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v3, v6

    sub-float/2addr v3, v1

    neg-float v7, v13

    sub-float/2addr v7, v5

    .line 224
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 225
    invoke-static {v6, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-static {v10, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v13, v5

    .line 227
    invoke-static {v3, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {v6, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 229
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_e
    neg-float v3, v8

    sub-float/2addr v3, v0

    neg-float v7, v12

    sub-float/2addr v7, v2

    .line 214
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v9, v8, v0

    .line 215
    invoke-static {v9, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v7, v6

    sub-float/2addr v7, v1

    .line 216
    invoke-static {v7, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-static {v10, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 218
    invoke-static {v6, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 219
    invoke-static {v3, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-static {v9, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_f
    neg-float v3, v6

    sub-float/2addr v3, v1

    neg-float v7, v12

    sub-float/2addr v7, v2

    .line 205
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-static {v10, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 207
    invoke-static {v6, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-static {v3, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-static {v10, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-static {v6, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 211
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_10
    neg-float v3, v6

    sub-float/2addr v3, v1

    neg-float v7, v12

    sub-float/2addr v7, v2

    .line 196
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-static {v10, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 198
    invoke-static {v6, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-static {v3, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-static {v10, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static {v6, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 202
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_11
    neg-float v3, v12

    sub-float/2addr v3, v2

    .line 188
    invoke-static {v10, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v3, v8

    sub-float/2addr v3, v0

    .line 189
    invoke-static {v3, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v3, v8, v0

    .line 190
    invoke-static {v3, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v3, v6

    sub-float/2addr v3, v1

    add-float v7, v12, v2

    .line 191
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-static {v10, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 193
    invoke-static {v6, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_12
    neg-float v3, v6

    sub-float/2addr v3, v1

    neg-float v7, v12

    sub-float/2addr v7, v2

    .line 180
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static {v10, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 182
    invoke-static {v6, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v8

    sub-float/2addr v1, v0

    .line 183
    invoke-static {v1, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v8, v0

    .line 184
    invoke-static {v1, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 185
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_13
    neg-float v3, v12

    sub-float/2addr v3, v2

    .line 172
    invoke-static {v10, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v3, v6

    sub-float/2addr v3, v1

    neg-float v7, v13

    sub-float/2addr v7, v5

    .line 173
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 174
    invoke-static {v6, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v13, v5

    .line 175
    invoke-static {v3, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-static {v6, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 177
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_14
    neg-float v3, v8

    sub-float/2addr v3, v0

    neg-float v7, v12

    sub-float/2addr v7, v2

    .line 164
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v9, v8, v0

    .line 165
    invoke-static {v9, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v7, v6

    sub-float/2addr v7, v1

    .line 166
    invoke-static {v7, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 167
    invoke-static {v6, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 168
    invoke-static {v3, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-static {v9, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_15
    neg-float v1, v8

    sub-float/2addr v1, v0

    neg-float v3, v12

    sub-float/2addr v3, v2

    .line 156
    invoke-static {v1, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v6, v8, v0

    .line 157
    invoke-static {v6, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-static {v1, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static {v6, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v3, v12, v2

    .line 160
    invoke-static {v1, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-static {v6, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_16
    neg-float v3, v6

    sub-float/2addr v3, v1

    neg-float v7, v13

    sub-float/2addr v7, v5

    .line 148
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-static {v10, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 150
    invoke-static {v6, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v13, v5

    .line 151
    invoke-static {v3, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {v10, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-static {v6, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_17
    neg-float v3, v6

    sub-float/2addr v3, v1

    neg-float v7, v13

    sub-float/2addr v7, v5

    .line 141
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 142
    invoke-static {v6, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-static {v10, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v13, v5

    .line 144
    invoke-static {v3, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {v6, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_18
    neg-float v3, v12

    sub-float/2addr v3, v2

    .line 134
    invoke-static {v10, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v3, v6

    sub-float/2addr v3, v1

    .line 135
    invoke-static {v3, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-static {v10, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 137
    invoke-static {v6, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 138
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_19
    neg-float v3, v8

    sub-float/2addr v3, v0

    neg-float v7, v13

    sub-float/2addr v7, v5

    .line 127
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v3, v8, v0

    .line 128
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v3, v6

    sub-float/2addr v3, v1

    add-float/2addr v13, v5

    .line 129
    invoke-static {v3, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {v10, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 131
    invoke-static {v6, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_1a
    neg-float v3, v6

    sub-float/2addr v3, v1

    neg-float v7, v13

    sub-float/2addr v7, v5

    .line 120
    invoke-static {v3, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-static {v10, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 122
    invoke-static {v6, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v8

    sub-float/2addr v1, v0

    add-float/2addr v13, v5

    .line 123
    invoke-static {v1, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v8, v0

    .line 124
    invoke-static {v1, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_1b
    neg-float v3, v13

    sub-float/2addr v3, v5

    .line 114
    invoke-static {v10, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v3, v6

    sub-float/2addr v3, v1

    .line 115
    invoke-static {v3, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 116
    invoke-static {v6, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v13, v5

    .line 117
    invoke-static {v10, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_1c
    neg-float v1, v8

    sub-float/2addr v1, v0

    neg-float v3, v13

    sub-float/2addr v3, v5

    .line 108
    invoke-static {v1, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v6, v8, v0

    .line 109
    invoke-static {v6, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v13, v5

    .line 110
    invoke-static {v1, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {v6, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_1d
    neg-float v1, v13

    sub-float/2addr v1, v5

    .line 103
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v1, v8

    sub-float/2addr v1, v0

    add-float/2addr v13, v5

    .line 104
    invoke-static {v1, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v8, v0

    .line 105
    invoke-static {v1, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_1e
    neg-float v1, v8

    sub-float/2addr v1, v0

    neg-float v3, v13

    sub-float/2addr v3, v5

    .line 98
    invoke-static {v1, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v8, v0

    .line 99
    invoke-static {v1, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v13, v5

    .line 100
    invoke-static {v10, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1f
    neg-float v1, v12

    sub-float/2addr v1, v2

    .line 93
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {v10, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v12, v2

    .line 95
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_20
    neg-float v3, v6

    sub-float/2addr v3, v1

    .line 88
    invoke-static {v3, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {v10, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v1

    .line 90
    invoke-static {v6, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_21
    neg-float v1, v13

    sub-float/2addr v1, v5

    .line 84
    invoke-static {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v13, v5

    .line 85
    invoke-static {v10, v13}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_22
    neg-float v1, v8

    sub-float/2addr v1, v0

    .line 80
    invoke-static {v1, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v1, v8, v0

    .line 81
    invoke-static {v1, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    :pswitch_23
    invoke-static {v10, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    move/from16 v3, p3

    goto/16 :goto_a

    :pswitch_24
    move/from16 v3, p3

    .line 63
    rem-int/lit8 v1, v3, 0x2

    if-nez v1, :cond_2

    add-int/lit8 v1, v18, -0x1

    :goto_2
    if-ltz v1, :cond_1

    neg-float v6, v5

    sub-float/2addr v6, v13

    int-to-float v7, v1

    add-float v9, v2, v12

    mul-float/2addr v7, v9

    sub-float/2addr v6, v7

    .line 65
    invoke-static {v10, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_1
    move/from16 v7, v18

    move/from16 v1, v19

    :goto_3
    if-ge v1, v7, :cond_7

    add-float v6, v5, v13

    int-to-float v9, v1

    add-float v11, v2, v12

    mul-float/2addr v9, v11

    add-float/2addr v6, v9

    .line 67
    invoke-static {v10, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    move/from16 v7, v18

    add-int/lit8 v1, v7, -0x1

    :goto_4
    if-ltz v1, :cond_3

    neg-float v6, v2

    sub-float/2addr v6, v12

    int-to-float v9, v1

    add-float v11, v2, v12

    mul-float/2addr v9, v11

    sub-float/2addr v6, v9

    .line 70
    invoke-static {v10, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 71
    :cond_3
    invoke-static {v10, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v1, v19

    :goto_5
    if-ge v1, v7, :cond_7

    add-float v6, v2, v12

    int-to-float v9, v1

    mul-float/2addr v9, v6

    add-float/2addr v6, v9

    .line 73
    invoke-static {v10, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :pswitch_25
    move/from16 v7, v18

    move/from16 v3, p3

    .line 49
    rem-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_5

    add-int/lit8 v9, v7, -0x1

    :goto_6
    if-ltz v9, :cond_4

    neg-float v11, v0

    sub-float/2addr v11, v8

    int-to-float v13, v9

    add-float v14, v1, v6

    mul-float/2addr v13, v14

    sub-float/2addr v11, v13

    .line 51
    invoke-static {v11, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    :cond_4
    move/from16 v9, v19

    :goto_7
    if-ge v9, v7, :cond_7

    add-float v11, v0, v8

    int-to-float v13, v9

    add-float v14, v1, v6

    mul-float/2addr v13, v14

    add-float/2addr v11, v13

    .line 53
    invoke-static {v11, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v9, v7, -0x1

    :goto_8
    if-ltz v9, :cond_6

    neg-float v11, v1

    sub-float/2addr v11, v6

    int-to-float v13, v9

    add-float v14, v1, v6

    mul-float/2addr v13, v14

    sub-float/2addr v11, v13

    .line 56
    invoke-static {v11, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    .line 57
    :cond_6
    invoke-static {v10, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v9, v19

    :goto_9
    if-ge v9, v7, :cond_7

    add-float v11, v1, v6

    int-to-float v13, v9

    mul-float/2addr v13, v11

    add-float/2addr v11, v13

    .line 59
    invoke-static {v11, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 359
    :cond_7
    :goto_a
    sget-object v1, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager$1;->$SwitchMap$com$nightonke$boommenu$BoomButtons$ButtonPlaceEnum:[I

    invoke-virtual/range {p4 .. p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonPlaceEnum()Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->ordinal()I

    move-result v6

    aget v1, v1, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v9, 0x2

    packed-switch v1, :pswitch_data_1

    :pswitch_26
    if-lt v3, v9, :cond_8

    .line 375
    invoke-virtual/range {p4 .. p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonEnum()Lcom/nightonke/boommenu/ButtonEnum;

    move-result-object v1

    sget-object v2, Lcom/nightonke/boommenu/ButtonEnum;->Ham:Lcom/nightonke/boommenu/ButtonEnum;

    invoke-virtual {v1, v2}, Lcom/nightonke/boommenu/ButtonEnum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 376
    invoke-virtual/range {p4 .. p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getBottomHamButtonTopMargin()F

    move-result v1

    cmpl-float v1, v1, v10

    if-lez v1, :cond_8

    .line 377
    invoke-virtual/range {p4 .. p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonPlaceEnum()Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    move-result-object v1

    sget-object v2, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->Horizontal:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    invoke-virtual {v1, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 378
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual/range {p4 .. p4}, Lcom/nightonke/boommenu/BoomMenuButton;->getBottomHamButtonTopMargin()F

    move-result v2

    sub-float/2addr v2, v12

    invoke-virtual {v1, v10, v2}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_b

    :pswitch_27
    sub-float v1, v5, v0

    .line 371
    invoke-static {v4, v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->adjust(Ljava/util/ArrayList;FF)V

    goto :goto_b

    :pswitch_28
    add-float/2addr v8, v0

    float-to-double v13, v8

    .line 364
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    neg-double v6, v6

    add-float/2addr v12, v2

    float-to-double v1, v12

    div-double/2addr v6, v1

    double-to-float v1, v6

    invoke-static {v4, v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->adjust(Ljava/util/ArrayList;FF)V

    goto :goto_b

    :pswitch_29
    add-float/2addr v8, v0

    float-to-double v13, v8

    .line 361
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-float/2addr v12, v2

    float-to-double v1, v12

    div-double/2addr v6, v1

    double-to-float v1, v6

    invoke-static {v4, v10, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->adjust(Ljava/util/ArrayList;FF)V

    :cond_8
    :goto_b
    move v1, v0

    move-object/from16 v0, p0

    .line 381
    iget v2, v0, Landroid/graphics/Point;->x:I

    div-int/2addr v2, v9

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v9

    int-to-float v3, v3

    invoke-static {v4, v2, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->adjust(Ljava/util/ArrayList;FF)V

    move-object/from16 v2, p4

    .line 382
    invoke-static {v4, v0, v1, v5, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->adjust(Ljava/util/ArrayList;Landroid/graphics/Point;FFLcom/nightonke/boommenu/BoomMenuButton;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
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
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_29
        :pswitch_28
        :pswitch_26
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method public static getPositions(Landroid/graphics/Point;FILcom/nightonke/boommenu/BoomMenuButton;)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "FI",
            "Lcom/nightonke/boommenu/BoomMenuButton;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 391
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 393
    div-int/lit8 v4, v2, 0x2

    .line 395
    invoke-virtual/range {p3 .. p3}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonHorizontalMargin()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v5, v6

    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float v9, v5, v8

    .line 399
    invoke-virtual/range {p3 .. p3}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonVerticalMargin()F

    move-result v10

    div-float v11, v10, v6

    mul-float/2addr v8, v10

    .line 403
    invoke-virtual/range {p3 .. p3}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonInclinedMargin()F

    move-result v12

    mul-float v13, v6, v1

    const/high16 v14, 0x40400000    # 3.0f

    mul-float v15, v14, v1

    add-float v14, v7, v1

    move/from16 v17, v7

    float-to-double v6, v14

    move/from16 v19, v8

    move/from16 v18, v9

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    .line 410
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v20, v20, v8

    div-double v6, v6, v20

    double-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v20, v6, v7

    sub-float v7, v6, v20

    .line 414
    sget-object v21, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager$1;->$SwitchMap$com$nightonke$boommenu$BoomButtons$ButtonPlaceEnum:[I

    invoke-virtual/range {p3 .. p3}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonPlaceEnum()Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->ordinal()I

    move-result v8

    aget v8, v21, v8

    const/16 v9, 0x11

    if-eq v8, v9, :cond_0

    const/16 v9, 0x15

    if-eq v8, v9, :cond_0

    const/16 v9, 0x23

    if-eq v8, v9, :cond_1

    const/16 v9, 0x26

    if-eq v8, v9, :cond_0

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_0

    move/from16 v23, v10

    move/from16 v22, v11

    move/from16 v9, v20

    const/high16 v8, 0x40000000    # 2.0f

    :goto_0
    move v10, v7

    move v7, v6

    move v6, v14

    goto :goto_2

    :cond_0
    move/from16 v23, v10

    move/from16 v22, v11

    const/high16 v8, 0x40000000    # 2.0f

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    goto :goto_1

    :cond_1
    add-float v6, v11, v1

    float-to-double v7, v6

    move/from16 v22, v11

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    .line 420
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    move/from16 v23, v10

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v9

    div-double/2addr v7, v11

    double-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v20, v7, v8

    sub-float v9, v7, v20

    move v10, v9

    move/from16 v9, v20

    goto :goto_2

    :goto_1
    add-float/2addr v12, v13

    float-to-double v11, v12

    .line 416
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    div-double/2addr v11, v9

    double-to-float v9, v11

    goto :goto_0

    :goto_2
    mul-float v11, v8, v9

    mul-float v12, v8, v6

    const/high16 v16, 0x40400000    # 3.0f

    mul-float v0, v16, v6

    mul-float/2addr v8, v7

    .line 431
    sget-object v16, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager$1;->$SwitchMap$com$nightonke$boommenu$BoomButtons$ButtonPlaceEnum:[I

    move/from16 v24, v4

    invoke-virtual/range {p3 .. p3}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonPlaceEnum()Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->ordinal()I

    move-result v4

    aget v4, v16, v4

    const/16 v16, 0x0

    const/4 v2, 0x0

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 740
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Button place enum not found!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :pswitch_0
    invoke-virtual/range {p3 .. p3}, Lcom/nightonke/boommenu/BoomMenuButton;->getCustomButtonPlacePositions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_1
    neg-float v0, v11

    .line 726
    invoke-static {v2, v0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v4, v9

    .line 727
    invoke-static {v4, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    invoke-static {v9, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    invoke-static {v2, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    invoke-static {v11, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-static {v4, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    invoke-static {v9, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    invoke-static {v2, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_2
    neg-float v0, v11

    sub-float/2addr v0, v8

    .line 715
    invoke-static {v2, v0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v17

    neg-float v0, v0

    sub-float/2addr v0, v1

    neg-float v4, v9

    sub-float/2addr v4, v7

    .line 716
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    invoke-static {v14, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v4, v12

    .line 718
    invoke-static {v4, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    invoke-static {v2, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    invoke-static {v12, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v9, v7

    .line 721
    invoke-static {v0, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-static {v14, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v11, v8

    .line 723
    invoke-static {v2, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_3
    neg-float v0, v5

    sub-float/2addr v0, v13

    move/from16 v4, v23

    neg-float v6, v4

    sub-float/2addr v6, v13

    .line 704
    invoke-static {v0, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    invoke-static {v2, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v5, v13

    .line 706
    invoke-static {v5, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    invoke-static {v2, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    invoke-static {v5, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v10, v4, v13

    .line 710
    invoke-static {v0, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-static {v2, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-static {v5, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_4
    move/from16 v0, v17

    neg-float v0, v0

    sub-float/2addr v0, v1

    move/from16 v10, v19

    neg-float v2, v10

    sub-float/2addr v2, v15

    .line 694
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    invoke-static {v14, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v6, v22

    neg-float v2, v6

    sub-float/2addr v2, v1

    .line 696
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    invoke-static {v14, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v11, v6, v1

    .line 698
    invoke-static {v0, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    invoke-static {v14, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v8, v10, v15

    .line 700
    invoke-static {v0, v8}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    invoke-static {v14, v8}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_5
    move/from16 v0, v17

    move/from16 v5, v18

    move/from16 v6, v22

    neg-float v2, v5

    sub-float/2addr v2, v15

    neg-float v4, v6

    sub-float/2addr v4, v1

    .line 684
    invoke-static {v2, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v0

    sub-float/2addr v0, v1

    .line 685
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    invoke-static {v14, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v9, v5, v15

    .line 687
    invoke-static {v9, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v11, v6, v1

    .line 688
    invoke-static {v2, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-static {v0, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    invoke-static {v14, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    invoke-static {v9, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_6
    neg-float v0, v11

    .line 674
    invoke-static {v2, v0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v4, v9

    .line 675
    invoke-static {v4, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-static {v9, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    invoke-static {v11, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-static {v4, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-static {v9, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-static {v2, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_7
    move/from16 v0, v17

    neg-float v4, v11

    sub-float/2addr v4, v8

    .line 664
    invoke-static {v2, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v0

    sub-float/2addr v0, v1

    neg-float v4, v9

    sub-float/2addr v4, v7

    .line 665
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    invoke-static {v14, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v4, v12

    .line 667
    invoke-static {v4, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-static {v12, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v9, v7

    .line 669
    invoke-static {v0, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-static {v14, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v11, v8

    .line 671
    invoke-static {v2, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_8
    move/from16 v4, v23

    neg-float v0, v5

    sub-float/2addr v0, v13

    neg-float v6, v4

    sub-float/2addr v6, v13

    .line 654
    invoke-static {v0, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-static {v2, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v5, v13

    .line 656
    invoke-static {v5, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-static {v5, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v10, v4, v13

    .line 659
    invoke-static {v0, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-static {v2, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    invoke-static {v5, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_9
    move/from16 v6, v22

    neg-float v0, v9

    sub-float/2addr v0, v7

    neg-float v4, v12

    .line 644
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v9, v7

    .line 645
    invoke-static {v9, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v4, v6

    sub-float/2addr v4, v1

    .line 646
    invoke-static {v2, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    invoke-static {v9, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v11, v6, v1

    .line 649
    invoke-static {v2, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    invoke-static {v0, v12}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    invoke-static {v9, v12}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_a
    move/from16 v0, v17

    neg-float v4, v12

    neg-float v5, v9

    sub-float/2addr v5, v7

    .line 634
    invoke-static {v4, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-static {v2, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-static {v12, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v0

    sub-float/2addr v0, v1

    .line 637
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-static {v14, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v9, v7

    .line 639
    invoke-static {v4, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    invoke-static {v2, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-static {v12, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_b
    neg-float v4, v12

    neg-float v5, v7

    .line 625
    invoke-static {v4, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    invoke-static {v2, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-static {v12, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v2, v0

    .line 628
    invoke-static {v2, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v2, v6

    .line 629
    invoke-static {v2, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-static {v6, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    invoke-static {v0, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_c
    neg-float v4, v0

    neg-float v5, v9

    .line 616
    invoke-static {v4, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v4, v6

    .line 617
    invoke-static {v4, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-static {v6, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-static {v0, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v12

    .line 620
    invoke-static {v0, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-static {v2, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-static {v12, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_d
    neg-float v0, v12

    .line 607
    invoke-static {v2, v0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v9

    sub-float/2addr v0, v7

    neg-float v4, v6

    .line 608
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v9, v7

    .line 609
    invoke-static {v9, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    invoke-static {v2, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-static {v0, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-static {v9, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-static {v2, v12}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_e
    neg-float v0, v6

    neg-float v4, v9

    sub-float/2addr v4, v7

    .line 598
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    invoke-static {v6, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v4, v12

    .line 600
    invoke-static {v4, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-static {v2, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-static {v12, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v9, v7

    .line 603
    invoke-static {v0, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-static {v6, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_f
    move/from16 v4, v23

    neg-float v0, v4

    sub-float/2addr v0, v13

    .line 589
    invoke-static {v2, v0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v5

    sub-float/2addr v0, v13

    .line 590
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-static {v2, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v5, v13

    .line 592
    invoke-static {v5, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v10, v4, v13

    .line 593
    invoke-static {v0, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    invoke-static {v2, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-static {v5, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_10
    move/from16 v4, v23

    neg-float v0, v5

    sub-float/2addr v0, v13

    neg-float v6, v4

    sub-float/2addr v6, v13

    .line 580
    invoke-static {v0, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-static {v2, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v5, v13

    .line 582
    invoke-static {v5, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-static {v2, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-static {v5, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v10, v4, v13

    .line 586
    invoke-static {v2, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_11
    move/from16 v0, v17

    neg-float v4, v9

    sub-float/2addr v4, v7

    sub-float/2addr v4, v10

    .line 572
    invoke-static {v2, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v0

    sub-float/2addr v0, v1

    neg-float v4, v10

    .line 573
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-static {v14, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v12

    add-float/2addr v9, v7

    sub-float/2addr v9, v10

    .line 575
    invoke-static {v0, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-static {v2, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    invoke-static {v12, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_12
    move/from16 v0, v17

    neg-float v4, v12

    neg-float v5, v9

    sub-float/2addr v5, v7

    add-float/2addr v5, v10

    .line 564
    invoke-static {v4, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-static {v2, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-static {v12, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v0

    sub-float/2addr v0, v1

    .line 567
    invoke-static {v0, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-static {v14, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v9, v7

    add-float/2addr v9, v10

    .line 569
    invoke-static {v2, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_13
    neg-float v0, v12

    .line 556
    invoke-static {v2, v0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v9

    sub-float/2addr v0, v7

    neg-float v4, v6

    .line 557
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v9, v7

    .line 558
    invoke-static {v9, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-static {v0, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-static {v9, v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-static {v2, v12}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_14
    neg-float v0, v6

    neg-float v4, v9

    sub-float/2addr v4, v7

    .line 548
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-static {v6, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v4, v12

    .line 550
    invoke-static {v4, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-static {v12, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v9, v7

    .line 552
    invoke-static {v0, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-static {v6, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_15
    move/from16 v0, v17

    move/from16 v4, v23

    neg-float v0, v0

    sub-float/2addr v0, v1

    neg-float v5, v4

    sub-float/2addr v5, v13

    .line 540
    invoke-static {v0, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-static {v14, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-static {v14, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v10, v4, v13

    .line 544
    invoke-static {v0, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-static {v14, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_16
    move/from16 v6, v22

    neg-float v0, v5

    sub-float/2addr v0, v13

    neg-float v4, v6

    sub-float/2addr v4, v1

    .line 532
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-static {v2, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v5, v13

    .line 534
    invoke-static {v5, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v11, v6, v1

    .line 535
    invoke-static {v0, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-static {v2, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-static {v5, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_17
    neg-float v0, v9

    .line 525
    invoke-static {v0, v0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-static {v9, v0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-static {v2, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-static {v0, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-static {v9, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_18
    move/from16 v4, v23

    neg-float v0, v4

    sub-float/2addr v0, v13

    .line 518
    invoke-static {v2, v0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v5

    sub-float/2addr v0, v13

    .line 519
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-static {v2, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v5, v13

    .line 521
    invoke-static {v5, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v10, v4, v13

    .line 522
    invoke-static {v2, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_19
    move/from16 v0, v17

    neg-float v0, v0

    sub-float/2addr v0, v1

    neg-float v4, v9

    .line 511
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-static {v14, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v12

    .line 513
    invoke-static {v0, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-static {v2, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-static {v12, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_1a
    move/from16 v0, v17

    neg-float v4, v12

    neg-float v5, v7

    .line 504
    invoke-static {v4, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-static {v2, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-static {v12, v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v0

    sub-float/2addr v0, v1

    .line 507
    invoke-static {v0, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-static {v14, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_1b
    neg-float v0, v9

    .line 498
    invoke-static {v2, v0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-static {v9, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-static {v2, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_1c
    move/from16 v0, v17

    move/from16 v6, v22

    neg-float v0, v0

    sub-float/2addr v0, v1

    neg-float v2, v6

    sub-float/2addr v2, v1

    .line 492
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-static {v14, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v11, v6, v1

    .line 494
    invoke-static {v0, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-static {v14, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_1d
    neg-float v0, v7

    .line 487
    invoke-static {v2, v0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v0, v6

    .line 488
    invoke-static {v0, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-static {v6, v9}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_1e
    neg-float v0, v6

    neg-float v4, v9

    .line 482
    invoke-static {v0, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-static {v6, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-static {v2, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_1f
    move/from16 v4, v23

    neg-float v0, v4

    sub-float/2addr v0, v13

    .line 477
    invoke-static {v2, v0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    invoke-static {v2, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v10, v4, v13

    .line 479
    invoke-static {v2, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_20
    neg-float v0, v5

    sub-float/2addr v0, v13

    .line 472
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-static {v2, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v5, v13

    .line 474
    invoke-static {v5, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_21
    move/from16 v6, v22

    neg-float v0, v6

    sub-float/2addr v0, v1

    .line 468
    invoke-static {v2, v0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float v11, v6, v1

    .line 469
    invoke-static {v2, v11}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_22
    move/from16 v0, v17

    neg-float v0, v0

    sub-float/2addr v0, v1

    .line 464
    invoke-static {v0, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-static {v14, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 461
    :pswitch_23
    invoke-static {v2, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_4
    move-object/from16 v0, p0

    goto/16 :goto_d

    :pswitch_24
    move v7, v2

    move/from16 v6, v22

    move/from16 v4, v23

    move/from16 v2, p2

    .line 447
    rem-int/lit8 v0, v2, 0x2

    if-nez v0, :cond_4

    add-int/lit8 v0, v24, -0x1

    :goto_5
    if-ltz v0, :cond_3

    neg-float v2, v1

    sub-float/2addr v2, v6

    int-to-float v5, v0

    add-float v10, v13, v4

    mul-float/2addr v5, v10

    sub-float/2addr v2, v5

    .line 449
    invoke-static {v7, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_3
    move/from16 v0, v16

    move/from16 v8, v24

    :goto_6
    if-ge v0, v8, :cond_2

    add-float v2, v1, v6

    int-to-float v5, v0

    add-float v10, v13, v4

    mul-float/2addr v5, v10

    add-float/2addr v2, v5

    .line 451
    invoke-static {v7, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4
    move/from16 v8, v24

    add-int/lit8 v0, v8, -0x1

    :goto_7
    if-ltz v0, :cond_5

    neg-float v2, v13

    sub-float/2addr v2, v4

    int-to-float v5, v0

    add-float v10, v13, v4

    mul-float/2addr v5, v10

    sub-float/2addr v2, v5

    .line 454
    invoke-static {v7, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 455
    :cond_5
    invoke-static {v7, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v16

    :goto_8
    if-ge v0, v8, :cond_2

    add-float v10, v13, v4

    int-to-float v2, v0

    mul-float/2addr v2, v10

    add-float/2addr v10, v2

    .line 457
    invoke-static {v7, v10}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :pswitch_25
    move v7, v2

    move/from16 v0, v17

    move/from16 v8, v24

    move/from16 v2, p2

    .line 433
    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_7

    add-int/lit8 v4, v8, -0x1

    :goto_9
    if-ltz v4, :cond_6

    neg-float v2, v1

    sub-float/2addr v2, v0

    int-to-float v6, v4

    add-float v9, v13, v5

    mul-float/2addr v6, v9

    sub-float/2addr v2, v6

    .line 435
    invoke-static {v2, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :cond_6
    move/from16 v0, v16

    :goto_a
    if-ge v0, v8, :cond_2

    int-to-float v2, v0

    add-float v4, v13, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v14

    .line 437
    invoke-static {v2, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_7
    add-int/lit8 v4, v8, -0x1

    :goto_b
    if-ltz v4, :cond_8

    neg-float v0, v13

    sub-float/2addr v0, v5

    int-to-float v2, v4

    add-float v6, v13, v5

    mul-float/2addr v2, v6

    sub-float/2addr v0, v2

    .line 440
    invoke-static {v0, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    .line 441
    :cond_8
    invoke-static {v7, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v16

    :goto_c
    if-ge v0, v8, :cond_2

    add-float v2, v13, v5

    int-to-float v4, v0

    mul-float/2addr v4, v2

    add-float/2addr v2, v4

    .line 443
    invoke-static {v2, v7}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->point(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 743
    :goto_d
    iget v2, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v4, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v3, v2, v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->adjust(Ljava/util/ArrayList;FF)V

    move-object/from16 v2, p3

    .line 744
    invoke-static {v3, v0, v1, v1, v2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->adjust(Ljava/util/ArrayList;Landroid/graphics/Point;FFLcom/nightonke/boommenu/BoomMenuButton;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static point(FF)Landroid/graphics/PointF;
    .locals 1

    .line 806
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
