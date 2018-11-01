.class public Lcom/rd/draw/data/Indicator;
.super Ljava/lang/Object;
.source "Indicator.java"


# static fields
.field public static final COUNT_NONE:I = -0x1

.field public static final DEFAULT_COUNT:I = 0x3

.field public static final DEFAULT_PADDING_DP:I = 0x8

.field public static final DEFAULT_RADIUS_DP:I = 0x6

.field public static final IDLE_ANIMATION_DURATION:I = 0xfa

.field public static final MIN_COUNT:I = 0x1


# instance fields
.field private animationDuration:J

.field private animationType:Lcom/rd/animation/type/AnimationType;

.field private autoVisibility:Z

.field private count:I

.field private dynamicCount:Z

.field private fadeOnIdle:Z

.field private height:I

.field private idleDuration:J

.field private interactiveAnimation:Z

.field private isIdle:Z

.field private lastSelectedPosition:I

.field private orientation:Lcom/rd/draw/data/Orientation;

.field private padding:I

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field private radius:I

.field private rtlMode:Lcom/rd/draw/data/RtlMode;

.field private scaleFactor:F

.field private selectedColor:I

.field private selectedPosition:I

.field private selectingPosition:I

.field private stroke:I

.field private unselectedColor:I

.field private viewPagerId:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 42
    iput v0, p0, Lcom/rd/draw/data/Indicator;->count:I

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/rd/draw/data/Indicator;->viewPagerId:I

    return-void
.end method


# virtual methods
.method public getAnimationDuration()J
    .locals 2

    .line 199
    iget-wide v0, p0, Lcom/rd/draw/data/Indicator;->animationDuration:J

    return-wide v0
.end method

.method public getAnimationType()Lcom/rd/animation/type/AnimationType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/rd/draw/data/Indicator;->animationType:Lcom/rd/animation/type/AnimationType;

    if-nez v0, :cond_0

    .line 261
    sget-object v0, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    iput-object v0, p0, Lcom/rd/draw/data/Indicator;->animationType:Lcom/rd/animation/type/AnimationType;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/rd/draw/data/Indicator;->animationType:Lcom/rd/animation/type/AnimationType;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/rd/draw/data/Indicator;->count:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/rd/draw/data/Indicator;->height:I

    return v0
.end method

.method public getIdleDuration()J
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/rd/draw/data/Indicator;->idleDuration:J

    return-wide v0
.end method

.method public getLastSelectedPosition()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/rd/draw/data/Indicator;->lastSelectedPosition:I

    return v0
.end method

.method public getOrientation()Lcom/rd/draw/data/Orientation;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/rd/draw/data/Indicator;->orientation:Lcom/rd/draw/data/Orientation;

    if-nez v0, :cond_0

    .line 249
    sget-object v0, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    iput-object v0, p0, Lcom/rd/draw/data/Indicator;->orientation:Lcom/rd/draw/data/Orientation;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/rd/draw/data/Indicator;->orientation:Lcom/rd/draw/data/Orientation;

    return-object v0
.end method

.method public getPadding()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/rd/draw/data/Indicator;->padding:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/rd/draw/data/Indicator;->paddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/rd/draw/data/Indicator;->paddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/rd/draw/data/Indicator;->paddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/rd/draw/data/Indicator;->paddingTop:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/rd/draw/data/Indicator;->radius:I

    return v0
.end method

.method public getRtlMode()Lcom/rd/draw/data/RtlMode;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/rd/draw/data/Indicator;->rtlMode:Lcom/rd/draw/data/RtlMode;

    if-nez v0, :cond_0

    .line 273
    sget-object v0, Lcom/rd/draw/data/RtlMode;->Off:Lcom/rd/draw/data/RtlMode;

    iput-object v0, p0, Lcom/rd/draw/data/Indicator;->rtlMode:Lcom/rd/draw/data/RtlMode;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/rd/draw/data/Indicator;->rtlMode:Lcom/rd/draw/data/RtlMode;

    return-object v0
.end method

