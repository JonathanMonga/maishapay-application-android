.class public Lcom/rd/animation/controller/AnimationController;
.super Ljava/lang/Object;
.source "AnimationController.java"


# instance fields
.field private indicator:Lcom/rd/draw/data/Indicator;

.field private isInteractive:Z

.field private listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

.field private progress:F

.field private runningAnimation:Lcom/rd/animation/type/BaseAnimation;

.field private valueController:Lcom/rd/animation/controller/ValueController;


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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/rd/animation/controller/ValueController;

    invoke-direct {v0, p2}, Lcom/rd/animation/controller/ValueController;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 23
    iput-object p2, p0, Lcom/rd/animation/controller/AnimationController;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    .line 24
    iput-object p1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    return-void
.end method

.method private animate()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/rd/animation/controller/AnimationController$1;->$SwitchMap$com$rd$animation$type$AnimationType:[I

    invoke-virtual {v0}, Lcom/rd/animation/type/AnimationType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->scaleDownAnimation()V

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->swapAnimation()V

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->dropAnimation()V

    goto :goto_0

    .line 73
    :pswitch_3
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->thinWormAnimation()V

    goto :goto_0

    .line 69
    :pswitch_4
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->slideAnimation()V

    goto :goto_0

    .line 65
    :pswitch_5
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->fillAnimation()V

    goto :goto_0

    .line 61
    :pswitch_6
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->wormAnimation()V

    goto :goto_0

    .line 57
    :pswitch_7
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->scaleAnimation()V

    goto :goto_0

    .line 53
    :pswitch_8
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->colorAnimation()V

    goto :goto_0

    .line 49
    :pswitch_9
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/rd/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/rd/animation/data/Value;)V

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

.method private colorAnimation()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v1

    .line 93
    iget-object v2, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v2

    .line 95
    iget-object v4, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 96
    invoke-virtual {v4}, Lcom/rd/animation/controller/ValueController;->color()Lcom/rd/animation/type/ColorAnimation;

    move-result-object v4

    .line 97
    invoke-virtual {v4, v1, v0}, Lcom/rd/animation/type/ColorAnimation;->with(II)Lcom/rd/animation/type/ColorAnimation;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v2, v3}, Lcom/rd/animation/type/ColorAnimation;->duration(J)Lcom/rd/animation/type/BaseAnimation;

    move-result-object v0

    .line 100
    iget-boolean v1, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_0

    .line 101
    iget v1, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->start()V

    .line 106
    :goto_0
    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    return-void
.end method

.method private dropAnimation()V
    .locals 9

    .line 224
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v0

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    .line 227
    :goto_1
    iget-object v2, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v2, v0}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v4

    .line 228
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v0, v1}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v5

    .line 230
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getPaddingTop()I

    move-result v0

    .line 231
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getPaddingLeft()I

    move-result v1

    .line 232
    iget-object v2, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getOrientation()Lcom/rd/draw/data/Orientation;

    move-result-object v2

    sget-object v3, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 234
    :goto_2
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v8

    mul-int/lit8 v1, v8, 0x3

    add-int v6, v1, v0

    add-int v7, v8, v0

    .line 238
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v0

    .line 240
    iget-object v2, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 241
    invoke-virtual {v2}, Lcom/rd/animation/controller/ValueController;->drop()Lcom/rd/animation/type/DropAnimation;

    move-result-object v2

    .line 242
    invoke-virtual {v2, v0, v1}, Lcom/rd/animation/type/DropAnimation;->duration(J)Lcom/rd/animation/type/DropAnimation;

    move-result-object v3

    .line 243
    invoke-virtual/range {v3 .. v8}, Lcom/rd/animation/type/DropAnimation;->with(IIIII)Lcom/rd/animation/type/DropAnimation;

    move-result-object v0

    .line 245
    iget-boolean v1, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_3

    .line 246
    iget v1, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    goto :goto_3

    .line 248
    :cond_3
    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->start()V

    .line 251
    :goto_3
    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    return-void
