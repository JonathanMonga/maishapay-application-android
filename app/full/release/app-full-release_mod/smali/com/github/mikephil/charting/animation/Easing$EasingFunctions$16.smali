.class final Lcom/github/mikephil/charting/animation/Easing$EasingFunctions$16;
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

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    div-float/2addr p1, v1

    cmpg-float v2, p1, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    if-gez v2, :cond_2

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr p1, v0

    mul-float/2addr v2, p1

    float-to-double v5, v2

    .line 358
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p1, v2

    mul-float/2addr v1, p1

    return v1

    :cond_2
    const/high16 v2, -0x3ee00000    # -10.0f

    sub-float/2addr p1, v0

    mul-float/2addr v2, p1

    float-to-double v5, v2

    .line 360
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p1, v2

    neg-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr p1, v0

    mul-float/2addr v1, p1

    return v1
.end method
