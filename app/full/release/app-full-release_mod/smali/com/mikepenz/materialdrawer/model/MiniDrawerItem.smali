.class public Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;
.source "MiniDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/materialdrawer/model/BaseDrawerItem<",
        "Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;",
        "Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

.field private mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

.field protected mCustomHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field private mEnableSelectedBackground:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;-><init>()V

    .line 26
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mEnableSelectedBackground:Z

    return-void
.end method

.method public constructor <init>(Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;-><init>()V

    .line 26
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mEnableSelectedBackground:Z

    .line 36
    iget-wide v0, p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->mIdentifier:J

    iput-wide v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mIdentifier:J

    .line 37
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->mTag:Ljava/lang/Object;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mTag:Ljava/lang/Object;

    .line 39
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    .line 40
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    .line 42
    iget-boolean v0, p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->mEnabled:Z

    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mEnabled:Z

    .line 43
    iget-boolean v0, p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->mSelectable:Z

    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mSelectable:Z

    .line 44
    iget-boolean v0, p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->mSelected:Z

    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mSelected:Z

    .line 46
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    .line 47
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->selectedIcon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->selectedIcon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    .line 49
    iget-boolean v0, p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->iconTinted:Z

    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->iconTinted:Z

    .line 50
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->selectedColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->selectedColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    .line 52
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->iconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->iconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    .line 53
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->selectedIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->selectedIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    .line 54
    iget-object p1, p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->disabledIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->disabledIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-void
.end method

.method public constructor <init>(Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;-><init>()V

    .line 26
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mEnableSelectedBackground:Z

    .line 58
    iget-wide v0, p1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->mIdentifier:J

    iput-wide v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mIdentifier:J

    .line 59
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->mTag:Ljava/lang/Object;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mTag:Ljava/lang/Object;

    .line 61
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    .line 62
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    .line 64
    iget-boolean v0, p1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->mEnabled:Z

    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mEnabled:Z

    .line 65
    iget-boolean v0, p1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->mSelectable:Z

    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mSelectable:Z

    .line 66
    iget-boolean v0, p1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->mSelected:Z

    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mSelected:Z

    .line 68
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    .line 69
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->selectedIcon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->selectedIcon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    .line 71
    iget-boolean v0, p1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->iconTinted:Z

    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->iconTinted:Z

    .line 72
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->selectedColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->selectedColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    .line 74
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->iconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->iconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    .line 75
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->selectedIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->selectedIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    .line 76
    iget-object p1, p1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->disabledIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->disabledIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->bindView(Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public bindView(Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;Ljava/util/List;)V
    .locals 7

    .line 118
    invoke-super {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 120
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 123
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mCustomHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 125
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mCustomHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-virtual {v1, p2}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->asPixel(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 126
    iget-object v1, p1, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :cond_0
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 133
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 136
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 139
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0, p2}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->getIconColor(Landroid/content/Context;)I

    move-result v2

    .line 143
    invoke-virtual {p0, p2}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->getSelectedIconColor(Landroid/content/Context;)I

    move-result v4

    .line 145
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mEnableSelectedBackground:Z

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0, p2}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->getSelectedColor(Landroid/content/Context;)I

    move-result v0

    .line 149
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->isSelectedBackgroundAnimated()Z

    move-result v3

    invoke-static {p2, v0, v3}, Lcom/mikepenz/materialize/util/UIUtils;->getSelectableBackground(Landroid/content/Context;IZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mikepenz/materialize/util/UIUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->access$100(Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;->applyToOrHide(Lcom/mikepenz/materialize/holder/StringHolder;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->access$100(Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->style(Landroid/widget/TextView;)V

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->getIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->isIconTinted()Z

    move-result v1

    const/4 v3, 0x1

    invoke-static {v0, p2, v2, v1, v3}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->decideIcon(Lcom/mikepenz/materialdrawer/holder/ImageHolder;Landroid/content/Context;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->getSelectedIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->isIconTinted()Z

    move-result v5

    invoke-static {v0, p2, v4, v5, v3}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->decideIcon(Lcom/mikepenz/materialdrawer/holder/ImageHolder;Landroid/content/Context;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 162
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->isIconTinted()Z

    move-result v5

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->access$200(Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->applyMultiIconTo(Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;IZLandroid/widget/ImageView;)V

    .line 165
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$dimen;->material_drawer_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 166
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/mikepenz/materialdrawer/R$dimen;->material_mini_drawer_item_padding:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 167
    iget-object v1, p1, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0, p2, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 170
    iget-object p1, p1, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p0, p1}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    return-void
.end method

.method public getLayoutRes()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 113
    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_item_mini:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 107
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_item_mini:I

    return v0
.end method

.method public bridge synthetic getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;
    .locals 1

    .line 175
    new-instance v0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public withCustomHeight(Lcom/mikepenz/materialdrawer/holder/DimenHolder;)Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mCustomHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withCustomHeightDp(I)Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;
    .locals 0

    .line 86
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mCustomHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withCustomHeightPx(I)Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;
    .locals 0

    .line 91
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromPixel(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mCustomHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withCustomHeightRes(I)Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 81
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromResource(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mCustomHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withEnableSelectedBackground(Z)Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->mEnableSelectedBackground:Z

    return-object p0
.end method
