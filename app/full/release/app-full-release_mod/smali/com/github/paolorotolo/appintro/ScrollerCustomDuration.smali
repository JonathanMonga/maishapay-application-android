.class public Lcom/github/paolorotolo/appintro/ScrollerCustomDuration;
.super Landroid/widget/Scroller;
.source "ScrollerCustomDuration.java"


# instance fields
.field private mScrollFactor:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    .line 9
    iput-wide v0, p0, Lcom/github/paolorotolo/appintro/ScrollerCustomDuration;->mScrollFactor:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const-wide/high16 p1, 0x4018000000000000L    # 6.0

    .line 9
    iput-wide p1, p0, Lcom/github/paolorotolo/appintro/ScrollerCustomDuration;->mScrollFactor:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    const-wide/high16 p1, 0x4018000000000000L    # 6.0

    .line 9
    iput-wide p1, p0, Lcom/github/paolorotolo/appintro/ScrollerCustomDuration;->mScrollFactor:D

    return-void
.end method


# virtual methods
.method public setScrollDurationFactor(D)V
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/github/paolorotolo/appintro/ScrollerCustomDuration;->mScrollFactor:D

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 8

    int-to-double v0, p5

    .line 33
    iget-wide v2, p0, Lcom/github/paolorotolo/appintro/ScrollerCustomDuration;->mScrollFactor:D

    mul-double/2addr v0, v2

    double-to-int v7, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-super/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
