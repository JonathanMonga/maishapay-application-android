.class public Lcom/rd/animation/type/SwapAnimation;
.super Lcom/rd/animation/type/BaseAnimation;
.source "SwapAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rd/animation/type/BaseAnimation<",
        "Landroid/animation/ValueAnimator;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATION_COORDINATE:Ljava/lang/String; = "ANIMATION_COORDINATE"

.field private static final ANIMATION_COORDINATE_REVERSE:Ljava/lang/String; = "ANIMATION_COORDINATE_REVERSE"

.field private static final COORDINATE_NONE:I = -0x1


# instance fields
.field private coordinateEnd:I

.field private coordinateStart:I

.field private value:Lcom/rd/animation/data/type/SwapAnimationValue;


# direct methods
.method public constructor <init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V
    .locals 0
    .param p1    # Lcom/rd/animation/controller/ValueController$UpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0, p1}, Lcom/rd/animation/type/BaseAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/rd/animation/type/SwapAnimation;->coordinateStart:I

    .line 18
    iput p1, p0, Lcom/rd/animation/type/SwapAnimation;->coordinateEnd:I

    .line 24
    new-instance p1, Lcom/rd/animation/data/type/SwapAnimationValue;

    invoke-direct {p1}, Lcom/rd/animation/data/type/SwapAnimationValue;-><init>()V

    iput-object p1, p0, Lcom/rd/animation/type/SwapAnimation;->value:Lcom/rd/animation/data/type/SwapAnimationValue;

    return-void
.end method

.method static synthetic access$000(Lcom/rd/animation/type/SwapAnimation;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/rd/animation/type/SwapAnimation;->onAnimateUpdated(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private createColorPropertyHolder(Ljava/lang/String;II)Landroid/animation/PropertyValuesHolder;
    .locals 2

    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 72
    new-instance p2, Landroid/animation/IntEvaluator;

    invoke-direct {p2}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object p1
.end method

.method private hasChanges(II)Z
    .locals 2

    .line 91
    iget v0, p0, Lcom/rd/animation/type/SwapAnimation;->coordinateStart:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    .line 95
    :cond_0
    iget p1, p0, Lcom/rd/animation/type/SwapAnimation;->coordinateEnd:I

    if-eq p1, p2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onAnimateUpdated(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ANIMATION_COORDINATE"

    .line 78
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "ANIMATION_COORDINATE_REVERSE"

    .line 79
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 81
    iget-object v1, p0, Lcom/rd/animation/type/SwapAnimation;->value:Lcom/rd/animation/data/type/SwapAnimationValue;

    invoke-virtual {v1, v0}, Lcom/rd/animation/data/type/SwapAnimationValue;->setCoordinate(I)V

    .line 82
    iget-object v0, p0, Lcom/rd/animation/type/SwapAnimation;->value:Lcom/rd/animation/data/type/SwapAnimationValue;

    invoke-virtual {v0, p1}, Lcom/rd/animation/data/type/SwapAnimationValue;->setCoordinateReverse(I)V

    .line 84
    iget-object p1, p0, Lcom/rd/animation/type/SwapAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/rd/animation/type/SwapAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    iget-object v0, p0, Lcom/rd/animation/type/SwapAnimation;->value:Lcom/rd/animation/data/type/SwapAnimationValue;

    invoke-interface {p1, v0}, Lcom/rd/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/rd/animation/data/Value;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimator()Landroid/animation/Animator;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/rd/animation/type/SwapAnimation;->createAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator()Landroid/animation/ValueAnimator;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 30
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v1, 0x15e

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    new-instance v1, Lcom/rd/animation/type/SwapAnimation$1;

    invoke-direct {v1, p0}, Lcom/rd/animation/type/SwapAnimation$1;-><init>(Lcom/rd/animation/type/SwapAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public bridge synthetic progress(F)Lcom/rd/animation/type/BaseAnimation;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/rd/animation/type/SwapAnimation;->progress(F)Lcom/rd/animation/type/SwapAnimation;

    move-result-object p1

    return-object p1
.end method

.method public progress(F)Lcom/rd/animation/type/SwapAnimation;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/rd/animation/type/SwapAnimation;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 46
    iget-wide v0, p0, Lcom/rd/animation/type/SwapAnimation;->animationDuration:J

    long-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-long v0, p1

    .line 48
    iget-object p1, p0, Lcom/rd/animation/type/SwapAnimation;->animator:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rd/animation/type/SwapAnimation;->animator:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/rd/animation/type/SwapAnimation;->animator:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-object p0
.end method

.method public with(II)Lcom/rd/animation/type/SwapAnimation;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/rd/animation/type/SwapAnimation;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/rd/animation/type/SwapAnimation;->hasChanges(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iput p1, p0, Lcom/rd/animation/type/SwapAnimation;->coordinateStart:I

    .line 60
    iput p2, p0, Lcom/rd/animation/type/SwapAnimation;->coordinateEnd:I

    const-string v0, "ANIMATION_COORDINATE"

    .line 62
    invoke-direct {p0, v0, p1, p2}, Lcom/rd/animation/type/SwapAnimation;->createColorPropertyHolder(Ljava/lang/String;II)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v1, "ANIMATION_COORDINATE_REVERSE"

    .line 63
    invoke-direct {p0, v1, p2, p1}, Lcom/rd/animation/type/SwapAnimation;->createColorPropertyHolder(Ljava/lang/String;II)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/rd/animation/type/SwapAnimation;->animator:Landroid/animation/Animator;

    check-cast p2, Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_0
    return-object p0
.end method
