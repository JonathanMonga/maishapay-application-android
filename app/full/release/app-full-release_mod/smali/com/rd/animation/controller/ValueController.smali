.class public Lcom/rd/animation/controller/ValueController;
.super Ljava/lang/Object;
.source "ValueController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rd/animation/controller/ValueController$UpdateListener;
    }
.end annotation


# instance fields
.field private colorAnimation:Lcom/rd/animation/type/ColorAnimation;

.field private dropAnimation:Lcom/rd/animation/type/DropAnimation;

.field private fillAnimation:Lcom/rd/animation/type/FillAnimation;

.field private scaleAnimation:Lcom/rd/animation/type/ScaleAnimation;

.field private scaleDownAnimation:Lcom/rd/animation/type/ScaleDownAnimation;

.field private slideAnimation:Lcom/rd/animation/type/SlideAnimation;

.field private swapAnimation:Lcom/rd/animation/type/SwapAnimation;

.field private thinWormAnimation:Lcom/rd/animation/type/ThinWormAnimation;

.field private updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

.field private wormAnimation:Lcom/rd/animation/type/WormAnimation;


# direct methods
.method public constructor <init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V
    .locals 0
    .param p1    # Lcom/rd/animation/controller/ValueController$UpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    return-void
.end method


# virtual methods
.method public color()Lcom/rd/animation/type/ColorAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->colorAnimation:Lcom/rd/animation/type/ColorAnimation;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/rd/animation/type/ColorAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/ColorAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->colorAnimation:Lcom/rd/animation/type/ColorAnimation;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->colorAnimation:Lcom/rd/animation/type/ColorAnimation;

    return-object v0
.end method

.method public drop()Lcom/rd/animation/type/DropAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->dropAnimation:Lcom/rd/animation/type/DropAnimation;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/rd/animation/type/DropAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/DropAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->dropAnimation:Lcom/rd/animation/type/DropAnimation;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->dropAnimation:Lcom/rd/animation/type/DropAnimation;

    return-object v0
.end method

.method public fill()Lcom/rd/animation/type/FillAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->fillAnimation:Lcom/rd/animation/type/FillAnimation;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/rd/animation/type/FillAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/FillAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->fillAnimation:Lcom/rd/animation/type/FillAnimation;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->fillAnimation:Lcom/rd/animation/type/FillAnimation;

    return-object v0
.end method

.method public scale()Lcom/rd/animation/type/ScaleAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->scaleAnimation:Lcom/rd/animation/type/ScaleAnimation;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/rd/animation/type/ScaleAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/ScaleAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->scaleAnimation:Lcom/rd/animation/type/ScaleAnimation;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->scaleAnimation:Lcom/rd/animation/type/ScaleAnimation;

    return-object v0
.end method

.method public scaleDown()Lcom/rd/animation/type/ScaleDownAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->scaleDownAnimation:Lcom/rd/animation/type/ScaleDownAnimation;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/rd/animation/type/ScaleDownAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/ScaleDownAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->scaleDownAnimation:Lcom/rd/animation/type/ScaleDownAnimation;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->scaleDownAnimation:Lcom/rd/animation/type/ScaleDownAnimation;

    return-object v0
.end method

.method public slide()Lcom/rd/animation/type/SlideAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->slideAnimation:Lcom/rd/animation/type/SlideAnimation;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/rd/animation/type/SlideAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/SlideAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->slideAnimation:Lcom/rd/animation/type/SlideAnimation;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->slideAnimation:Lcom/rd/animation/type/SlideAnimation;

    return-object v0
.end method

.method public swap()Lcom/rd/animation/type/SwapAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->swapAnimation:Lcom/rd/animation/type/SwapAnimation;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/rd/animation/type/SwapAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/SwapAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->swapAnimation:Lcom/rd/animation/type/SwapAnimation;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->swapAnimation:Lcom/rd/animation/type/SwapAnimation;

    return-object v0
.end method

.method public thinWorm()Lcom/rd/animation/type/ThinWormAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->thinWormAnimation:Lcom/rd/animation/type/ThinWormAnimation;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/rd/animation/type/ThinWormAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/ThinWormAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->thinWormAnimation:Lcom/rd/animation/type/ThinWormAnimation;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->thinWormAnimation:Lcom/rd/animation/type/ThinWormAnimation;

    return-object v0
.end method

.method public worm()Lcom/rd/animation/type/WormAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->wormAnimation:Lcom/rd/animation/type/WormAnimation;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/rd/animation/type/WormAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/WormAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->wormAnimation:Lcom/rd/animation/type/WormAnimation;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->wormAnimation:Lcom/rd/animation/type/WormAnimation;

    return-object v0
.end method
