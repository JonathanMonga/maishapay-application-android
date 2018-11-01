.class public Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "AutoScrollViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager$MyHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTERVAL:I = 0x5dc

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final SCROLL_WHAT:I = 0x0

.field public static final SLIDE_BORDER_MODE_CYCLE:I = 0x1

.field public static final SLIDE_BORDER_MODE_NONE:I = 0x0

.field public static final SLIDE_BORDER_MODE_TO_PARENT:I = 0x2


# instance fields
.field private direction:I

.field private downX:F

.field private handler:Landroid/os/Handler;

.field private interval:J

.field private isAutoScroll:Z

.field private isBorderAnimation:Z

.field private isCycle:Z

.field private isStopByTouch:Z

.field private scroller:Lcn/trinea/android/view/autoscrollviewpager/CustomDurationScroller;

.field private slideBorderMode:I

.field private stopScrollWhenTouch:Z

.field private touchX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 69
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x5dc

    .line 48
    iput-wide v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->interval:J

    const/4 p1, 0x1

    .line 50
    iput p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->direction:I

    .line 52
    iput-boolean p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isCycle:Z

    .line 54
    iput-boolean p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->stopScrollWhenTouch:Z

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->slideBorderMode:I

    .line 58
    iput-boolean p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isBorderAnimation:Z

    .line 61
    iput-boolean v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isAutoScroll:Z

    .line 62
    iput-boolean v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isStopByTouch:Z

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->touchX:F

    iput p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->downX:F

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->scroller:Lcn/trinea/android/view/autoscrollviewpager/CustomDurationScroller;

    .line 70
    invoke-direct {p0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x5dc

    .line 48
    iput-wide p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->interval:J

    const/4 p1, 0x1

    .line 50
    iput p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->direction:I

    .line 52
    iput-boolean p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isCycle:Z

    .line 54
    iput-boolean p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->stopScrollWhenTouch:Z

    const/4 p2, 0x0

    .line 56
    iput p2, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->slideBorderMode:I

    .line 58
    iput-boolean p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isBorderAnimation:Z

    .line 61
    iput-boolean p2, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isAutoScroll:Z

    .line 62
    iput-boolean p2, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isStopByTouch:Z

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->touchX:F

    iput p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->downX:F

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->scroller:Lcn/trinea/android/view/autoscrollviewpager/CustomDurationScroller;

    .line 75
    invoke-direct {p0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->init()V

    return-void
.end method

.method static synthetic access$100(Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->interval:J

    return-wide v0
.end method

.method static synthetic access$200(Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;J)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->sendScrollMessage(J)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 79
    new-instance v0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager$MyHandler;-><init>(Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager$1;)V

    iput-object v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->handler:Landroid/os/Handler;

    .line 80
    invoke-direct {p0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->setViewPagerScroller()V

    return-void
.end method

.method private sendScrollMessage(J)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setViewPagerScroller()V
    .locals 5

    .line 127
    :try_start_0
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 129
    const-class v2, Landroid/support/v4/view/ViewPager;

    const-string v3, "sInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 130
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 132
    new-instance v1, Lcn/trinea/android/view/autoscrollviewpager/CustomDurationScroller;

    invoke-virtual {p0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Interpolator;

    invoke-direct {v1, v3, v2}, Lcn/trinea/android/view/autoscrollviewpager/CustomDurationScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->scroller:Lcn/trinea/android/view/autoscrollviewpager/CustomDurationScroller;

    .line 133
    iget-object v1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->scroller:Lcn/trinea/android/view/autoscrollviewpager/CustomDurationScroller;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getDirection()I
    .locals 1

    .line 252
    iget v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->direction:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getInterval()J
    .locals 2

    .line 234
    iget-wide v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->interval:J

    return-wide v0
.end method

.method public getSlideBorderMode()I
    .locals 1

    .line 307
    iget v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->slideBorderMode:I

    return v0
.end method

.method public isBorderAnimation()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isBorderAnimation:Z

    return v0
.end method

.method public isCycle()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isCycle:Z

    return v0
.end method

.method public isStopScrollWhenTouch()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->stopScrollWhenTouch:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 173
    iget-boolean v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->stopScrollWhenTouch:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isAutoScroll:Z

    if-eqz v0, :cond_0

    .line 175
    iput-boolean v1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isStopByTouch:Z

    .line 176
    invoke-virtual {p0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->stopAutoScroll()V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isStopByTouch:Z

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->startAutoScroll()V

    .line 182
    :cond_1
    :goto_0
    iget v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->slideBorderMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->slideBorderMode:I

    if-ne v0, v1, :cond_9

    .line 183
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->touchX:F

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 185
    iget v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->touchX:F

    iput v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->downX:F

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->getCurrentItem()I

    move-result v0

    .line 188
    invoke-virtual {p0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    move v3, v4

    goto :goto_1

    .line 189
    :cond_4
    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    :goto_1
    if-nez v0, :cond_5

    .line 196
    iget v5, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->downX:F

    iget v6, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->touchX:F

    cmpg-float v5, v5, v6

    if-lez v5, :cond_6

    :cond_5
    add-int/lit8 v5, v3, -0x1

    if-ne v0, v5, :cond_9

    iget v5, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->downX:F

    iget v6, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->touchX:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_9

    .line 197
    :cond_6
    iget v5, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->slideBorderMode:I

    if-ne v5, v2, :cond_7

    .line 198
    invoke-virtual {p0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_7
    if-le v3, v1, :cond_8

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 201
    iget-boolean v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isBorderAnimation:Z

    invoke-virtual {p0, v3, v0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->setCurrentItem(IZ)V

    .line 203
    :cond_8
    invoke-virtual {p0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 205
    :goto_2
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 208
    :cond_9
    invoke-virtual {p0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 209
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public scrollOnce()V
    .locals 4

    .line 143
    invoke-virtual {p0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->getCurrentItem()I

    move-result v1

    if-eqz v0, :cond_5

    .line 146
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_2

    .line 150
    :cond_0
    iget v3, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->direction:I

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/2addr v1, v2

    :goto_0
    if-gez v1, :cond_2

    .line 152
    iget-boolean v1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isCycle:Z

    if-eqz v1, :cond_4

    sub-int/2addr v0, v2

    .line 153
    iget-boolean v1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isBorderAnimation:Z

    invoke-virtual {p0, v0, v1}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_2
    if-ne v1, v0, :cond_3

    .line 156
    iget-boolean v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isCycle:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 157
    iget-boolean v1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isBorderAnimation:Z

    invoke-virtual {p0, v0, v1}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    .line 160
    :cond_3
    invoke-virtual {p0, v1, v2}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->setCurrentItem(IZ)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public setBorderAnimation(Z)V
    .locals 0

    .line 335
    iput-boolean p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isBorderAnimation:Z

    return-void
.end method

.method public setCycle(Z)V
    .locals 0

    .line 279
    iput-boolean p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isCycle:Z

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    .line 261
    iput p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->direction:I

    return-void
.end method

.method public setInterval(J)V
    .locals 0

    .line 243
    iput-wide p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->interval:J

    return-void
.end method

.method public setScrollDurationFactor(D)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->scroller:Lcn/trinea/android/view/autoscrollviewpager/CustomDurationScroller;

    invoke-virtual {v0, p1, p2}, Lcn/trinea/android/view/autoscrollviewpager/CustomDurationScroller;->setScrollDurationFactor(D)V

    return-void
.end method

.method public setSlideBorderMode(I)V
    .locals 0

    .line 317
    iput p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->slideBorderMode:I

    return-void
.end method

.method public setStopScrollWhenTouch(Z)V
    .locals 0

    .line 297
    iput-boolean p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->stopScrollWhenTouch:Z

    return-void
.end method

.method public startAutoScroll()V
    .locals 2

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isAutoScroll:Z

    .line 88
    iget-wide v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->interval:J

    invoke-direct {p0, v0, v1}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->sendScrollMessage(J)V

    return-void
.end method

.method public startAutoScroll(I)V
    .locals 2

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isAutoScroll:Z

    int-to-long v0, p1

    .line 98
    invoke-direct {p0, v0, v1}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->sendScrollMessage(J)V

    return-void
.end method

.method public stopAutoScroll()V
    .locals 2

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->isAutoScroll:Z

    .line 106
    iget-object v1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
