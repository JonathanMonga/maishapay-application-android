.class public Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;
.super Ljava/lang/Object;
.source "VisibilityAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$Builder;,
        Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;
    }
.end annotation


# instance fields
.field protected hideAnimator:Landroid/animation/AnimatorSet;

.field private pivotXRelative:F

.field private pivotYRelative:F

.field protected showAnimator:Landroid/animation/AnimatorSet;

.field protected final view:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;IIFFI)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->view:Landroid/view/View;

    .line 29
    iput p4, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->pivotXRelative:F

    .line 30
    iput p5, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->pivotYRelative:F

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p3

    check-cast p3, Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->hideAnimator:Landroid/animation/AnimatorSet;

    .line 32
    iget-object p3, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->hideAnimator:Landroid/animation/AnimatorSet;

    int-to-long p4, p6

    invoke-virtual {p3, p4, p5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 33
    iget-object p3, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->hideAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorSet;

    iput-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->showAnimator:Landroid/animation/AnimatorSet;

    .line 35
    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->showAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 36
    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->hideAnimator:Landroid/animation/AnimatorSet;

    new-instance p3, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$1;

    invoke-direct {p3, p0, p1}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$1;-><init>(Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->updatePivot()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->updatePivot()V

    .line 69
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->hideAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->hideAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 60
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->updatePivot()V

    .line 63
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->showAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method protected updatePivot()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->view:Landroid/view/View;

    iget v1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->pivotXRelative:F

    iget-object v2, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 74
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->view:Landroid/view/View;

    iget v1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->pivotYRelative:F

    iget-object v2, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
