.class public Lcom/nightonke/boommenu/Animation/ShareLinesView;
.super Landroid/view/View;
.source "ShareLinesView.java"


# instance fields
.field private animationHideDelay1:J

.field private animationHideDelay2:J

.field private animationHideDelay3:J

.field private animationHideDuration1:J

.field private animationHideDuration2:J

.field private animationHideTotalDuration:J

.field private animationShowDelay1:J

.field private animationShowDelay2:J

.field private animationShowDelay3:J

.field private animationShowDuration1:J

.field private animationShowDuration2:J

.field private animationShowTotalDuration:J

.field private line1Color:I

.field private line2Color:I

.field private linePaint:Landroid/graphics/Paint;

.field private lineWidth:F

.field private piecePositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private processForLine1:F

.field private processForLine2:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 41
    iput p1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->processForLine1:F

    .line 42
    iput p1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->processForLine2:F

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->line1Color:I

    .line 47
    iput p1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->line2Color:I

    const/high16 p1, 0x40400000    # 3.0f

    .line 48
    iput p1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->lineWidth:F

    .line 54
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->linePaint:Landroid/graphics/Paint;

    .line 55
    iget-object p1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->linePaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private setHideProcess(F)V
    .locals 7

    .line 111
    iget-wide v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideTotalDuration:J

    long-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-long v0, p1

    .line 112
    iget-wide v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDelay1:J

    cmp-long p1, v2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez p1, :cond_0

    iget-wide v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDuration1:J

    cmp-long p1, v0, v3

    if-gtz p1, :cond_0

    .line 113
    iget-wide v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDuration1:J

    sub-long v5, v3, v0

    long-to-float p1, v5

    iget-wide v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDuration1:J

    iget-wide v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDelay1:J

    sub-long v5, v0, v3

    long-to-float v0, v5

    div-float/2addr p1, v0

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->processForLine2:F

    goto :goto_0

    .line 115
    :cond_0
    iget-wide v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDuration1:J

    cmp-long p1, v3, v0

    if-gez p1, :cond_1

    iget-wide v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDelay2:J

    cmp-long p1, v0, v3

    if-gtz p1, :cond_1

    .line 116
    iput v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->processForLine2:F

    goto :goto_0

    .line 117
    :cond_1
    iget-wide v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDelay2:J

    cmp-long p1, v3, v0

    if-gez p1, :cond_2

    iget-wide v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDuration2:J

    cmp-long p1, v0, v3

    if-gtz p1, :cond_2

    .line 118
    iget-wide v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDuration2:J

    sub-long v5, v3, v0

    long-to-float p1, v5

    iget-wide v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDuration2:J

    iget-wide v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDelay2:J

    sub-long v5, v0, v3

    long-to-float v0, v5

    div-float/2addr p1, v0

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->processForLine1:F

    goto :goto_0

    .line 120
    :cond_2
    iget-wide v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDuration2:J

    cmp-long p1, v3, v0

    if-gtz p1, :cond_3

    .line 121
    iput v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->processForLine1:F

    .line 122
    iput v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->processForLine2:F

    .line 124
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/Animation/ShareLinesView;->invalidate()V

    return-void
.end method

