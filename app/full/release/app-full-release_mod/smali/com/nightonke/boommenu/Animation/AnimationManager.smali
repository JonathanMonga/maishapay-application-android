.class public Lcom/nightonke/boommenu/Animation/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBufferValues(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 326
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static varargs animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;[F)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 32
    invoke-static {p0, p1, p8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 33
    invoke-virtual {p0, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 34
    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p6, :cond_0

    .line 35
    invoke-virtual {p0, p6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    if-eqz p7, :cond_1

    .line 36
    invoke-virtual {p0, p7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-object p0
.end method

.method public static varargs animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;[F)Landroid/animation/ObjectAnimator;
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object/from16 v8, p7

    .line 43
    invoke-static/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static varargs animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TypeEvaluator;Landroid/animation/AnimatorListenerAdapter;[I)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 68
    invoke-static {p0, p1, p8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 69
    invoke-virtual {p0, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 70
    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 71
    invoke-virtual {p0, p6}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    if-eqz p7, :cond_0

    .line 72
    invoke-virtual {p0, p7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-object p0
.end method

.method public static varargs animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TypeEvaluator;[I)Landroid/animation/ObjectAnimator;
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object/from16 v8, p7

    .line 63
    invoke-static/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TypeEvaluator;Landroid/animation/AnimatorListenerAdapter;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static animate(Ljava/lang/String;JJ[FLandroid/animation/TimeInterpolator;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ[F",
            "Landroid/animation/TimeInterpolator;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v9, 0x0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p6

    move-object/from16 v10, p5

    .line 49
    invoke-static/range {v2 .. v10}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;[F)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static calculateHideXY(Lcom/nightonke/boommenu/Animation/BoomEnum;Landroid/graphics/PointF;Lcom/nightonke/boommenu/Animation/Ease;ILandroid/graphics/PointF;Landroid/graphics/PointF;[F[F)V
    .locals 18

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 222
    iget v0, v4, Landroid/graphics/PointF;->x:F

    iget v1, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lcom/nightonke/boommenu/Animation/BoomEnum;->LINE:Lcom/nightonke/boommenu/Animation/BoomEnum;

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    .line 224
    :goto_0
    iget v8, v4, Landroid/graphics/PointF;->x:F

    .line 225
    iget v9, v4, Landroid/graphics/PointF;->y:F

    .line 226
    iget v10, v5, Landroid/graphics/PointF;->x:F

    .line 227
    iget v11, v5, Landroid/graphics/PointF;->y:F

    int-to-float v12, v3

    div-float/2addr v1, v12

    sub-float v12, v10, v8

    const/4 v13, 0x0

    .line 233
    sget-object v14, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$BoomEnum:[I

    invoke-virtual {v0}, Lcom/nightonke/boommenu/Animation/BoomEnum;->ordinal()I

    move-result v15

    aget v14, v14, v15

    const/4 v15, 0x0

    const/high16 v16, 0x40000000    # 2.0f

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    mul-float v16, v16, v10

    sub-float v16, v16, v8

    sub-float v0, v16, v10

    mul-float v4, v9, v0

    mul-float v5, v9, v12

    add-float/2addr v4, v5

    sub-float v5, v8, v16

    mul-float/2addr v11, v5

    add-float/2addr v4, v11

    mul-float v11, v8, v8

    mul-float/2addr v0, v11

    mul-float v14, v16, v16

    mul-float/2addr v14, v12

    add-float/2addr v0, v14

    mul-float/2addr v10, v10

    mul-float/2addr v10, v5

    add-float/2addr v0, v10

    div-float/2addr v4, v0

    sub-float v0, v9, v9

    div-float/2addr v0, v5

    add-float v16, v8, v16

    mul-float v16, v16, v4

    sub-float v0, v0, v16

    mul-float/2addr v11, v4

    sub-float/2addr v9, v11

    mul-float v5, v8, v0

    sub-float/2addr v9, v5

    :goto_1
    if-gt v15, v3, :cond_1

    .line 268
    invoke-virtual {v2, v13}, Lcom/nightonke/boommenu/Animation/Ease;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v5, v12

    add-float/2addr v5, v8

    .line 269
    aput v5, p6, v15

    mul-float v10, v4, v5

    mul-float/2addr v10, v5

    mul-float/2addr v5, v0

    add-float/2addr v10, v5

    add-float/2addr v10, v9

    .line 270
    aput v10, p7, v15

    add-float/2addr v13, v1

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 245
    :pswitch_1
    iget v0, v4, Landroid/graphics/PointF;->x:F

    .line 246
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 247
    iget v8, v5, Landroid/graphics/PointF;->x:F

    .line 248
    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float v16, v16, v0

    sub-float v16, v16, v8

    sub-float v9, v16, v0

    mul-float v10, v5, v9

    sub-float v11, v0, v8

    mul-float v14, v5, v11

    add-float/2addr v10, v14

    sub-float v14, v8, v16

    mul-float/2addr v4, v14

    add-float/2addr v10, v4

    mul-float v4, v8, v8

    mul-float/2addr v9, v4

    mul-float v17, v16, v16

    mul-float v17, v17, v11

    add-float v9, v9, v17

    mul-float v11, v0, v0

    mul-float/2addr v11, v14

    add-float/2addr v9, v11

    div-float/2addr v10, v9

    sub-float v9, v5, v5

    div-float/2addr v9, v14

    add-float v16, v8, v16

    mul-float v16, v16, v10

    sub-float v9, v9, v16

    mul-float/2addr v4, v10

    sub-float/2addr v5, v4

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    :goto_2
    if-gt v15, v3, :cond_1

    .line 255
    invoke-virtual {v2, v13}, Lcom/nightonke/boommenu/Animation/Ease;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v12

    add-float/2addr v4, v0

    .line 256
    aput v4, p6, v15

    mul-float v8, v10, v4

    mul-float/2addr v8, v4

    mul-float/2addr v4, v9

    add-float/2addr v8, v4

    add-float/2addr v8, v5

    .line 257
    aput v8, p7, v15

    add-float/2addr v13, v1

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :pswitch_2
    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 241
    invoke-static/range {v0 .. v7}, Lcom/nightonke/boommenu/Animation/AnimationManager;->calculateShowXY(Lcom/nightonke/boommenu/Animation/BoomEnum;Landroid/graphics/PointF;Lcom/nightonke/boommenu/Animation/Ease;ILandroid/graphics/PointF;Landroid/graphics/PointF;[F[F)V

    :cond_1
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static calculateShowXY(Lcom/nightonke/boommenu/Animation/BoomEnum;Landroid/graphics/PointF;Lcom/nightonke/boommenu/Animation/Ease;ILandroid/graphics/PointF;Landroid/graphics/PointF;[F[F)V
    .locals 19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 107
    iget v0, v4, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v8

    if-gez v0, :cond_0

    sget-object v0, Lcom/nightonke/boommenu/Animation/BoomEnum;->LINE:Lcom/nightonke/boommenu/Animation/BoomEnum;

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    .line 109
    :goto_0
    iget v9, v4, Landroid/graphics/PointF;->x:F

    .line 110
    iget v10, v4, Landroid/graphics/PointF;->y:F

    .line 111
    iget v11, v5, Landroid/graphics/PointF;->x:F

    .line 112
    iget v12, v5, Landroid/graphics/PointF;->y:F

    int-to-float v13, v3

    div-float/2addr v8, v13

    sub-float v13, v11, v9

    sub-float v14, v12, v10

    const/4 v15, 0x0

    .line 119
    sget-object v16, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$BoomEnum:[I

    invoke-virtual {v0}, Lcom/nightonke/boommenu/Animation/BoomEnum;->ordinal()I

    move-result v0

    aget v0, v16, v0

    const/16 v16, 0x0

    const/high16 v17, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    .line 215
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown boom-enum!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :pswitch_1
    invoke-static {}, Lcom/nightonke/boommenu/Animation/BoomEnum;->values()[Lcom/nightonke/boommenu/Animation/BoomEnum;

    move-result-object v0

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    sget-object v9, Lcom/nightonke/boommenu/Animation/BoomEnum;->RANDOM:Lcom/nightonke/boommenu/Animation/BoomEnum;

    invoke-virtual {v9}, Lcom/nightonke/boommenu/Animation/BoomEnum;->getValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    aget-object v0, v0, v8

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/nightonke/boommenu/Animation/AnimationManager;->calculateShowXY(Lcom/nightonke/boommenu/Animation/BoomEnum;Landroid/graphics/PointF;Lcom/nightonke/boommenu/Animation/Ease;ILandroid/graphics/PointF;Landroid/graphics/PointF;[F[F)V

    goto/16 :goto_8

    .line 194
    :pswitch_2
    iget v0, v4, Landroid/graphics/PointF;->x:F

    .line 195
    iget v1, v4, Landroid/graphics/PointF;->y:F

    .line 196
    iget v4, v5, Landroid/graphics/PointF;->x:F

    .line 197
    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float v17, v17, v0

    sub-float v17, v17, v4

    sub-float v9, v17, v0

    mul-float v10, v5, v9

    sub-float v11, v0, v4

    mul-float v12, v5, v11

    add-float/2addr v10, v12

    sub-float v12, v4, v17

    mul-float/2addr v1, v12

    add-float/2addr v10, v1

    mul-float v1, v4, v4

    mul-float/2addr v9, v1

    mul-float v14, v17, v17

    mul-float/2addr v14, v11

    add-float/2addr v9, v14

    mul-float v11, v0, v0

    mul-float/2addr v11, v12

    add-float/2addr v9, v11

    div-float/2addr v10, v9

    sub-float v9, v5, v5

    div-float/2addr v9, v12

    add-float v17, v4, v17

    mul-float v17, v17, v10

    sub-float v9, v9, v17

    mul-float/2addr v1, v10

    sub-float/2addr v5, v1

    mul-float/2addr v4, v9

    sub-float/2addr v5, v4

    move/from16 v1, v16

    :goto_1
    if-gt v1, v3, :cond_1

    .line 204
    invoke-virtual {v2, v15}, Lcom/nightonke/boommenu/Animation/Ease;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v13

    add-float/2addr v4, v0

    .line 205
    aput v4, p6, v1

    mul-float v11, v10, v4

    mul-float/2addr v11, v4

    mul-float/2addr v4, v9

    add-float/2addr v11, v4

    add-float/2addr v11, v5

    .line 206
    aput v11, p7, v1

    add-float/2addr v15, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_3
    mul-float v17, v17, v11

    sub-float v17, v17, v9

    sub-float v0, v17, v11

    mul-float v1, v10, v0

    mul-float v4, v10, v13

    add-float/2addr v1, v4

    sub-float v4, v9, v17

    mul-float/2addr v12, v4

    add-float/2addr v1, v12

    mul-float v5, v9, v9

    mul-float/2addr v0, v5

    mul-float v12, v17, v17

    mul-float/2addr v12, v13

    add-float/2addr v0, v12

    mul-float/2addr v11, v11

    mul-float/2addr v11, v4

    add-float/2addr v0, v11

    div-float/2addr v1, v0

    sub-float v0, v10, v10

    div-float/2addr v0, v4

    add-float v17, v9, v17

    mul-float v17, v17, v1

    sub-float v0, v0, v17

    mul-float/2addr v5, v1

    sub-float/2addr v10, v5

    mul-float v4, v9, v0

    sub-float/2addr v10, v4

    move/from16 v4, v16

    :goto_2
    if-gt v4, v3, :cond_1

    .line 187
    invoke-virtual {v2, v15}, Lcom/nightonke/boommenu/Animation/Ease;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v5, v13

    add-float/2addr v5, v9

    .line 188
    aput v5, p6, v4

    mul-float v11, v1, v5

    mul-float/2addr v11, v5

    mul-float/2addr v5, v0

    add-float/2addr v11, v5

    add-float/2addr v11, v10

    .line 189
    aput v11, p7, v4

    add-float/2addr v15, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :pswitch_4
    add-float v0, v10, v12

    div-float v4, v0, v17

    .line 169
    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v1, v5

    div-float v1, v1, v17

    sub-float v5, v12, v4

    mul-float v13, v9, v5

    sub-float v17, v4, v10

    mul-float v18, v11, v17

    add-float v13, v13, v18

    sub-float v18, v10, v12

    mul-float v1, v1, v18

    add-float/2addr v13, v1

    mul-float v1, v10, v10

    mul-float/2addr v5, v1

    mul-float/2addr v12, v12

    mul-float v12, v12, v17

    add-float/2addr v5, v12

    mul-float/2addr v4, v4

    mul-float v4, v4, v18

    add-float/2addr v5, v4

    div-float/2addr v13, v5

    sub-float v4, v9, v11

    div-float v4, v4, v18

    mul-float/2addr v0, v13

    sub-float/2addr v4, v0

    mul-float/2addr v1, v13

    sub-float/2addr v9, v1

    mul-float v0, v10, v4

    sub-float/2addr v9, v0

    move/from16 v0, v16

    :goto_3
    if-gt v0, v3, :cond_1

    .line 174
    invoke-virtual {v2, v15}, Lcom/nightonke/boommenu/Animation/Ease;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v14

    add-float/2addr v1, v10

    .line 175
    aput v1, p7, v0

    mul-float v5, v13, v1

    mul-float/2addr v5, v1

    mul-float/2addr v1, v4

    add-float/2addr v5, v1

    add-float/2addr v5, v9

    .line 176
    aput v5, p6, v0

    add-float/2addr v15, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_5
    add-float v0, v10, v12

    div-float v1, v0, v17

    .line 156
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float v4, v4, v17

    sub-float v5, v12, v1

    mul-float v13, v9, v5

    sub-float v17, v1, v10

    mul-float v18, v11, v17

    add-float v13, v13, v18

    sub-float v18, v10, v12

    mul-float v4, v4, v18

    add-float/2addr v13, v4

    mul-float v4, v10, v10

    mul-float/2addr v5, v4

    mul-float/2addr v12, v12

    mul-float v12, v12, v17

    add-float/2addr v5, v12

    mul-float/2addr v1, v1

    mul-float v1, v1, v18

    add-float/2addr v5, v1

    div-float/2addr v13, v5

    sub-float v1, v9, v11

    div-float v1, v1, v18

    mul-float/2addr v0, v13

    sub-float/2addr v1, v0

    mul-float/2addr v4, v13

    sub-float/2addr v9, v4

    mul-float v0, v10, v1

    sub-float/2addr v9, v0

    move/from16 v0, v16

    :goto_4
    if-gt v0, v3, :cond_1

    .line 161
    invoke-virtual {v2, v15}, Lcom/nightonke/boommenu/Animation/Ease;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v14

    add-float/2addr v4, v10

    .line 162
    aput v4, p7, v0

    mul-float v5, v13, v4

    mul-float/2addr v5, v4

    mul-float/2addr v4, v1

    add-float/2addr v5, v4

    add-float/2addr v5, v9

    .line 163
    aput v5, p6, v0

    add-float/2addr v15, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :pswitch_6
    add-float v0, v9, v11

    div-float v4, v0, v17

    .line 143
    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v1, v5

    div-float v1, v1, v17

    sub-float v5, v11, v4

    mul-float v14, v10, v5

    sub-float v17, v4, v9

    mul-float v18, v12, v17

    add-float v14, v14, v18

    sub-float v18, v9, v11

    mul-float v1, v1, v18

    add-float/2addr v14, v1

    mul-float v1, v9, v9

    mul-float/2addr v5, v1

    mul-float/2addr v11, v11

    mul-float v11, v11, v17

    add-float/2addr v5, v11

    mul-float/2addr v4, v4

    mul-float v4, v4, v18

    add-float/2addr v5, v4

    div-float/2addr v14, v5

    sub-float v4, v10, v12

    div-float v4, v4, v18

    mul-float/2addr v0, v14

    sub-float/2addr v4, v0

    mul-float/2addr v1, v14

    sub-float/2addr v10, v1

    mul-float v0, v9, v4

    sub-float/2addr v10, v0

    move/from16 v0, v16

    :goto_5
    if-gt v0, v3, :cond_1

    .line 148
    invoke-virtual {v2, v15}, Lcom/nightonke/boommenu/Animation/Ease;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v13

    add-float/2addr v1, v9

    .line 149
    aput v1, p6, v0

    mul-float v5, v14, v1

    mul-float/2addr v5, v1

    mul-float/2addr v1, v4

    add-float/2addr v5, v1

    add-float/2addr v5, v10

    .line 150
    aput v5, p7, v0

    add-float/2addr v15, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :pswitch_7
    add-float v0, v9, v11

    div-float v1, v0, v17

    .line 130
    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    sub-float v5, v11, v1

    mul-float v14, v10, v5

    sub-float v17, v1, v9

    mul-float v18, v12, v17

    add-float v14, v14, v18

    sub-float v18, v9, v11

    mul-float v4, v4, v18

    add-float/2addr v14, v4

    mul-float v4, v9, v9

    mul-float/2addr v5, v4

    mul-float/2addr v11, v11

    mul-float v11, v11, v17

    add-float/2addr v5, v11

    mul-float/2addr v1, v1

    mul-float v1, v1, v18

    add-float/2addr v5, v1

    div-float/2addr v14, v5

    sub-float v1, v10, v12

    div-float v1, v1, v18

    mul-float/2addr v0, v14

    sub-float/2addr v1, v0

    mul-float/2addr v4, v14

    sub-float/2addr v10, v4

    mul-float v0, v9, v1

    sub-float/2addr v10, v0

    move/from16 v0, v16

    :goto_6
    if-gt v0, v3, :cond_1

    .line 135
    invoke-virtual {v2, v15}, Lcom/nightonke/boommenu/Animation/Ease;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v13

    add-float/2addr v4, v9

    .line 136
    aput v4, p6, v0

    mul-float v5, v14, v4

    mul-float/2addr v5, v4

    mul-float/2addr v4, v1

    add-float/2addr v5, v4

    add-float/2addr v5, v10

    .line 137
    aput v5, p7, v0

    add-float/2addr v15, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :pswitch_8
    move/from16 v0, v16

    :goto_7
    if-gt v0, v3, :cond_1

    .line 122
    invoke-virtual {v2, v15}, Lcom/nightonke/boommenu/Animation/Ease;->getInterpolation(F)F

    move-result v1

    mul-float v4, v1, v13

    add-float/2addr v4, v9

    .line 123
    aput v4, p6, v0

    mul-float/2addr v1, v14

    add-float/2addr v1, v10

    .line 124
    aput v1, p7, v0

    add-float/2addr v15, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1
    :goto_8
    return-void

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

.method private static clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static getOrderIndex(Lcom/nightonke/boommenu/Animation/OrderEnum;I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nightonke/boommenu/Animation/OrderEnum;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    sget-object v1, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$OrderEnum:[I

    invoke-virtual {p0}, Lcom/nightonke/boommenu/Animation/OrderEnum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_4

    .line 87
    :pswitch_0
    new-array p0, p1, [Z

    move v3, v1

    .line 88
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    aput-boolean v1, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :cond_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    :cond_1
    :goto_1
    if-ge v1, p1, :cond_2

    .line 92
    invoke-virtual {v3, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 93
    aget-boolean v5, p0, v4

    if-nez v5, :cond_1

    .line 94
    aput-boolean v2, p0, v4

    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :goto_2
    :pswitch_1
    if-ge v1, p1, :cond_2

    sub-int p0, p1, v1

    sub-int/2addr p0, v2

    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :goto_3
    :pswitch_2
    if-ge v1, p1, :cond_2

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRotate3DAnimation([F[FJJLcom/nightonke/boommenu/BoomButtons/BoomButton;)Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;
    .locals 4

    .line 279
    new-instance v0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;

    invoke-virtual {p6}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->trueWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p6}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->trueHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 280
    invoke-virtual {p6}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->type()Lcom/nightonke/boommenu/ButtonEnum;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/nightonke/boommenu/Animation/AnimationManager;->getRotateXs([FLcom/nightonke/boommenu/ButtonEnum;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p6}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->type()Lcom/nightonke/boommenu/ButtonEnum;

    move-result-object p6

    invoke-static {p0, p6}, Lcom/nightonke/boommenu/Animation/AnimationManager;->getRotateYs([FLcom/nightonke/boommenu/ButtonEnum;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;-><init>(FFLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 281
    invoke-virtual {v0, p2, p3}, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->setStartOffset(J)V

    .line 282
    invoke-virtual {v0, p4, p5}, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->setDuration(J)V

    return-object v0
.end method

.method private static getRotateXs([FLcom/nightonke/boommenu/ButtonEnum;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Lcom/nightonke/boommenu/ButtonEnum;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v2, Lcom/nightonke/boommenu/ButtonEnum;->Ham:Lcom/nightonke/boommenu/ButtonEnum;

    invoke-virtual {p1, v2}, Lcom/nightonke/boommenu/ButtonEnum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x3c

    goto :goto_0

    :cond_0
    const/16 p1, 0x1e

    :goto_0
    const/4 v2, 0x0

    .line 292
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    if-eqz v2, :cond_1

    .line 294
    aget v3, p0, v2

    sub-float/2addr v3, v1

    neg-float v1, v3

    int-to-float v3, p1

    div-float/2addr v1, v3

    const v3, -0x40b6f025

    const v4, 0x3f490fdb

    .line 295
    invoke-static {v1, v3, v4}, Lcom/nightonke/boommenu/Animation/AnimationManager;->clamp(FFF)F

    move-result v1

    const/high16 v3, 0x43340000    # 180.0f

    mul-float/2addr v1, v3

    float-to-double v3, v1

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    double-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_1
    aget v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 299
    :cond_2
    invoke-static {v0}, Lcom/nightonke/boommenu/Animation/AnimationManager;->addBufferValues(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private static getRotateYs([FLcom/nightonke/boommenu/ButtonEnum;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Lcom/nightonke/boommenu/ButtonEnum;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v2, Lcom/nightonke/boommenu/ButtonEnum;->Ham:Lcom/nightonke/boommenu/ButtonEnum;

    invoke-virtual {p1, v2}, Lcom/nightonke/boommenu/ButtonEnum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x3c

    goto :goto_0

    :cond_0
    const/16 p1, 0x1e

    :goto_0
    const/4 v2, 0x0

    .line 309
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    if-eqz v2, :cond_1

    .line 311
    aget v3, p0, v2

    sub-float/2addr v3, v1

    int-to-float v1, p1

    div-float/2addr v3, v1

    const v1, -0x40b6f025

    const v4, 0x3f490fdb

    .line 312
    invoke-static {v3, v1, v4}, Lcom/nightonke/boommenu/Animation/AnimationManager;->clamp(FFF)F

    move-result v1

    const/high16 v3, 0x43340000    # 180.0f

    mul-float/2addr v1, v3

    float-to-double v3, v1

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    double-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_1
    aget v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 316
    :cond_2
    invoke-static {v0}, Lcom/nightonke/boommenu/Animation/AnimationManager;->addBufferValues(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static varargs rotate(Lcom/nightonke/boommenu/BoomButtons/BoomButton;JJLandroid/animation/TimeInterpolator;[F)V
    .locals 11

    .line 54
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->setRotateAnchorPoints()V

    const/4 v0, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rotateViews()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rotateViews()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    const-string v3, "rotation"

    const/4 v9, 0x0

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    .line 57
    invoke-static/range {v2 .. v10}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;[F)Landroid/animation/ObjectAnimator;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