.end method

.method private fillAnimation()V
    .locals 7

    .line 178
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v1

    .line 180
    iget-object v2, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v2

    .line 181
    iget-object v3, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v3}, Lcom/rd/draw/data/Indicator;->getStroke()I

    move-result v3

    .line 182
    iget-object v4, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v4

    .line 184
    iget-object v6, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 185
    invoke-virtual {v6}, Lcom/rd/animation/controller/ValueController;->fill()Lcom/rd/animation/type/FillAnimation;

    move-result-object v6

    .line 186
    invoke-virtual {v6, v1, v0, v2, v3}, Lcom/rd/animation/type/FillAnimation;->with(IIII)Lcom/rd/animation/type/FillAnimation;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v4, v5}, Lcom/rd/animation/type/FillAnimation;->duration(J)Lcom/rd/animation/type/BaseAnimation;

    move-result-object v0

    .line 189
    iget-boolean v1, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_0

    .line 190
    iget v1, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->start()V

    .line 195
    :goto_0
    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    return-void
.end method

.method private scaleAnimation()V
    .locals 7

    .line 110
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v1

    .line 112
    iget-object v2, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v2

    .line 113
    iget-object v3, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v3}, Lcom/rd/draw/data/Indicator;->getScaleFactor()F

    move-result v3

    .line 114
    iget-object v4, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v4

    .line 116
    iget-object v6, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 117
    invoke-virtual {v6}, Lcom/rd/animation/controller/ValueController;->scale()Lcom/rd/animation/type/ScaleAnimation;

    move-result-object v6

    .line 118
    invoke-virtual {v6, v1, v0, v2, v3}, Lcom/rd/animation/type/ScaleAnimation;->with(IIIF)Lcom/rd/animation/type/ScaleAnimation;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v4, v5}, Lcom/rd/animation/type/ScaleAnimation;->duration(J)Lcom/rd/animation/type/BaseAnimation;

    move-result-object v0

    .line 121
    iget-boolean v1, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_0

    .line 122
    iget v1, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->start()V

    .line 127
    :goto_0
    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    return-void
.end method

.method private scaleDownAnimation()V
    .locals 7

    .line 277
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v0

    .line 278
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v1

    .line 279
    iget-object v2, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v2

    .line 280
    iget-object v3, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v3}, Lcom/rd/draw/data/Indicator;->getScaleFactor()F

    move-result v3

    .line 281
    iget-object v4, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v4

    .line 283
    iget-object v6, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 284
    invoke-virtual {v6}, Lcom/rd/animation/controller/ValueController;->scaleDown()Lcom/rd/animation/type/ScaleDownAnimation;

    move-result-object v6

    .line 285
    invoke-virtual {v6, v1, v0, v2, v3}, Lcom/rd/animation/type/ScaleDownAnimation;->with(IIIF)Lcom/rd/animation/type/ScaleAnimation;

    move-result-object v0

    .line 286
    invoke-virtual {v0, v4, v5}, Lcom/rd/animation/type/ScaleAnimation;->duration(J)Lcom/rd/animation/type/BaseAnimation;

    move-result-object v0

    .line 288
    iget-boolean v1, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_0

    .line 289
    iget v1, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->start()V

    .line 294
    :goto_0
    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    return-void
.end method

.method private slideAnimation()V
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v0

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    .line 159
    :goto_1
    iget-object v2, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v2, v0}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v0

    .line 160
    iget-object v2, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v2, v1}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v1

    .line 161
    iget-object v2, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v2

    .line 163
    iget-object v4, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 164
    invoke-virtual {v4}, Lcom/rd/animation/controller/ValueController;->slide()Lcom/rd/animation/type/SlideAnimation;

    move-result-object v4

    .line 165
    invoke-virtual {v4, v0, v1}, Lcom/rd/animation/type/SlideAnimation;->with(II)Lcom/rd/animation/type/SlideAnimation;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v2, v3}, Lcom/rd/animation/type/SlideAnimation;->duration(J)Lcom/rd/animation/type/BaseAnimation;

    move-result-object v0

    .line 168
    iget-boolean v1, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_2

    .line 169
    iget v1, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    goto :goto_2

    .line 171
    :cond_2
    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->start()V

    .line 174
    :goto_2
    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    return-void
