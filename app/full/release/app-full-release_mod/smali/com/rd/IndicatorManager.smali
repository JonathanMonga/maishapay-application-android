.class public Lcom/rd/IndicatorManager;
.super Ljava/lang/Object;
.source "IndicatorManager.java"

# interfaces
.implements Lcom/rd/animation/controller/ValueController$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rd/IndicatorManager$Listener;
    }
.end annotation


# instance fields
.field private animationManager:Lcom/rd/animation/AnimationManager;

.field private drawManager:Lcom/rd/draw/DrawManager;

.field private listener:Lcom/rd/IndicatorManager$Listener;


# direct methods
.method constructor <init>(Lcom/rd/IndicatorManager$Listener;)V
    .locals 1
    .param p1    # Lcom/rd/IndicatorManager$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/rd/IndicatorManager;->listener:Lcom/rd/IndicatorManager$Listener;

    .line 22
    new-instance p1, Lcom/rd/draw/DrawManager;

    invoke-direct {p1}, Lcom/rd/draw/DrawManager;-><init>()V

    iput-object p1, p0, Lcom/rd/IndicatorManager;->drawManager:Lcom/rd/draw/DrawManager;

    .line 23
    new-instance p1, Lcom/rd/animation/AnimationManager;

    iget-object v0, p0, Lcom/rd/IndicatorManager;->drawManager:Lcom/rd/draw/DrawManager;

    invoke-virtual {v0}, Lcom/rd/draw/DrawManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/rd/animation/AnimationManager;-><init>(Lcom/rd/draw/data/Indicator;Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object p1, p0, Lcom/rd/IndicatorManager;->animationManager:Lcom/rd/animation/AnimationManager;

    return-void
.end method


# virtual methods
.method public animate()Lcom/rd/animation/AnimationManager;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/rd/IndicatorManager;->animationManager:Lcom/rd/animation/AnimationManager;

    return-object v0
.end method

.method public drawer()Lcom/rd/draw/DrawManager;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/rd/IndicatorManager;->drawManager:Lcom/rd/draw/DrawManager;

    return-object v0
.end method

.method public indicator()Lcom/rd/draw/data/Indicator;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/rd/IndicatorManager;->drawManager:Lcom/rd/draw/DrawManager;

    invoke-virtual {v0}, Lcom/rd/draw/DrawManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    return-object v0
.end method

.method public onValueUpdated(Lcom/rd/animation/data/Value;)V
    .locals 1
    .param p1    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    iget-object v0, p0, Lcom/rd/IndicatorManager;->drawManager:Lcom/rd/draw/DrawManager;

    invoke-virtual {v0, p1}, Lcom/rd/draw/DrawManager;->updateValue(Lcom/rd/animation/data/Value;)V

    .line 41
    iget-object p1, p0, Lcom/rd/IndicatorManager;->listener:Lcom/rd/IndicatorManager$Listener;

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/rd/IndicatorManager;->listener:Lcom/rd/IndicatorManager$Listener;

    invoke-interface {p1}, Lcom/rd/IndicatorManager$Listener;->onIndicatorUpdated()V

    :cond_0
    return-void
.end method
