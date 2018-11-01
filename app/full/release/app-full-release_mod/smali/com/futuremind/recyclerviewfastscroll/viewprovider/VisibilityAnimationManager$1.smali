.class Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VisibilityAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;-><init>(Landroid/view/View;IIFFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;

.field final synthetic val$view:Landroid/view/View;

.field wasCanceled:Z


# direct methods
.method constructor <init>(Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;Landroid/view/View;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$1;->this$0:Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;

    iput-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$1;->wasCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 44
    iget-boolean p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$1;->wasCanceled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$1;->val$view:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$1;->wasCanceled:Z

    return-void
.end method