.method public getScaleFactor()F
    .locals 1

    .line 127
    iget v0, p0, Lcom/rd/draw/data/Indicator;->scaleFactor:F

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/rd/draw/data/Indicator;->selectedColor:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/rd/draw/data/Indicator;->selectedPosition:I

    return v0
.end method

.method public getSelectingPosition()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/rd/draw/data/Indicator;->selectingPosition:I

    return v0
.end method

.method public getStroke()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/rd/draw/data/Indicator;->stroke:I

    return v0
.end method

.method public getUnselectedColor()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/rd/draw/data/Indicator;->unselectedColor:I

    return v0
.end method

.method public getViewPagerId()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/rd/draw/data/Indicator;->viewPagerId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/rd/draw/data/Indicator;->width:I

    return v0
.end method

.method public isAutoVisibility()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/rd/draw/data/Indicator;->autoVisibility:Z

    return v0
.end method

.method public isDynamicCount()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/rd/draw/data/Indicator;->dynamicCount:Z

    return v0
.end method

.method public isFadeOnIdle()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/rd/draw/data/Indicator;->fadeOnIdle:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/rd/draw/data/Indicator;->isIdle:Z

    return v0
.end method

.method public isInteractiveAnimation()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/rd/draw/data/Indicator;->interactiveAnimation:Z

    return v0
.end method

.method public setAnimationDuration(J)V
    .locals 0

    .line 203
    iput-wide p1, p0, Lcom/rd/draw/data/Indicator;->animationDuration:J

    return-void
.end method

.method public setAnimationType(Lcom/rd/animation/type/AnimationType;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/rd/draw/data/Indicator;->animationType:Lcom/rd/animation/type/AnimationType;

    return-void
.end method

.method public setAutoVisibility(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/rd/draw/data/Indicator;->autoVisibility:Z

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/rd/draw/data/Indicator;->count:I

    return-void
.end method

.method public setDynamicCount(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/rd/draw/data/Indicator;->dynamicCount:Z

    return-void
.end method

.method public setFadeOnIdle(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/rd/draw/data/Indicator;->fadeOnIdle:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/rd/draw/data/Indicator;->height:I

    return-void
.end method

.method public setIdle(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/rd/draw/data/Indicator;->isIdle:Z

    return-void
.end method

.method public setIdleDuration(J)V
    .locals 0

    .line 195
    iput-wide p1, p0, Lcom/rd/draw/data/Indicator;->idleDuration:J

    return-void
.end method

.method public setInteractiveAnimation(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/rd/draw/data/Indicator;->interactiveAnimation:Z

    return-void
.end method

.method public setLastSelectedPosition(I)V
    .locals 0

    .line 235
    iput p1, p0, Lcom/rd/draw/data/Indicator;->lastSelectedPosition:I

    return-void
.end method

.method public setOrientation(Lcom/rd/draw/data/Orientation;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/rd/draw/data/Indicator;->orientation:Lcom/rd/draw/data/Orientation;

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/rd/draw/data/Indicator;->padding:I

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/rd/draw/data/Indicator;->paddingBottom:I

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/rd/draw/data/Indicator;->paddingLeft:I

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/rd/draw/data/Indicator;->paddingRight:I

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/rd/draw/data/Indicator;->paddingTop:I

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/rd/draw/data/Indicator;->radius:I

    return-void
.end method

.method public setRtlMode(Lcom/rd/draw/data/RtlMode;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/rd/draw/data/Indicator;->rtlMode:Lcom/rd/draw/data/RtlMode;

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/rd/draw/data/Indicator;->scaleFactor:F

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/rd/draw/data/Indicator;->selectedColor:I

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/rd/draw/data/Indicator;->selectedPosition:I

    return-void
.end method

.method public setSelectingPosition(I)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/rd/draw/data/Indicator;->selectingPosition:I

    return-void
.end method

.method public setStroke(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/rd/draw/data/Indicator;->stroke:I

    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/rd/draw/data/Indicator;->unselectedColor:I

    return-void
.end method

.method public setViewPagerId(I)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/rd/draw/data/Indicator;->viewPagerId:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/rd/draw/data/Indicator;->width:I

    return-void
.end method
