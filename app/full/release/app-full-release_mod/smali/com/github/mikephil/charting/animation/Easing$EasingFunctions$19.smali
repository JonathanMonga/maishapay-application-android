.class final Lcom/github/mikephil/charting/animation/Easing$EasingFunctions$19;
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

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/high16 v0, -0x41000000    # -0.5f

    mul-float/2addr p1, p1

    sub-float p1, v1, p1

    float-to-double v2, p1

    .line 411
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    return v0

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr p1, v2

    mul-float/2addr p1, p1

    sub-float p1, v1, p1

    float-to-double v2, p1

    .line 413
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    add-float/2addr p1, v1

    mul-float/2addr v0, p1

    return v0
.end method
