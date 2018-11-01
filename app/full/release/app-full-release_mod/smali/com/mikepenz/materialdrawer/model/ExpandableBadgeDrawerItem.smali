.class public Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;
.source "ExpandableBadgeDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/model/interfaces/ColorfulBadgeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem<",
        "Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;",
        "Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;",
        ">;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/ColorfulBadgeable<",
        "Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected arrowColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected arrowRotationAngleEnd:I

.field protected arrowRotationAngleStart:I

.field protected mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

.field protected mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

.field private mOnArrowDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

.field private mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->arrowRotationAngleStart:I

    const/16 v0, 0xb4

    .line 37
    iput v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->arrowRotationAngleEnd:I

    .line 40
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    .line 105
    new-instance v0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$1;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$1;-><init>(Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->mOnArrowDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;)Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->bindView(Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public bindView(Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;Ljava/util/List;)V
    .locals 4

    .line 55
    invoke-super {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 57
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 59
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->bindViewHelper(Lcom/mikepenz/materialdrawer/model/BaseViewHolder;)V

    .line 62
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    iget-object v1, p1, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;->badge:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;->applyToOrHide(Lcom/mikepenz/materialize/holder/StringHolder;Landroid/widget/TextView;)Z

    .line 65
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    iget-object v1, p1, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;->badge:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->getColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->getSelectedTextColor(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->getTextColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->style(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 66
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;->badgeContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;->badge:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    :cond_0
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->arrowColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->arrowColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-virtual {v1, p2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Landroid/content/Context;)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->getIconColor(Landroid/content/Context;)I

    move-result p2

    :goto_0
    invoke-virtual {v0, p2}, Lcom/mikepenz/iconics/IconicsDrawable;->color(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 80
    :cond_2
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 81
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->isExpanded()Z

    move-result p2

    if-nez p2, :cond_3

    .line 82
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;->arrow:Landroid/widget/ImageView;

    iget v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->arrowRotationAngleStart:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 84
    :cond_3
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;->arrow:Landroid/widget/ImageView;

    iget v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->arrowRotationAngleEnd:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 88
    :goto_1
    iget-object p1, p1, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p0, p1}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    return-void
.end method

.method public getBadge()Lcom/mikepenz/materialdrawer/holder/StringHolder;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object v0
.end method

.method public getBadgeStyle()Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    return-object v0
.end method

.method public getLayoutRes()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 50
    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_item_expandable_badge:I

    return v0
.end method

.method public getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->mOnArrowDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 44
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_item_expandable_badge:I

    return v0
.end method

.method public bridge synthetic getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;
    .locals 1

    .line 158
    new-instance v0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public withBadge(I)Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 138
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withBadge(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withBadge(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;
    .locals 1

    .line 132
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public bridge synthetic withBadge(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 28
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->withBadge(I)Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withBadge(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->withBadge(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withBadge(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->withBadge(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public withBadgeStyle(Lcom/mikepenz/materialdrawer/holder/BadgeStyle;)Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    return-object p0
.end method

.method public bridge synthetic withBadgeStyle(Lcom/mikepenz/materialdrawer/holder/BadgeStyle;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->withBadgeStyle(Lcom/mikepenz/materialdrawer/holder/BadgeStyle;)Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-object p0
.end method

.method public bridge synthetic withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;->withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Lcom/mikepenz/materialdrawer/model/ExpandableBadgeDrawerItem;

    move-result-object p1

    return-object p1
.end method
