.class final Lcom/github/mikephil/charting/animation/Easing$EasingFunctions$22;
.super Ljava/lang/Object;
.source "Easing.java"

# interfaces
.implements Lcom/github/mikephil/charting/animation/EasingFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 11

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    return v2

    :cond_1
    const v1, 0x3ee66667    # 0.45000002f

    const v3, 0x3d92ad5d

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 553
    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    cmpg-float v4, p1, v2

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    if-gez v4, :cond_2

    const/high16 v0, -0x41000000    # -0.5f

    const/high16 v4, 0x41200000    # 10.0f

    sub-float/2addr p1, v2

    mul-float/2addr v4, p1

    float-to-double v9, v4

    .line 557
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v4, v7

    mul-float/2addr p1, v2

    sub-float/2addr p1, v3

    float-to-double v2, p1

    mul-double/2addr v2, v5

    float-to-double v5, v1

    div-double/2addr v2, v5

    .line 558
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float/2addr v4, p1

    mul-float/2addr v0, v4

    return v0

    :cond_2
    const/high16 v4, -0x3ee00000    # -10.0f

    sub-float/2addr p1, v2

    mul-float/2addr v4, p1

    float-to-double v9, v4

    .line 560
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v4, v7

    mul-float/2addr p1, v2

    sub-float/2addr p1, v3

    float-to-double v7, p1

    mul-double/2addr v7, v5

    float-to-double v5, v1

    div-double/2addr v7, v5

    .line 561
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float p1, v5

    mul-float/2addr v4, p1

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    return v4
.end method
