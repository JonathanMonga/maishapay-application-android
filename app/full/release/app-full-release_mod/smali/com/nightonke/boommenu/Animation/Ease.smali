.class public Lcom/nightonke/boommenu/Animation/Ease;
.super Ljava/lang/Object;
.source "Ease.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# static fields
.field private static eases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nightonke/boommenu/Animation/Ease;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/graphics/PointF;

.field private ableToDefineWithControlPoints:Ljava/lang/Boolean;

.field private b:Landroid/graphics/PointF;

.field private c:Landroid/graphics/PointF;

.field private easeEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field private end:Landroid/graphics/PointF;

.field private start:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>(Lcom/nightonke/boommenu/Animation/EaseEnum;)V
    .locals 10

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->start:Landroid/graphics/PointF;

    .line 24
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->end:Landroid/graphics/PointF;

    .line 25
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->a:Landroid/graphics/PointF;

    .line 26
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->b:Landroid/graphics/PointF;

    .line 27
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->c:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->ableToDefineWithControlPoints:Ljava/lang/Boolean;

    .line 46
    sget-object v0, Lcom/nightonke/boommenu/Animation/Ease$1;->$SwitchMap$com$nightonke$boommenu$Animation$EaseEnum:[I

    invoke-virtual {p1}, Lcom/nightonke/boommenu/Animation/EaseEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Ease-enum not found!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    .line 128
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->ableToDefineWithControlPoints:Ljava/lang/Boolean;

    goto/16 :goto_0

    :pswitch_1
    const-wide v1, 0x3fe5c28f5c28f5c3L    # 0.68

    const-wide v3, -0x401e666666666666L    # -0.55

    const-wide v5, 0x3fd0f5c28f5c28f6L    # 0.265

    const-wide v7, 0x3ff8cccccccccccdL    # 1.55

    move-object v0, p0

    .line 120
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_2
    const-wide v1, 0x3fc645a1cac08312L    # 0.174

    const-wide v3, 0x3fec51eb851eb852L    # 0.885

    const-wide v5, 0x3fd47ae147ae147bL    # 0.32

    const-wide v7, 0x3ff4666666666666L    # 1.275

    move-object v0, p0

    .line 117
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_3
    const-wide v1, 0x3fe3333333333333L    # 0.6

    const-wide v3, -0x4036666666666666L    # -0.2

    const-wide v5, 0x3fe7851eb851eb85L    # 0.735

    const-wide v7, 0x3fa70a3d70a3d70aL    # 0.045

    move-object v0, p0

    .line 114
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_4
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    .line 111
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_5
    const-wide v1, 0x3fc851eb851eb852L    # 0.19

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide v5, 0x3fcc28f5c28f5c29L    # 0.22

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    .line 108
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_6
    const-wide v1, 0x3fee666666666666L    # 0.95

    const-wide v3, 0x3fa999999999999aL    # 0.05

    const-wide v5, 0x3fe970a3d70a3d71L    # 0.795

    const-wide v7, 0x3fa1eb851eb851ecL    # 0.035

    move-object v0, p0

    .line 105
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_7
    const-wide v1, 0x3fe91eb851eb851fL    # 0.785

    const-wide v3, 0x3fc147ae147ae148L    # 0.135

    const-wide v5, 0x3fc3333333333333L    # 0.15

    const-wide v7, 0x3feb851eb851eb85L    # 0.86

    move-object v0, p0

    .line 102
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_8
    const-wide v1, 0x3fb3333333333333L    # 0.075

    const-wide v3, 0x3fea3d70a3d70a3dL    # 0.82

    const-wide v5, 0x3fc51eb851eb851fL    # 0.165

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    .line 99
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_9
    const-wide v1, 0x3fe3333333333333L    # 0.6

    const-wide v3, 0x3fa47ae147ae147bL    # 0.04

    const-wide v5, 0x3fef5c28f5c28f5cL    # 0.98

    const-wide v7, 0x3fd570a3d70a3d71L    # 0.335

    move-object v0, p0

    .line 96
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_a
    const-wide v1, 0x3feb851eb851eb85L    # 0.86

    const-wide/16 v3, 0x0

    const-wide v5, 0x3fb1eb851eb851ecL    # 0.07

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    .line 93
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_b
    const-wide v1, 0x3fcd70a3d70a3d71L    # 0.23

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide v5, 0x3fd47ae147ae147bL    # 0.32

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    .line 90
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_c
    const-wide v1, 0x3fe828f5c28f5c29L    # 0.755

    const-wide v3, 0x3fa999999999999aL    # 0.05

    const-wide v5, 0x3feb5c28f5c28f5cL    # 0.855

    const-wide v7, 0x3faeb851eb851eb8L    # 0.06

    move-object v0, p0

    .line 87
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_d
    const-wide v1, 0x3fe8a3d70a3d70a4L    # 0.77

    const-wide/16 v3, 0x0

    const-wide v5, 0x3fc6666666666666L    # 0.175

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    .line 84
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_e
    const-wide v1, 0x3fc51eb851eb851fL    # 0.165

    const-wide v3, 0x3feae147ae147ae1L    # 0.84

    const-wide v5, 0x3fdc28f5c28f5c29L    # 0.44

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    .line 81
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_f
    const-wide v1, 0x3feca3d70a3d70a4L    # 0.895

    const-wide v3, 0x3f9eb851eb851eb8L    # 0.03

    const-wide v5, 0x3fe5eb851eb851ecL    # 0.685

    const-wide v7, 0x3fcc28f5c28f5c29L    # 0.22

    move-object v0, p0

    .line 78
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_10
    const-wide v1, 0x3fe4a3d70a3d70a4L    # 0.645

    const-wide v3, 0x3fa70a3d70a3d70aL    # 0.045

    const-wide v5, 0x3fd570a3d70a3d71L    # 0.335

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    .line 75
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_11
    const-wide v1, 0x3fcb851eb851eb85L    # 0.215

    const-wide v3, 0x3fe3851eb851eb85L    # 0.61

    const-wide v5, 0x3fd6b851eb851eb8L    # 0.355

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    .line 72
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_12
    const-wide v1, 0x3fe199999999999aL    # 0.55

    const-wide v3, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v5, 0x3fe599999999999aL    # 0.675

    const-wide v7, 0x3fc851eb851eb852L    # 0.19

    move-object v0, p0

    .line 69
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_13
    const-wide v1, 0x3fdd1eb851eb851fL    # 0.455

    const-wide v3, 0x3f9eb851eb851eb8L    # 0.03

    const-wide v5, 0x3fe07ae147ae147bL    # 0.515

    const-wide v7, 0x3fee8f5c28f5c28fL    # 0.955

    move-object v0, p0

    .line 66
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto/16 :goto_0

    :pswitch_14
    const-wide/high16 v1, 0x3fd0000000000000L    # 0.25

    const-wide v3, 0x3fdd70a3d70a3d71L    # 0.46

    const-wide v5, 0x3fdccccccccccccdL    # 0.45

    const-wide v7, 0x3fee147ae147ae14L    # 0.94

    move-object v0, p0

    .line 63
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto :goto_0

    :pswitch_15
    const-wide v1, 0x3fe199999999999aL    # 0.55

    const-wide v3, 0x3fb5c28f5c28f5c3L    # 0.085

    const-wide v5, 0x3fe5c28f5c28f5c3L    # 0.68

    const-wide v7, 0x3fe0f5c28f5c28f6L    # 0.53

    move-object v0, p0

    .line 60
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto :goto_0

    :pswitch_16
    const-wide v1, 0x3fdc7ae147ae147bL    # 0.445

    const-wide v3, 0x3fa999999999999aL    # 0.05

    const-wide v5, 0x3fe199999999999aL    # 0.55

    const-wide v7, 0x3fee666666666666L    # 0.95

    move-object v0, p0

    .line 57
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto :goto_0

    :pswitch_17
    const-wide v1, 0x3fd8f5c28f5c28f6L    # 0.39

    const-wide v3, 0x3fe2666666666666L    # 0.575

    const-wide v5, 0x3fe2147ae147ae14L    # 0.565

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    .line 54
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto :goto_0

    :pswitch_18
    const-wide v1, 0x3fde147ae147ae14L    # 0.47

    const-wide/16 v3, 0x0

    const-wide v5, 0x3fe7d70a3d70a3d7L    # 0.745

    const-wide v7, 0x3fe6e147ae147ae1L    # 0.715

    move-object v0, p0

    .line 51
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    goto :goto_0

    :pswitch_19
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    .line 48
    invoke-direct/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/Ease;->init(DDDD)V

    .line 133
    :goto_0
    iput-object p1, p0, Lcom/nightonke/boommenu/Animation/Ease;->easeEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getBezierCoordinateY(F)F
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->start:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->start:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->end:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->end:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    return p1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->c:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/nightonke/boommenu/Animation/Ease;->start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 173
    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->b:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/nightonke/boommenu/Animation/Ease;->end:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/nightonke/boommenu/Animation/Ease;->start:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v4

    mul-float/2addr v3, v1

    iget-object v1, p0, Lcom/nightonke/boommenu/Animation/Ease;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 174
    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->a:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/nightonke/boommenu/Animation/Ease;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/nightonke/boommenu/Animation/Ease;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 175
    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/nightonke/boommenu/Animation/Ease;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/nightonke/boommenu/Animation/Ease;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float/2addr p1, v0

    return p1
.end method

.method private getEaseBounceOffsetHelper1(FFFF)F
    .locals 1

    sub-float p1, p4, p1

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/nightonke/boommenu/Animation/Ease;->getEaseBounceOffsetHelper2(FFFF)F

    move-result p1

    sub-float/2addr p3, p1

    add-float/2addr p3, p2

    return p3
.end method

.method private getEaseBounceOffsetHelper2(FFFF)F
    .locals 7

    div-float/2addr p1, p4

    float-to-double v0, p1

    const-wide v2, 0x3fd745d1745d1746L    # 0.36363636363636365

    cmpg-double p4, v0, v2

    const/high16 v2, 0x40f20000    # 7.5625f

    if-gez p4, :cond_0

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    mul-float/2addr p3, v2

    add-float/2addr p3, p2

    return p3

    :cond_0
    const-wide v3, 0x3fe745d1745d1746L    # 0.7272727272727273

    cmpg-double p1, v0, v3

    const-wide v5, 0x3fe1745d1745d174L    # 0.5454545454545454

    if-gez p1, :cond_1

    sub-double/2addr v0, v5

    double-to-float p1, v0

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    const/high16 p1, 0x3f400000    # 0.75f

    add-float/2addr v2, p1

    mul-float/2addr p3, v2

    add-float/2addr p3, p2

    return p3

    :cond_1
    cmpg-double p1, v0, v3

    if-gez p1, :cond_2

    sub-double/2addr v0, v5

    double-to-float p1, v0

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    const/high16 p1, 0x3f700000    # 0.9375f

    add-float/2addr v2, p1

    mul-float/2addr p3, v2

    add-float/2addr p3, p2

    return p3

    :cond_2
    const-wide v3, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    sub-double/2addr v0, v3

    double-to-float p1, v0

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    const/high16 p1, 0x3f7c0000    # 0.984375f

    add-float/2addr v2, p1

    mul-float/2addr p3, v2

    add-float/2addr p3, p2

    return p3
.end method

.method private getEaseInBounceOffset(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    const/4 v1, 0x0

    .line 182
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/nightonke/boommenu/Animation/Ease;->getEaseBounceOffsetHelper2(FFFF)F

    move-result p1

    sub-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private getEaseInElasticOffset(F)F
    .locals 8

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr p1, v1

    cmpl-float v2, p1, v1

    if-nez v2, :cond_1

    return v1

    :cond_1
    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3d99999a    # 0.075f

    sub-float/2addr p1, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v6, p1

    float-to-double v6, v6

    .line 242
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v1

    mul-float/2addr p1, v1

    sub-float/2addr p1, v3

    const v1, 0x40c90fdb

    mul-float/2addr p1, v1

    div-float/2addr p1, v2

    float-to-double v1, p1

    .line 243
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float/2addr v4, p1

    neg-float p1, v4

    add-float/2addr p1, v0

    return p1
.end method

.method private getEaseInOutBounceOffset(F)F
    .locals 5

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-gez v1, :cond_0

    mul-float/2addr p1, v2

    .line 227
    invoke-direct {p0, p1, v4, v3, v3}, Lcom/nightonke/boommenu/Animation/Ease;->getEaseBounceOffsetHelper1(FFFF)F

    move-result p1

    mul-float/2addr p1, v0

    add-float/2addr p1, v4

    return p1

    :cond_0
    mul-float/2addr p1, v2

    .line 229
    invoke-direct {p0, p1, v4, v3, v3}, Lcom/nightonke/boommenu/Animation/Ease;->getEaseBounceOffsetHelper2(FFFF)F

    move-result p1

    mul-float/2addr p1, v0

    add-float/2addr p1, v0

    add-float/2addr p1, v4

    return p1
.end method

.method private getEaseInOutElasticOffset(F)F
    .locals 11

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    div-float/2addr p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, p1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_1

    return v3

    :cond_1
    const v2, 0x3ee66666    # 0.45f

    const v4, 0x3de66666    # 0.1125f

    cmpg-float v5, p1, v3

    const v6, 0x40c90fdb

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    if-gez v5, :cond_2

    sub-float/2addr p1, v3

    const/high16 v1, -0x41000000    # -0.5f

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v5, p1

    float-to-double v9, v5

    .line 268
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v5, v7

    mul-float/2addr v5, v3

    mul-float/2addr p1, v3

    sub-float/2addr p1, v4

    mul-float/2addr p1, v6

    div-float/2addr p1, v2

    float-to-double v2, p1

    .line 269
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    mul-float/2addr v5, p1

    mul-float/2addr v1, v5

    add-float/2addr v1, v0

    return v1

    :cond_2
    sub-float/2addr p1, v3

    const/high16 v5, -0x3ee00000    # -10.0f

    mul-float/2addr v5, p1

    float-to-double v9, v5

    .line 272
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v5, v7

    mul-float/2addr v5, v3

    mul-float/2addr p1, v3

    sub-float/2addr p1, v4

    mul-float/2addr p1, v6

    div-float/2addr p1, v2

    float-to-double v6, p1

    .line 273
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float/2addr v5, p1

    mul-float/2addr v5, v1

    add-float/2addr v5, v3

    add-float/2addr v5, v0

    return v5
.end method

.method private getEaseOutBounceOffset(F)F
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, v0

    float-to-double v1, p1

    const-wide v3, 0x3fd745d1745d1746L    # 0.36363636363636365

    cmpg-double v5, v1, v3

    const/high16 v3, 0x40f20000    # 7.5625f

    const/4 v4, 0x0

    if-gez v5, :cond_0

    mul-float/2addr v3, p1

    mul-float/2addr v3, p1

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    return v0

    :cond_0
    const-wide v5, 0x3fe745d1745d1746L    # 0.7272727272727273

    cmpg-double p1, v1, v5

    if-gez p1, :cond_1

    const-wide v5, 0x3fe1745d1745d174L    # 0.5454545454545454

    sub-double/2addr v1, v5

    double-to-float p1, v1

    mul-float/2addr v3, p1

    mul-float/2addr v3, p1

    const/high16 p1, 0x3f400000    # 0.75f

    add-float/2addr v3, p1

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    return v0

    :cond_1
    const-wide v5, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double p1, v1, v5

    if-gez p1, :cond_2

    const-wide v5, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    sub-double/2addr v1, v5

    double-to-float p1, v1

    mul-float/2addr v3, p1

    mul-float/2addr v3, p1

    const/high16 p1, 0x3f700000    # 0.9375f

    add-float/2addr v3, p1

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    return v0

    :cond_2
    const-wide v5, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    sub-double/2addr v1, v5

    double-to-float p1, v1

    mul-float/2addr v3, p1

    mul-float/2addr v3, p1

    const/high16 p1, 0x3f7c0000    # 0.984375f

    add-float/2addr v3, p1

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    return v0
.end method

.method private getEaseOutElasticOffset(F)F
    .locals 8

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr p1, v1

    cmpl-float v2, p1, v1

    if-nez v2, :cond_1

    return v1

    :cond_1
    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3d99999a    # 0.075f

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v6, -0x3ee00000    # -10.0f

    mul-float/2addr v6, p1

    float-to-double v6, v6

    .line 254
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v1

    mul-float/2addr p1, v1

    sub-float/2addr p1, v3

    const v3, 0x40c90fdb

    mul-float/2addr p1, v3

    div-float/2addr p1, v2

    float-to-double v2, p1

    .line 255
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    mul-float/2addr v4, p1

    add-float/2addr v4, v1

    add-float/2addr v4, v0

    return v4
.end method

.method public static getInstance(Lcom/nightonke/boommenu/Animation/EaseEnum;)Lcom/nightonke/boommenu/Animation/Ease;
    .locals 3

    .line 33
    sget-object v0, Lcom/nightonke/boommenu/Animation/Ease;->eases:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/nightonke/boommenu/Animation/EaseEnum;->values()[Lcom/nightonke/boommenu/Animation/EaseEnum;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/Ease;->eases:Ljava/util/ArrayList;

    .line 35
    invoke-static {}, Lcom/nightonke/boommenu/Animation/EaseEnum;->values()[Lcom/nightonke/boommenu/Animation/EaseEnum;

    move-result-object v0

    array-length v0, v0

    :goto_0
    if-lez v0, :cond_0

    sget-object v1, Lcom/nightonke/boommenu/Animation/Ease;->eases:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 37
    :cond_0
    sget-object v0, Lcom/nightonke/boommenu/Animation/Ease;->eases:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/nightonke/boommenu/Animation/EaseEnum;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nightonke/boommenu/Animation/Ease;

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Lcom/nightonke/boommenu/Animation/Ease;

    invoke-direct {v0, p0}, Lcom/nightonke/boommenu/Animation/Ease;-><init>(Lcom/nightonke/boommenu/Animation/EaseEnum;)V

    .line 40
    sget-object v1, Lcom/nightonke/boommenu/Animation/Ease;->eases:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/nightonke/boommenu/Animation/EaseEnum;->getValue()I

    move-result p0

    invoke-virtual {v1, p0, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private init(DDDD)V
    .locals 0

    double-to-float p1, p1

    double-to-float p2, p3

    double-to-float p3, p5

    double-to-float p4, p7

    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nightonke/boommenu/Animation/Ease;->init(FFFF)V

    return-void
.end method

.method private init(FFFF)V
    .locals 1

    const/4 v0, 0x1

    .line 137
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->ableToDefineWithControlPoints:Ljava/lang/Boolean;

    .line 138
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->start:Landroid/graphics/PointF;

    .line 139
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/nightonke/boommenu/Animation/Ease;->end:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/Ease;->ableToDefineWithControlPoints:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/Animation/Ease;->getBezierCoordinateY(F)F

    move-result p1

    return p1

    .line 151
    :cond_0
    sget-object v0, Lcom/nightonke/boommenu/Animation/Ease$1;->$SwitchMap$com$nightonke$boommenu$Animation$EaseEnum:[I

    iget-object v1, p0, Lcom/nightonke/boommenu/Animation/Ease;->easeEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    invoke-virtual {v1}, Lcom/nightonke/boommenu/Animation/EaseEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 165
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Wrong ease-enum initialize method."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/Animation/Ease;->getEaseInOutElasticOffset(F)F

    move-result p1

    return p1

    .line 159
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/Animation/Ease;->getEaseOutElasticOffset(F)F

    move-result p1

    return p1

    .line 155
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/Animation/Ease;->getEaseInElasticOffset(F)F

    move-result p1

    return p1

    .line 161
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/Animation/Ease;->getEaseInOutBounceOffset(F)F

    move-result p1

    return p1

    .line 157
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/Animation/Ease;->getEaseOutBounceOffset(F)F

    move-result p1

    return p1

    .line 153
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/Animation/Ease;->getEaseInBounceOffset(F)F

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