.end method

.method private swapAnimation()V
    .locals 5

    .line 255
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v0

    .line 256
    :goto_0
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    .line 258
    :goto_1
    iget-object v2, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v2, v0}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v0

    .line 259
    iget-object v2, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v2, v1}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v1

    .line 260
    iget-object v2, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v2

    .line 262
    iget-object v4, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 263
    invoke-virtual {v4}, Lcom/rd/animation/controller/ValueController;->swap()Lcom/rd/animation/type/SwapAnimation;

    move-result-object v4

    .line 264
    invoke-virtual {v4, v0, v1}, Lcom/rd/animation/type/SwapAnimation;->with(II)Lcom/rd/animation/type/SwapAnimation;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v2, v3}, Lcom/rd/animation/type/SwapAnimation;->duration(J)Lcom/rd/animation/type/BaseAnimation;

    move-result-object v0

    .line 267
    iget-boolean v1, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_2

    .line 268
    iget v1, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    goto :goto_2

    .line 270
    :cond_2
    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->start()V

    .line 273
    :goto_2
    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    return-void
.end method

.method private thinWormAnimation()V
    .locals 7

    .line 199
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v0

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    .line 202
    :goto_1
    iget-object v2, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v2, v0}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v2

    .line 203
    iget-object v3, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v3, v1}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v3

    if-le v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 206
    :goto_2
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v1

    .line 207
    iget-object v4, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v4

    .line 209
    iget-object v6, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 210
    invoke-virtual {v6}, Lcom/rd/animation/controller/ValueController;->thinWorm()Lcom/rd/animation/type/ThinWormAnimation;

    move-result-object v6

    .line 211
    invoke-virtual {v6, v2, v3, v1, v0}, Lcom/rd/animation/type/ThinWormAnimation;->with(IIIZ)Lcom/rd/animation/type/WormAnimation;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v4, v5}, Lcom/rd/animation/type/WormAnimation;->duration(J)Lcom/rd/animation/type/WormAnimation;

    move-result-object v0

    .line 214
    iget-boolean v1, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_3

    .line 215
    iget v1, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    goto :goto_3

    .line 217
    :cond_3
    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->start()V

    .line 220
    :goto_3
    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    return-void
.end method

.method private wormAnimation()V
    .locals 7

    .line 131
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v0

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    .line 134
    :goto_1
    iget-object v2, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v2, v0}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v2

    .line 135
    iget-object v3, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v3, v1}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v3

    if-le v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 138
    :goto_2
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v1

    .line 139
    iget-object v4, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v4

    .line 141
    iget-object v6, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 142
    invoke-virtual {v6}, Lcom/rd/animation/controller/ValueController;->worm()Lcom/rd/animation/type/WormAnimation;

    move-result-object v6

    .line 143
    invoke-virtual {v6, v2, v3, v1, v0}, Lcom/rd/animation/type/WormAnimation;->with(IIIZ)Lcom/rd/animation/type/WormAnimation;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v4, v5}, Lcom/rd/animation/type/WormAnimation;->duration(J)Lcom/rd/animation/type/WormAnimation;

    move-result-object v0

    .line 146
    iget-boolean v1, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v1, :cond_3

    .line 147
    iget v1, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v1}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    goto :goto_3

    .line 149
    :cond_3
    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->start()V

    .line 152
    :goto_3
    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    return-void
.end method


# virtual methods
.method public basic()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    .line 36
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->animate()V

    return-void
.end method

.method public end()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->end()V

    :cond_0
    return-void
.end method

.method public interactive(F)V
    .locals 1

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    .line 29
    iput p1, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    .line 30
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->animate()V

    return-void
.end method
