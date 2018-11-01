.class public abstract Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;
.source "BaseDescribeableDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/mikepenz/materialdrawer/model/BaseViewHolder;",
        ">",
        "Lcom/mikepenz/materialdrawer/model/BaseDrawerItem<",
        "TT;TVH;>;"
    }
.end annotation


# instance fields
.field private description:Lcom/mikepenz/materialdrawer/holder/StringHolder;

.field private descriptionTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;-><init>()V

    return-void
.end method


# virtual methods
.method protected bindViewHelper(Lcom/mikepenz/materialdrawer/model/BaseViewHolder;)V
    .locals 9

    .line 57
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    iget-object v1, p1, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 63
    iget-object v1, p1, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 66
    iget-object v1, p1, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->getSelectedColor(Landroid/content/Context;)I

    move-result v1

    .line 71
    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->getColor(Landroid/content/Context;)I

    move-result v2

    .line 72
    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->getSelectedTextColor(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->getTextColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 74
    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->getIconColor(Landroid/content/Context;)I

    move-result v4

    .line 75
    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->getSelectedIconColor(Landroid/content/Context;)I

    move-result v6

    .line 78
    iget-object v3, p1, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->isSelectedBackgroundAnimated()Z

    move-result v5

    invoke-static {v0, v1, v5}, Lcom/mikepenz/materialize/util/UIUtils;->getSelectableBackground(Landroid/content/Context;IZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mikepenz/materialize/util/UIUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->getName()Lcom/mikepenz/materialdrawer/holder/StringHolder;

    move-result-object v1

    iget-object v3, p1, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->name:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/mikepenz/materialdrawer/holder/StringHolder;->applyTo(Lcom/mikepenz/materialize/holder/StringHolder;Landroid/widget/TextView;)V

    .line 82
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->getDescription()Lcom/mikepenz/materialdrawer/holder/StringHolder;

    move-result-object v1

    iget-object v3, p1, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->description:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/mikepenz/materialdrawer/holder/StringHolder;->applyToOrHide(Lcom/mikepenz/materialize/holder/StringHolder;Landroid/widget/TextView;)Z

    .line 85
    iget-object v1, p1, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 87
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->getDescriptionTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v1

    iget-object v3, p1, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->description:Landroid/widget/TextView;

    invoke-static {v1, v3, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->applyToOr(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 90
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p1, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    iget-object v1, p1, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->getIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->isIconTinted()Z

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v4, v2, v3}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->decideIcon(Lcom/mikepenz/materialdrawer/holder/ImageHolder;Landroid/content/Context;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->getSelectedIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->isIconTinted()Z

    move-result v5

    invoke-static {v2, v0, v6, v5, v3}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->decideIcon(Lcom/mikepenz/materialdrawer/holder/ImageHolder;Landroid/content/Context;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 99
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->isIconTinted()Z

    move-result v7

    iget-object v8, p1, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->icon:Landroid/widget/ImageView;

    move-object v3, v1

    invoke-static/range {v3 .. v8}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->applyMultiIconTo(Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;IZLandroid/widget/ImageView;)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->getIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    move-result-object v0

    iget-object v1, p1, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->isIconTinted()Z

    move-result v2

    invoke-static {v0, v1, v4, v2, v3}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->applyDecidedIconOrSetGone(Lcom/mikepenz/materialdrawer/holder/ImageHolder;Landroid/widget/ImageView;IZI)V

    .line 105
    :goto_0
    iget-object p1, p1, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->view:Landroid/view/View;

    iget v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->level:I

    invoke-static {p1, v0}, Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;->setDrawerVerticalPadding(Landroid/view/View;I)V

    return-void
.end method

.method public getDescription()Lcom/mikepenz/materialdrawer/holder/StringHolder;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->description:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object v0
.end method

.method public getDescriptionTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->descriptionTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public withDescription(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->description:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->description:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withDescriptionTextColor(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 34
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->descriptionTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withDescriptionTextColorRes(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 39
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->descriptionTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method
