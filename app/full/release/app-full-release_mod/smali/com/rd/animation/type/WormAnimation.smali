.class public Lcom/rd/animation/type/WormAnimation;
.super Lcom/rd/animation/type/BaseAnimation;
.source "WormAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rd/animation/type/WormAnimation$RectValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rd/animation/type/BaseAnimation<",
        "Landroid/animation/AnimatorSet;",
        ">;"
    }
.end annotation


# instance fields
.field coordinateEnd:I

.field coordinateStart:I

.field isRightSide:Z

.field radius:I

.field rectLeftEdge:I

.field rectRightEdge:I

.field private value:Lcom/rd/animation/data/type/WormAnimationValue;


# direct methods
.method public constructor <init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V
    .locals 0
    .param p1    # Lcom/rd/animation/controller/ValueController$UpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1}, Lcom/rd/animation/type/BaseAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    .line 26
    new-instance p1, Lcom/rd/animation/data/type/WormAnimationValue;

    invoke-direct {p1}, Lcom/rd/animation/data/type/WormAnimationValue;-><init>()V

    iput-object p1, p0, Lcom/rd/animation/type/WormAnimation;->value:Lcom/rd/animation/data/type/WormAnimationValue;

    return-void
.end method

.method static synthetic access$000(Lcom/rd/animation/type/WormAnimation;Lcom/rd/animation/data/type/WormAnimationValue;Landroid/animation/ValueAnimator;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/rd/animation/type/WormAnimation;->onAnimateUpdated(Lcom/rd/animation/data/type/WormAnimationValue;Landroid/animation/ValueAnimator;Z)V

    return-void
.end method

.method private onAnimateUpdated(Lcom/rd/animation/data/type/WormAnimationValue;Landroid/animation/ValueAnimator;Z)V
    .locals 1
    .param p1    # Lcom/rd/animation/data/type/WormAnimationValue;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/animation/ValueAnimator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 114
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 116
    iget-boolean v0, p0, Lcom/rd/animation/type/WormAnimation;->isRightSide:Z

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    .line 118
    invoke-virtual {p1, p2}, Lcom/rd/animation/data/type/WormAnimationValue;->setRectEnd(I)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1, p2}, Lcom/rd/animation/data/type/WormAnimationValue;->setRectStart(I)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    .line 125
    invoke-virtual {p1, p2}, Lcom/rd/animation/data/type/WormAnimationValue;->setRectStart(I)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p1, p2}, Lcom/rd/animation/data/type/WormAnimationValue;->setRectEnd(I)V

    .line 131
    :goto_0
    iget-object p2, p0, Lcom/rd/animation/type/WormAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    if-eqz p2, :cond_3

    .line 132
    iget-object p2, p0, Lcom/rd/animation/type/WormAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-interface {p2, p1}, Lcom/rd/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/rd/animation/data/Value;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimator()Landroid/animation/Animator;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/rd/animation/type/WormAnimation;->createAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator()Landroid/animation/AnimatorSet;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 32
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 33
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method createRectValues(Z)Lcom/rd/animation/type/WormAnimation$RectValues;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 166
    iget p1, p0, Lcom/rd/animation/type/WormAnimation;->coordinateStart:I

    iget v0, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    add-int/2addr p1, v0

    .line 167
    iget v0, p0, Lcom/rd/animation/type/WormAnimation;->coordinateEnd:I

    iget v1, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    add-int/2addr v0, v1

    .line 169
    iget v1, p0, Lcom/rd/animation/type/WormAnimation;->coordinateStart:I

    iget v2, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    sub-int/2addr v1, v2

    .line 170
    iget v2, p0, Lcom/rd/animation/type/WormAnimation;->coordinateEnd:I

    iget v3, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    sub-int/2addr v2, v3

    :goto_0
    move v5, p1

    move v6, v0

    move v7, v1

    move v8, v2

    goto :goto_1

    .line 173
    :cond_0
    iget p1, p0, Lcom/rd/animation/type/WormAnimation;->coordinateStart:I

    iget v0, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    sub-int/2addr p1, v0

    .line 174
    iget v0, p0, Lcom/rd/animation/type/WormAnimation;->coordinateEnd:I

    iget v1, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    sub-int/2addr v0, v1

    .line 176
    iget v1, p0, Lcom/rd/animation/type/WormAnimation;->coordinateStart:I

    iget v2, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    add-int/2addr v1, v2

    .line 177
    iget v2, p0, Lcom/rd/animation/type/WormAnimation;->coordinateEnd:I

    iget v3, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    add-int/2addr v2, v3

    goto :goto_0

    .line 180
    :goto_1
    new-instance p1, Lcom/rd/animation/type/WormAnimation$RectValues;

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/rd/animation/type/WormAnimation$RectValues;-><init>(Lcom/rd/animation/type/WormAnimation;IIII)V

    return-object p1
.end method

