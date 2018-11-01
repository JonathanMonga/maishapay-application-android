.class public Lcom/rd/animation/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# instance fields
.field private animationController:Lcom/rd/animation/controller/AnimationController;


# direct methods
.method public constructor <init>(Lcom/rd/draw/data/Indicator;Lcom/rd/animation/controller/ValueController$UpdateListener;)V
    .locals 1
    .param p1    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/rd/animation/controller/ValueController$UpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/rd/animation/controller/AnimationController;

    invoke-direct {v0, p1, p2}, Lcom/rd/animation/controller/AnimationController;-><init>(Lcom/rd/draw/data/Indicator;Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/AnimationManager;->animationController:Lcom/rd/animation/controller/AnimationController;

    return-void
.end method


# virtual methods
.method public basic()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/rd/animation/AnimationManager;->animationController:Lcom/rd/animation/controller/AnimationController;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/rd/animation/AnimationManager;->animationController:Lcom/rd/animation/controller/AnimationController;

    invoke-virtual {v0}, Lcom/rd/animation/controller/AnimationController;->end()V

    .line 19
    iget-object v0, p0, Lcom/rd/animation/AnimationManager;->animationController:Lcom/rd/animation/controller/AnimationController;

    invoke-virtual {v0}, Lcom/rd/animation/controller/AnimationController;->basic()V

    :cond_0
    return-void
.end method

.method public end()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/rd/animation/AnimationManager;->animationController:Lcom/rd/animation/controller/AnimationController;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/rd/animation/AnimationManager;->animationController:Lcom/rd/animation/controller/AnimationController;

    invoke-virtual {v0}, Lcom/rd/animation/controller/AnimationController;->end()V

    :cond_0
    return-void
.end method

.method public interactive(F)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/rd/animation/AnimationManager;->animationController:Lcom/rd/animation/controller/AnimationController;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/rd/animation/AnimationManager;->animationController:Lcom/rd/animation/controller/AnimationController;

    invoke-virtual {v0, p1}, Lcom/rd/animation/controller/AnimationController;->interactive(F)V

    :cond_0
    return-void
.end method