.method private setShowProcess(F)V
    .locals 6

    .line 94
    iget-wide v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowTotalDuration:J

    long-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-long v0, p1

    .line 95
    iget-wide v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDelay1:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    iget-wide v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDuration1:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 96
    iget-wide v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDuration1:J

    sub-long v4, v2, v0

    long-to-float p1, v4

    iget-wide v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDuration1:J

    iget-wide v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDelay1:J

    sub-long v4, v0, v2

    long-to-float v0, v4

    div-float/2addr p1, v0

    iput p1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->processForLine1:F

    goto :goto_0

    .line 98
    :cond_0
    iget-wide v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDuration1:J

    cmp-long p1, v2, v0

    const/4 v2, 0x0

    if-gez p1, :cond_1

    iget-wide v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDelay2:J

    cmp-long p1, v0, v3

    if-gtz p1, :cond_1

    .line 99
    iput v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->processForLine1:F

    goto :goto_0

    .line 100
    :cond_1
    iget-wide v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDelay2:J

    cmp-long p1, v3, v0

    if-gez p1, :cond_2

    iget-wide v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDuration2:J

    cmp-long p1, v0, v3

    if-gtz p1, :cond_2

    .line 101
    iget-wide v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDuration2:J

    sub-long v4, v2, v0

    long-to-float p1, v4

    iget-wide v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDuration2:J

    iget-wide v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDelay2:J

    sub-long v4, v0, v2

    long-to-float v0, v4

    div-float/2addr p1, v0

    iput p1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->processForLine2:F

    goto :goto_0

    .line 103
    :cond_2
    iget-wide v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDuration2:J

    cmp-long p1, v3, v0

    if-gtz p1, :cond_3

    .line 104
    iput v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->processForLine1:F

    .line 105
    iput v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->processForLine2:F

    .line 107
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/Animation/ShareLinesView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 143
    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 144
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 146
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v5

    iget v5, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->processForLine1:F

    mul-float/2addr v0, v5

    iget-object v5, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v0

    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->processForLine1:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float v6, v0, v2

    iget-object v7, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->linePaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 143
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 148
    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->linePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->line2Color:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    const/4 v2, 0x2

    .line 150
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->processForLine2:F

    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float v6, v0, v3

    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->processForLine2:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float v7, v0, v1

    iget-object v8, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->linePaint:Landroid/graphics/Paint;

    move-object v3, p1

    .line 149
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 154
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public place(IIII)V
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/nightonke/boommenu/Animation/ShareLinesView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 160
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 161
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 162
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 163
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 164
    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/Animation/ShareLinesView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/ArrayList;Lcom/nightonke/boommenu/BoomMenuButton;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/nightonke/boommenu/BoomMenuButton;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getDotRadius()F

    move-result v0

    iget v1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->lineWidth:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 60
    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getDotRadius()F

    move-result v1

    float-to-double v1, v1

    iget v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->lineWidth:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {v2}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    .line 65
    iget-object v6, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 66
    iget v8, v3, Landroid/graphics/RectF;->left:F

    iget v9, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v5

    :cond_2
    if-nez v4, :cond_0

    .line 71
    iget-object v4, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/PointF;

    iget v6, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-direct {v5, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_3
    iget-object v2, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->piecePositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    .line 75
    new-array v0, v0, [I

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v1, v4

    :goto_2
    if-ge v1, p1, :cond_5

    .line 77
    rem-int/lit8 v2, v1, 0x3

    aget v3, v0, v2

    add-int/2addr v3, v5

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 78
    :cond_5
    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getShowDelay()J

    move-result-wide v1

    aget p1, v0, v4

    sub-int/2addr p1, v5

    int-to-long v6, p1

    mul-long/2addr v1, v6

    iput-wide v1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDelay1:J

    .line 79
    aget p1, v0, v4

    int-to-long v1, p1

    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getShowDelay()J

    move-result-wide v6

    mul-long/2addr v1, v6

    iput-wide v1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDuration1:J

    .line 80
    aget p1, v0, v4

    sub-int/2addr p1, v5

    aget v1, v0, v5

    add-int/2addr p1, v1

    int-to-long v1, p1

    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getShowDelay()J

    move-result-wide v6

    mul-long/2addr v1, v6

    iput-wide v1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDelay2:J

    .line 81
    aget p1, v0, v4

    aget v1, v0, v5

    add-int/2addr p1, v1

    int-to-long v1, p1

    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getShowDelay()J

    move-result-wide v6

    mul-long/2addr v1, v6

    iput-wide v1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDuration2:J

    .line 82
    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getShowDelay()J

    move-result-wide v1

    const/4 p1, 0x2

    aget v3, v0, p1

    sub-int/2addr v3, v5

    aget v6, v0, v5

    add-int/2addr v3, v6

    aget v6, v0, v4

    add-int/2addr v3, v6

    int-to-long v6, v3

    mul-long/2addr v1, v6

    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getShowDuration()J

    move-result-wide v6

    add-long v8, v1, v6

    iput-wide v8, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDelay3:J

    .line 83
    iget-wide v1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowDelay3:J

    iput-wide v1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationShowTotalDuration:J

    .line 85
    aget v1, v0, p1

    sub-int/2addr v1, v5

    int-to-long v1, v1

    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getHideDelay()J

    move-result-wide v6

    mul-long/2addr v1, v6

    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getHideDuration()J

    move-result-wide v6

    add-long v8, v1, v6

    iput-wide v8, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDelay1:J

    .line 86
    aget v1, v0, p1

    int-to-long v1, v1

    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getHideDelay()J

    move-result-wide v6

    mul-long/2addr v1, v6

    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getHideDuration()J

    move-result-wide v6

    add-long v8, v1, v6

    iput-wide v8, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDuration1:J

    .line 87
    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getHideDelay()J

    move-result-wide v1

    aget v3, v0, p1

    sub-int/2addr v3, v5

    aget v6, v0, v5

    add-int/2addr v3, v6

    int-to-long v6, v3

    mul-long/2addr v1, v6

    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getHideDuration()J

    move-result-wide v6

    add-long v8, v1, v6

    iput-wide v8, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDelay2:J

    .line 88
    aget v1, v0, p1

    aget v2, v0, v5

    add-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getHideDelay()J

    move-result-wide v6

    mul-long/2addr v1, v6

    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getHideDuration()J

    move-result-wide v6

    add-long v8, v1, v6

    iput-wide v8, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDuration2:J

    .line 89
    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getHideDelay()J

    move-result-wide v1

    aget p1, v0, p1

    sub-int/2addr p1, v5

    aget v3, v0, v5

    add-int/2addr p1, v3

    aget v0, v0, v4

    add-int/2addr p1, v0

    int-to-long v3, p1

    mul-long/2addr v1, v3

    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getHideDuration()J

    move-result-wide p1

    add-long v3, v1, p1

    iput-wide v3, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDelay3:J

    .line 90
    iget-wide p1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideDelay3:J

    iput-wide p1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->animationHideTotalDuration:J

    return-void
.end method

.method public setLine1Color(I)V
    .locals 1

    .line 128
    iput p1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->line1Color:I

    .line 129
    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setLine2Color(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->line2Color:I

    return-void
.end method

.method public setLineWidth(F)V
    .locals 1

    .line 137
    iput p1, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->lineWidth:F

    .line 138
    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/ShareLinesView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
