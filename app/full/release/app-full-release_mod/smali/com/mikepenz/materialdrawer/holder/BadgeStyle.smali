.class public Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
.super Ljava/lang/Object;
.source "BadgeStyle.java"


# instance fields
.field private mBadgeBackground:Landroid/graphics/drawable/Drawable;

.field private mColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field private mColorPressed:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field private mCorners:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field private mGradientDrawable:I

.field private mMinWidth:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field private mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field private mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field private mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget v0, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_badge:I

    iput v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mGradientDrawable:I

    const/4 v0, 0x2

    .line 30
    invoke-static {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    const/4 v0, 0x3

    .line 31
    invoke-static {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    const/16 v0, 0x14

    .line 32
    invoke-static {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mMinWidth:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget v0, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_badge:I

    iput v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mGradientDrawable:I

    const/4 v0, 0x2

    .line 30
    invoke-static {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    const/4 v0, 0x3

    .line 31
    invoke-static {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    const/16 v0, 0x14

    .line 32
    invoke-static {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mMinWidth:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    .line 183
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    .line 184
    invoke-static {p2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mColorPressed:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget v0, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_badge:I

    iput v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mGradientDrawable:I

    const/4 v0, 0x2

    .line 30
    invoke-static {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    const/4 v0, 0x3

    .line 31
    invoke-static {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    const/16 v0, 0x14

    .line 32
    invoke-static {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mMinWidth:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    .line 188
    iput p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mGradientDrawable:I

    .line 189
    invoke-static {p2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    .line 190
    invoke-static {p3}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mColorPressed:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    .line 191
    invoke-static {p4}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-void
.end method


# virtual methods
.method public getBadgeBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getColorPressed()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mColorPressed:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getCorners()Lcom/mikepenz/materialdrawer/holder/DimenHolder;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mCorners:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object v0
.end method

.method public getGradientDrawable()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mGradientDrawable:I

    return v0
.end method

.method public getMinWidth()Lcom/mikepenz/materialdrawer/holder/DimenHolder;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mMinWidth:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object v0
.end method

.method public getPaddingLeftRight()Lcom/mikepenz/materialdrawer/holder/DimenHolder;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object v0
.end method

.method public getPaddingTopBottom()Lcom/mikepenz/materialdrawer/holder/DimenHolder;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object v0
.end method

.method public getTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public style(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->style(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public style(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 199
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Lcom/mikepenz/materialdrawer/model/utils/BadgeDrawableBuilder;

    invoke-direct {v1, p0}, Lcom/mikepenz/materialdrawer/model/utils/BadgeDrawableBuilder;-><init>(Lcom/mikepenz/materialdrawer/holder/BadgeStyle;)V

    invoke-virtual {v1, v0}, Lcom/mikepenz/materialdrawer/model/utils/BadgeDrawableBuilder;->build(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mikepenz/materialize/util/UIUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1}, Lcom/mikepenz/materialize/util/UIUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    if-eqz v1, :cond_1

    .line 209
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->applyToOr(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 211
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 215
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-virtual {p2, v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->asPixel(Landroid/content/Context;)I

    move-result p2

    .line 216
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-virtual {v1, v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->asPixel(Landroid/content/Context;)I

    move-result v1

    .line 217
    invoke-virtual {p1, p2, v1, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 220
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mMinWidth:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-virtual {p2, v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->asPixel(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMinWidth(I)V

    return-void
.end method

.method public withBadgeBackground(Landroid/graphics/drawable/Drawable;)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mGradientDrawable:I

    return-object p0
.end method

.method public withColor(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 59
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withColorPressed(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 73
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mColorPressed:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withColorPressedRes(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 78
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mColorPressed:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withColorRes(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 64
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withCorners(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 101
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromPixel(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mCorners:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withCorners(Lcom/mikepenz/materialdrawer/holder/DimenHolder;)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mCorners:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withCornersDp(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    .line 106
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mCorners:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withGradientDrawable(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 39
    iput p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mGradientDrawable:I

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public withMinWidth(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 170
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromPixel(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mMinWidth:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withMinWidth(Lcom/mikepenz/materialdrawer/holder/DimenHolder;)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mMinWidth:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withPadding(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 154
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromPixel(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    .line 155
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromPixel(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withPadding(Lcom/mikepenz/materialdrawer/holder/DimenHolder;)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    .line 161
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withPaddingLeftRightDp(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    .line 125
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withPaddingLeftRightPx(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 120
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromPixel(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withPaddingLeftRightRes(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 130
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromResource(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withPaddingTopBottomDp(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    .line 144
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withPaddingTopBottomPx(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 139
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromPixel(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withPaddingTopBottomRes(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 149
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromResource(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withTextColor(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 87
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withTextColorRes(I)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 92
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method
