.class Lcom/github/paolorotolo/appintro/DefaultIndicatorController;
.super Ljava/lang/Object;
.source "DefaultIndicatorController.java"

# interfaces
.implements Lcom/github/paolorotolo/appintro/IndicatorController;


# static fields
.field public static final DEFAULT_COLOR:I = 0x1

.field private static final FIRST_PAGE_NUM:I


# instance fields
.field private mContext:Landroid/content/Context;

.field mCurrentPosition:I

.field private mDotLayout:Landroid/widget/LinearLayout;

.field private mDots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideCount:I

.field selectedDotColor:I

.field unselectedDotColor:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->selectedDotColor:I

    .line 19
    iput v0, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->unselectedDotColor:I

    return-void
.end method


# virtual methods
.method public initialize(I)V
    .locals 5

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->mDots:Ljava/util/List;

    .line 37
    iput p1, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->mSlideCount:I

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->selectedDotColor:I

    .line 39
    iput v0, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->unselectedDotColor:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 42
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    iget-object v3, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->mContext:Landroid/content/Context;

    sget v4, Lcom/github/paolorotolo/appintro/R$drawable;->indicator_dot_grey:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    iget-object v4, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->mDotLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v3, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->mDots:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->selectPosition(I)V

    return-void
.end method

.method public newInstance(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->mContext:Landroid/content/Context;

    .line 29
    sget v0, Lcom/github/paolorotolo/appintro/R$layout;->default_indicator:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->mDotLayout:Landroid/widget/LinearLayout;

    .line 31
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->mDotLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public selectPosition(I)V
    .locals 6

    .line 57
    iput p1, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->mCurrentPosition:I

    const/4 v0, 0x0

    .line 58
    :goto_0
    iget v1, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->mSlideCount:I

    if-ge v0, v1, :cond_3

    if-ne v0, p1, :cond_0

    .line 59
    sget v1, Lcom/github/paolorotolo/appintro/R$drawable;->indicator_dot_white:I

    goto :goto_1

    :cond_0
    sget v1, Lcom/github/paolorotolo/appintro/R$drawable;->indicator_dot_grey:I

    .line 61
    :goto_1
    iget-object v2, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 62
    iget v2, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->selectedDotColor:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    if-ne v0, p1, :cond_1

    .line 63
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v4, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->selectedDotColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 64
    :cond_1
    iget v2, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->unselectedDotColor:I

    if-eq v2, v3, :cond_2

    if-eq v0, p1, :cond_2

    .line 65
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->unselectedDotColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->mDots:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setSelectedIndicatorColor(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->selectedDotColor:I

    .line 73
    iget p1, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->mCurrentPosition:I

    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->selectPosition(I)V

    return-void
.end method

.method public setUnselectedIndicatorColor(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->unselectedDotColor:I

    .line 79
    iget p1, p0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->mCurrentPosition:I

    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;->selectPosition(I)V

    return-void
.end method
