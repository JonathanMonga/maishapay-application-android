.class public abstract Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;
.source "AbstractBadgeableDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/model/interfaces/ColorfulBadgeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;",
        ">",
        "Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem<",
        "TItem;",
        "Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;",
        ">;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/ColorfulBadgeable<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field protected mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

.field protected mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;-><init>()V

    .line 20
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->bindView(Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public bindView(Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;Ljava/util/List;)V
    .locals 3

    .line 67
    invoke-super {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 69
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 71
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->bindViewHelper(Lcom/mikepenz/materialdrawer/model/BaseViewHolder;)V

    .line 74
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;->applyToOrHide(Lcom/mikepenz/materialize/holder/StringHolder;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->getColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->getSelectedTextColor(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p0, v2, p2}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->getTextColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->style(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 78
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;->access$100(Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;->access$100(Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 85
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    :cond_1
    iget-object p1, p1, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    return-void
.end method

.method public getBadge()Lcom/mikepenz/materialdrawer/holder/StringHolder;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object v0
.end method

.method public getBadgeStyle()Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    return-object v0
.end method

.method public getLayoutRes()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 62
    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_item_primary:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 56
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_item_primary:I

    return v0
.end method

.method public bridge synthetic getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;
    .locals 1

    .line 94
    new-instance v0, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public withBadge(I)Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withBadge(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/holder/StringHolder;",
            ")TItem;"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withBadge(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TItem;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public bridge synthetic withBadge(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 18
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->withBadge(I)Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withBadge(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->withBadge(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withBadge(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->withBadge(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public withBadgeStyle(Lcom/mikepenz/materialdrawer/holder/BadgeStyle;)Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/holder/BadgeStyle;",
            ")TItem;"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->mBadgeStyle:Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    return-object p0
.end method

.method public bridge synthetic withBadgeStyle(Lcom/mikepenz/materialdrawer/holder/BadgeStyle;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;->withBadgeStyle(Lcom/mikepenz/materialdrawer/holder/BadgeStyle;)Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;

    move-result-object p1

    return-object p1
.end method
