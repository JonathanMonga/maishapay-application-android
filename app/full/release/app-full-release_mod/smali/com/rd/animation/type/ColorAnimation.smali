.class public Lcom/rd/animation/type/ColorAnimation;
.super Lcom/rd/animation/type/BaseAnimation;
.source "ColorAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rd/animation/type/BaseAnimation<",
        "Landroid/animation/ValueAnimator;",
        ">;"
    }
.end annotation


# static fields
.field static final ANIMATION_COLOR:Ljava/lang/String; = "ANIMATION_COLOR"

.field static final ANIMATION_COLOR_REVERSE:Ljava/lang/String; = "ANIMATION_COLOR_REVERSE"

.field public static final DEFAULT_SELECTED_COLOR:Ljava/lang/String; = "#ffffff"

.field public static final DEFAULT_UNSELECTED_COLOR:Ljava/lang/String; = "#33ffffff"


# instance fields
.field colorEnd:I

.field colorStart:I

.field private value:Lcom/rd/animation/data/type/ColorAnimationValue;


# direct methods
.method public constructor <init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V
    .locals 0
    .param p1    # Lcom/rd/animation/controller/ValueController$UpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0, p1}, Lcom/rd/animation/type/BaseAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    .line 27
    new-instance p1, Lcom/rd/animation/data/type/ColorAnimationValue;

    invoke-direct {p1}, Lcom/rd/animation/data/type/ColorAnimationValue;-><init>()V

    iput-object p1, p0, Lcom/rd/animation/type/ColorAnimation;->value:Lcom/rd/animation/data/type/ColorAnimationValue;

    return-void
.end method

.method static synthetic access$000(Lcom/rd/animation/type/ColorAnimation;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/rd/animation/type/ColorAnimation;->onAnimateUpdated(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private hasChanges(II)Z
    .locals 2

    .line 99
    iget v0, p0, Lcom/rd/animation/type/ColorAnimation;->colorStart:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    .line 103
    :cond_0
    iget p1, p0, Lcom/rd/animation/type/ColorAnimation;->colorEnd:I

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

    const-string v0, "ANIMATION_COLOR"

    .line 111
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "ANIMATION_COLOR_REVERSE"

    .line 112
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 114
    iget-object v1, p0, Lcom/rd/animation/type/ColorAnimation;->value:Lcom/rd/animation/data/type/ColorAnimationValue;

    invoke-virtual {v1, v0}, Lcom/rd/animation/data/type/ColorAnimationValue;->setColor(I)V

    .line 115
    iget-object v0, p0, Lcom/rd/animation/type/ColorAnimation;->value:Lcom/rd/animation/data/type/ColorAnimationValue;

    invoke-virtual {v0, p1}, Lcom/rd/animation/data/type/ColorAnimationValue;->setColorReverse(I)V

    .line 117
    iget-object p1, p0, Lcom/rd/animation/type/ColorAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/rd/animation/type/ColorAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    iget-object v0, p0, Lcom/rd/animation/type/ColorAnimation;->value:Lcom/rd/animation/data/type/ColorAnimationValue;

    invoke-interface {p1, v0}, Lcom/rd/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/rd/animation/data/Value;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimator()Landroid/animation/Animator;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/rd/animation/type/ColorAnimation;->createAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator()Landroid/animation/ValueAnimator;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 33
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v1, 0x15e

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 35
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 36
    new-instance v1, Lcom/rd/animation/type/ColorAnimation$1;

    invoke-direct {v1, p0}, Lcom/rd/animation/type/ColorAnimation$1;-><init>(Lcom/rd/animation/type/ColorAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method createColorPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;
    .locals 4

    if-eqz p1, :cond_0

    const-string p1, "ANIMATION_COLOR_REVERSE"

    .line 82
    iget v0, p0, Lcom/rd/animation/type/ColorAnimation;->colorEnd:I

    .line 83
    iget v1, p0, Lcom/rd/animation/type/ColorAnimation;->colorStart:I

    goto :goto_0

    :cond_0
    const-string p1, "ANIMATION_COLOR"

    .line 87
    iget v0, p0, Lcom/rd/animation/type/ColorAnimation;->colorStart:I

    .line 88
    iget v1, p0, Lcom/rd/animation/type/ColorAnimation;->colorEnd:I

    :goto_0
    const/4 v2, 0x2

    .line 91
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {p1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 92
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object p1
.end method

.method public bridge synthetic progress(F)Lcom/rd/animation/type/BaseAnimation;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/rd/animation/type/ColorAnimation;->progress(F)Lcom/rd/animation/type/ColorAnimation;

    move-result-object p1

    return-object p1
.end method

.method public progress(F)Lcom/rd/animation/type/ColorAnimation;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/rd/animation/type/ColorAnimation;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 49
    iget-wide v0, p0, Lcom/rd/animation/type/ColorAnimation;->animationDuration:J

    long-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-long v0, p1

    .line 51
    iget-object p1, p0, Lcom/rd/animation/type/ColorAnimation;->animator:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rd/animation/type/ColorAnimation;->animator:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/rd/animation/type/ColorAnimation;->animator:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-object p0
.end method

.method public with(II)Lcom/rd/animation/type/ColorAnimation;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/rd/animation/type/ColorAnimation;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/rd/animation/type/ColorAnimation;->hasChanges(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iput p1, p0, Lcom/rd/animation/type/ColorAnimation;->colorStart:I

    .line 64
    iput p2, p0, Lcom/rd/animation/type/ColorAnimation;->colorEnd:I

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/rd/animation/type/ColorAnimation;->createColorPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, v0}, Lcom/rd/animation/type/ColorAnimation;->createColorPropertyHolder(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/rd/animation/type/ColorAnimation;->animator:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, v3, p1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_0
    return-object p0
.end method
