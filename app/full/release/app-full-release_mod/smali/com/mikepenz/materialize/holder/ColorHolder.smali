.class public Lcom/mikepenz/materialize/holder/ColorHolder;
.super Ljava/lang/Object;
.source "ColorHolder.java"


# instance fields
.field private mColorInt:I

.field private mColorRes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorInt:I

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorRes:I

    return-void
.end method

.method public static applyToOr(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialize/holder/ColorHolder;->applyToOr(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 173
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static applyToOrTransparent(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialize/holder/ColorHolder;->applyTo(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x0

    .line 188
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 158
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialize/holder/ColorHolder;->color(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;II)I
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 141
    invoke-static {p1, p2, p3}, Lcom/mikepenz/materialize/util/UIUtils;->getThemeColorFromAttrOrRes(Landroid/content/Context;II)I

    move-result p0

    return p0

    .line 143
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mikepenz/materialize/holder/ColorHolder;->color(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static fromColor(I)Lcom/mikepenz/materialize/holder/ColorHolder;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 50
    new-instance v0, Lcom/mikepenz/materialize/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialize/holder/ColorHolder;-><init>()V

    .line 51
    iput p0, v0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorInt:I

    return-object v0
.end method

.method public static fromColorRes(I)Lcom/mikepenz/materialize/holder/ColorHolder;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 44
    new-instance v0, Lcom/mikepenz/materialize/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialize/holder/ColorHolder;-><init>()V

    .line 45
    iput p0, v0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorRes:I

    return-object v0
.end method


# virtual methods
.method public applyTo(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 2

    .line 62
    iget v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorInt:I

    if-eqz v0, :cond_0

    .line 63
    iget p1, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorInt:I

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 64
    :cond_0
    iget v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 65
    iget v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorRes:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public applyToBackground(Landroid/view/View;)V
    .locals 2

    .line 76
    iget v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorInt:I

    if-eqz v0, :cond_0

    .line 77
    iget v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorInt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 78
    :cond_0
    iget v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 79
    iget v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorRes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public applyToOr(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 90
    iget v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorInt:I

    if-eqz v0, :cond_0

    .line 91
    iget p2, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorInt:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 92
    :cond_0
    iget v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorRes:I

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 95
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public color(Landroid/content/Context;)I
    .locals 2

    .line 124
    iget v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorInt:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 125
    iget v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorRes:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorInt:I

    .line 127
    :cond_0
    iget p1, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorInt:I

    return p1
.end method

.method public color(Landroid/content/Context;II)I
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 109
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialize/holder/ColorHolder;->color(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-static {p1, p2, p3}, Lcom/mikepenz/materialize/util/UIUtils;->getThemeColorFromAttrOrRes(Landroid/content/Context;II)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public getColorInt()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorInt:I

    return v0
.end method

.method public getColorRes()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorRes:I

    return v0
.end method

.method public setColorInt(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorInt:I

    return-void
.end method

.method public setColorRes(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/mikepenz/materialize/holder/ColorHolder;->mColorRes:I

    return-void
.end method
