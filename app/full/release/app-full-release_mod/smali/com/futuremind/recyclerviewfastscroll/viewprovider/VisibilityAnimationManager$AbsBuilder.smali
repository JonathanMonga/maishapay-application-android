.class public abstract Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;
.super Ljava/lang/Object;
.source "VisibilityAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected hideAnimatorResource:I

.field protected hideDelay:I

.field protected pivotX:F

.field protected pivotY:F

.field protected showAnimatorResource:I

.field protected final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget v0, Lcom/futuremind/recyclerviewfastscroll/R$animator;->fastscroll__default_show:I

    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->showAnimatorResource:I

    .line 80
    sget v0, Lcom/futuremind/recyclerviewfastscroll/R$animator;->fastscroll__default_hide:I

    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->hideAnimatorResource:I

    const/16 v0, 0x3e8

    .line 81
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->hideDelay:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 82
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->pivotX:F

    .line 83
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->pivotY:F

    .line 86
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public withHideAnimator(I)Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 95
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->hideAnimatorResource:I

    return-object p0
.end method

.method public withHideDelay(I)Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 100
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->hideDelay:I

    return-object p0
.end method

.method public withPivotX(F)Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 105
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->pivotX:F

    return-object p0
.end method

.method public withPivotY(F)Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 110
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->pivotY:F

    return-object p0
.end method

.method public withShowAnimator(I)Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 90
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->showAnimatorResource:I

    return-object p0
.end method