.method createWormAnimator(IIJZLcom/rd/animation/data/type/WormAnimationValue;)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    .line 100
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 101
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 102
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 103
    new-instance p2, Lcom/rd/animation/type/WormAnimation$1;

    invoke-direct {p2, p0, p6, p5}, Lcom/rd/animation/type/WormAnimation$1;-><init>(Lcom/rd/animation/type/WormAnimation;Lcom/rd/animation/data/type/WormAnimationValue;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public bridge synthetic duration(J)Lcom/rd/animation/type/BaseAnimation;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/rd/animation/type/WormAnimation;->duration(J)Lcom/rd/animation/type/WormAnimation;

    move-result-object p1

    return-object p1
.end method

.method public duration(J)Lcom/rd/animation/type/WormAnimation;
    .locals 0

    .line 40
    invoke-super {p0, p1, p2}, Lcom/rd/animation/type/BaseAnimation;->duration(J)Lcom/rd/animation/type/BaseAnimation;

    return-object p0
.end method

.method hasChanges(IIIZ)Z
    .locals 2

    .line 138
    iget v0, p0, Lcom/rd/animation/type/WormAnimation;->coordinateStart:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    .line 142
    :cond_0
    iget p1, p0, Lcom/rd/animation/type/WormAnimation;->coordinateEnd:I

    if-eq p1, p2, :cond_1

    return v1

    .line 146
    :cond_1
    iget p1, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    if-eq p1, p3, :cond_2

    return v1

    .line 150
    :cond_2
    iget-boolean p1, p0, Lcom/rd/animation/type/WormAnimation;->isRightSide:Z

    if-eq p1, p4, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic progress(F)Lcom/rd/animation/type/BaseAnimation;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/rd/animation/type/WormAnimation;->progress(F)Lcom/rd/animation/type/WormAnimation;

    move-result-object p1

    return-object p1
.end method

.method public progress(F)Lcom/rd/animation/type/WormAnimation;
    .locals 7

    .line 72
    iget-object v0, p0, Lcom/rd/animation/type/WormAnimation;->animator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    return-object p0

    .line 76
    :cond_0
    iget-wide v0, p0, Lcom/rd/animation/type/WormAnimation;->animationDuration:J

    long-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-long v0, p1

    .line 77
    iget-object p1, p0, Lcom/rd/animation/type/WormAnimation;->animator:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 78
    check-cast v2, Landroid/animation/ValueAnimator;

    .line 79
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    move-wide v3, v0

    .line 86
    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    sub-long v5, v0, v3

    move-wide v0, v5

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public with(IIIZ)Lcom/rd/animation/type/WormAnimation;
    .locals 9

    .line 45
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rd/animation/type/WormAnimation;->hasChanges(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/rd/animation/type/WormAnimation;->createAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/rd/animation/type/WormAnimation;->animator:Landroid/animation/Animator;

    .line 48
    iput p1, p0, Lcom/rd/animation/type/WormAnimation;->coordinateStart:I

    .line 49
    iput p2, p0, Lcom/rd/animation/type/WormAnimation;->coordinateEnd:I

    .line 51
    iput p3, p0, Lcom/rd/animation/type/WormAnimation;->radius:I

    .line 52
    iput-boolean p4, p0, Lcom/rd/animation/type/WormAnimation;->isRightSide:Z

    sub-int p2, p1, p3

    .line 54
    iput p2, p0, Lcom/rd/animation/type/WormAnimation;->rectLeftEdge:I

    add-int/2addr p1, p3

    .line 55
    iput p1, p0, Lcom/rd/animation/type/WormAnimation;->rectRightEdge:I

    .line 57
    iget-object p1, p0, Lcom/rd/animation/type/WormAnimation;->value:Lcom/rd/animation/data/type/WormAnimationValue;

    iget p2, p0, Lcom/rd/animation/type/WormAnimation;->rectLeftEdge:I

    invoke-virtual {p1, p2}, Lcom/rd/animation/data/type/WormAnimationValue;->setRectStart(I)V

    .line 58
    iget-object p1, p0, Lcom/rd/animation/type/WormAnimation;->value:Lcom/rd/animation/data/type/WormAnimationValue;

    iget p2, p0, Lcom/rd/animation/type/WormAnimation;->rectRightEdge:I

    invoke-virtual {p1, p2}, Lcom/rd/animation/data/type/WormAnimationValue;->setRectEnd(I)V

    .line 60
    invoke-virtual {p0, p4}, Lcom/rd/animation/type/WormAnimation;->createRectValues(Z)Lcom/rd/animation/type/WormAnimation$RectValues;

    move-result-object p1

    .line 61
    iget-wide p2, p0, Lcom/rd/animation/type/WormAnimation;->animationDuration:J

    const-wide/16 v0, 0x2

    div-long/2addr p2, v0

    .line 63
    iget v3, p1, Lcom/rd/animation/type/WormAnimation$RectValues;->fromX:I

    iget v4, p1, Lcom/rd/animation/type/WormAnimation$RectValues;->toX:I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/rd/animation/type/WormAnimation;->value:Lcom/rd/animation/data/type/WormAnimationValue;

    move-object v2, p0

    move-wide v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/rd/animation/type/WormAnimation;->createWormAnimator(IIJZLcom/rd/animation/data/type/WormAnimationValue;)Landroid/animation/ValueAnimator;

    move-result-object p4

    .line 64
    iget v3, p1, Lcom/rd/animation/type/WormAnimation$RectValues;->reverseFromX:I

    iget v4, p1, Lcom/rd/animation/type/WormAnimation$RectValues;->reverseToX:I

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/rd/animation/type/WormAnimation;->value:Lcom/rd/animation/data/type/WormAnimationValue;

    invoke-virtual/range {v2 .. v8}, Lcom/rd/animation/type/WormAnimation;->createWormAnimator(IIJZLcom/rd/animation/data/type/WormAnimationValue;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/rd/animation/type/WormAnimation;->animator:Landroid/animation/Animator;

    check-cast p2, Landroid/animation/AnimatorSet;

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/animation/Animator;

    const/4 v0, 0x0

    aput-object p4, p3, v0

    const/4 p4, 0x1

    aput-object p1, p3, p4

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_0
    return-object p0
.end method
