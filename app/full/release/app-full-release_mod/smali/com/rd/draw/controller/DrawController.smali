.class public Lcom/rd/draw/controller/DrawController;
.super Ljava/lang/Object;
.source "DrawController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rd/draw/controller/DrawController$ClickListener;
    }
.end annotation


# instance fields
.field private drawer:Lcom/rd/draw/drawer/Drawer;

.field private indicator:Lcom/rd/draw/data/Indicator;

.field private listener:Lcom/rd/draw/controller/DrawController$ClickListener;

.field private value:Lcom/rd/animation/data/Value;


# direct methods
.method public constructor <init>(Lcom/rd/draw/data/Indicator;)V
    .locals 1
    .param p1    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    .line 27
    new-instance v0, Lcom/rd/draw/drawer/Drawer;

    invoke-direct {v0, p1}, Lcom/rd/draw/drawer/Drawer;-><init>(Lcom/rd/draw/data/Indicator;)V

    iput-object v0, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    return-void
.end method

.method private drawIndicator(Landroid/graphics/Canvas;III)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    iget-object v0, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    .line 78
    iget-object v2, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v2

    .line 79
    iget-object v3, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v3}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_1

    if-eq p2, v1, :cond_0

    if-ne p2, v3, :cond_1

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v0, :cond_3

    if-eq p2, v1, :cond_2

    if-ne p2, v2, :cond_3

    :cond_2
    move v4, v5

    :cond_3
    or-int v0, v3, v4

    .line 84
    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    invoke-virtual {v1, p2, p3, p4}, Lcom/rd/draw/drawer/Drawer;->setup(III)V

    .line 86
    iget-object p2, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 87
    invoke-direct {p0, p1}, Lcom/rd/draw/controller/DrawController;->drawWithAnimation(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 89
    :cond_4
    iget-object p2, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    invoke-virtual {p2, p1, v0}, Lcom/rd/draw/drawer/Drawer;->drawBasic(Landroid/graphics/Canvas;Z)V

    :goto_1
    return-void
.end method

.method private drawWithAnimation(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    iget-object v0, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/rd/draw/controller/DrawController$1;->$SwitchMap$com$rd$animation$type$AnimationType:[I

    invoke-virtual {v0}, Lcom/rd/animation/type/AnimationType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/rd/draw/drawer/Drawer;->drawScaleDown(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/rd/draw/drawer/Drawer;->drawSwap(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/rd/draw/drawer/Drawer;->drawDrop(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 121
    :pswitch_3
    iget-object v0, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/rd/draw/drawer/Drawer;->drawThinWorm(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 117
    :pswitch_4
    iget-object v0, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/rd/draw/drawer/Drawer;->drawFill(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 113
    :pswitch_5
    iget-object v0, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/rd/draw/drawer/Drawer;->drawSlide(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 109
    :pswitch_6
    iget-object v0, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/rd/draw/drawer/Drawer;->drawWorm(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 105
    :pswitch_7
    iget-object v0, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/rd/draw/drawer/Drawer;->drawScale(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 101
    :pswitch_8
    iget-object v0, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v0, p1, v1}, Lcom/rd/draw/drawer/Drawer;->drawColor(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 97
    :pswitch_9
    iget-object v0, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/rd/draw/drawer/Drawer;->drawBasic(Landroid/graphics/Canvas;Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onIndicatorTouched(FF)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/rd/draw/controller/DrawController;->listener:Lcom/rd/draw/controller/DrawController$ClickListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v0, p1, p2}, Lcom/rd/utils/CoordinatesUtils;->getPosition(Lcom/rd/draw/data/Indicator;FF)I

    move-result p1

    if-ltz p1, :cond_0

    .line 55
    iget-object p2, p0, Lcom/rd/draw/controller/DrawController;->listener:Lcom/rd/draw/controller/DrawController$ClickListener;

    invoke-interface {p2, p1}, Lcom/rd/draw/controller/DrawController$ClickListener;->onIndicatorClicked(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    iget-object v0, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 64
    iget-object v2, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v2, v1}, Lcom/rd/utils/CoordinatesUtils;->getXCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v2

    .line 65
    iget-object v3, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v3, v1}, Lcom/rd/utils/CoordinatesUtils;->getYCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v3

    .line 66
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/rd/draw/controller/DrawController;->drawIndicator(Landroid/graphics/Canvas;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClickListener(Lcom/rd/draw/controller/DrawController$ClickListener;)V
    .locals 0
    .param p1    # Lcom/rd/draw/controller/DrawController$ClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    iput-object p1, p0, Lcom/rd/draw/controller/DrawController;->listener:Lcom/rd/draw/controller/DrawController$ClickListener;

    return-void
.end method

.method public touch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/rd/draw/controller/DrawController;->onIndicatorTouched(FF)V

    :goto_0
    return-void
.end method

.method public updateValue(Lcom/rd/animation/data/Value;)V
    .locals 0
    .param p1    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    iput-object p1, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    return-void
.end method
