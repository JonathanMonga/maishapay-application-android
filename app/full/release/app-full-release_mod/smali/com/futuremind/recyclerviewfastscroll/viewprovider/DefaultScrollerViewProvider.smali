.class public Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;
.super Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;
.source "DefaultScrollerViewProvider.java"


# instance fields
.field private bubble:Landroid/view/View;

.field private handle:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getBubbleOffset()I
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->getScroller()Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->isVertical()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->handle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->bubble:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->handle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->bubble:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    :goto_1
    float-to-int v0, v0

    return v0
.end method

.method protected provideBubbleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;
    .locals 3

    .line 61
    new-instance v0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultBubbleBehavior;

    new-instance v1, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$Builder;

    iget-object v2, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->bubble:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$Builder;-><init>(Landroid/view/View;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$Builder;->withPivotX(F)Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->withPivotY(F)Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->build()Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultBubbleBehavior;-><init>(Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;)V

    return-object v0
.end method

.method public provideBubbleTextView()Landroid/widget/TextView;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->bubble:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public provideBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/futuremind/recyclerviewfastscroll/R$layout;->fastscroll__default_bubble:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->bubble:Landroid/view/View;

    .line 41
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->bubble:Landroid/view/View;

    return-object p1
.end method

.method protected provideHandleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public provideHandleView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 23
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->handle:Landroid/view/View;

    .line 25
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->getScroller()Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->isVertical()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/futuremind/recyclerviewfastscroll/R$dimen;->fastscroll__handle_inset:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    move v6, p1

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->getScroller()Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->isVertical()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_1
    move v5, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/futuremind/recyclerviewfastscroll/R$dimen;->fastscroll__handle_inset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    .line 27
    :goto_2
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/futuremind/recyclerviewfastscroll/R$drawable;->fastscroll__default_handle:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, p1

    move v3, v5

    move v4, v6

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 28
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->handle:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/futuremind/recyclerviewfastscroll/Utils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->getScroller()Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/futuremind/recyclerviewfastscroll/R$dimen;->fastscroll__handle_clickable_width:I

    goto :goto_3

    :cond_2
    sget v0, Lcom/futuremind/recyclerviewfastscroll/R$dimen;->fastscroll__handle_height:I

    :goto_3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 31
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->getScroller()Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/futuremind/recyclerviewfastscroll/R$dimen;->fastscroll__handle_height:I

    goto :goto_4

    :cond_3
    sget v1, Lcom/futuremind/recyclerviewfastscroll/R$dimen;->fastscroll__handle_clickable_width:I

    :goto_4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 32
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 33
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->handle:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultScrollerViewProvider;->handle:Landroid/view/View;

    return-object p1
.end method
