.class public abstract Lcom/rd/animation/type/BaseAnimation;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/animation/Animator;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ANIMATION_TIME:I = 0x15e


# instance fields
.field protected animationDuration:J

.field protected animator:Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected listener:Lcom/rd/animation/controller/ValueController$UpdateListener;


# direct methods
.method public constructor <init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V
    .locals 2
    .param p1    # Lcom/rd/animation/controller/ValueController$UpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x15e

    .line 12
    iput-wide v0, p0, Lcom/rd/animation/type/BaseAnimation;->animationDuration:J

    .line 18
    iput-object p1, p0, Lcom/rd/animation/type/BaseAnimation;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    .line 19
    invoke-virtual {p0}, Lcom/rd/animation/type/BaseAnimation;->createAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/rd/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public abstract createAnimator()Landroid/animation/Animator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public duration(J)Lcom/rd/animation/type/BaseAnimation;
    .locals 2

    .line 28
    iput-wide p1, p0, Lcom/rd/animation/type/BaseAnimation;->animationDuration:J

    .line 30
    iget-object p1, p0, Lcom/rd/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    instance-of p1, p1, Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/rd/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    iget-wide v0, p0, Lcom/rd/animation/type/BaseAnimation;->animationDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_0
    return-object p0
.end method

.method public end()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/rd/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rd/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/rd/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method public abstract progress(F)Lcom/rd/animation/type/BaseAnimation;
.end method

.method public start()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/rd/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rd/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/rd/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
