.class Lcom/nightonke/boommenu/BackgroundView;
.super Landroid/widget/FrameLayout;
.source "BackgroundView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private dimColor:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/nightonke/boommenu/BoomMenuButton;)V
    .locals 3

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getDimColor()I

    move-result p1

    iput p1, p0, Lcom/nightonke/boommenu/BackgroundView;->dimColor:I

    .line 32
    invoke-virtual {p2}, Lcom/nightonke/boommenu/BoomMenuButton;->getParentView()Landroid/view/ViewGroup;

    move-result-object p1

    .line 33
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BackgroundView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BackgroundView;->setBackgroundColor(I)V

    .line 38
    new-instance v1, Lcom/nightonke/boommenu/BackgroundView$1;

    invoke-direct {v1, p0, p2}, Lcom/nightonke/boommenu/BackgroundView$1;-><init>(Lcom/nightonke/boommenu/BackgroundView;Lcom/nightonke/boommenu/BoomMenuButton;)V

    invoke-virtual {p0, v1}, Lcom/nightonke/boommenu/BackgroundView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BackgroundView;->setMotionEventSplittingEnabled(Z)V

    .line 45
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected dim(JLandroid/animation/AnimatorListenerAdapter;)V
    .locals 10

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BackgroundView;->setVisibility(I)V

    const-string v2, "backgroundColor"

    .line 58
    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v9, v1, [I

    aput v0, v9, v0

    iget v0, p0, Lcom/nightonke/boommenu/BackgroundView;->dimColor:I

    const/4 v1, 0x1

    aput v0, v9, v1

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-wide v5, p1

    move-object v8, p3

    invoke-static/range {v1 .. v9}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TypeEvaluator;Landroid/animation/AnimatorListenerAdapter;[I)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method protected light(JLandroid/animation/AnimatorListenerAdapter;)V
    .locals 9

    const-string v1, "backgroundColor"

    .line 64
    new-instance v6, Landroid/animation/ArgbEvaluator;

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v0, 0x2

    new-array v8, v0, [I

    iget v0, p0, Lcom/nightonke/boommenu/BackgroundView;->dimColor:I

    const/4 v2, 0x0

    aput v0, v8, v2

    const/4 v0, 0x1

    aput v2, v8, v0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TypeEvaluator;Landroid/animation/AnimatorListenerAdapter;[I)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method protected reLayout(Lcom/nightonke/boommenu/BoomMenuButton;)V
    .locals 2

    .line 49
    invoke-virtual {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->getParentView()Landroid/view/ViewGroup;

    move-result-object p1

    .line 50
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BackgroundView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 53
    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BackgroundView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
