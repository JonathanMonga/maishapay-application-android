.class public Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;
.source "ExpandableDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem<",
        "Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;",
        "Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected arrowColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected arrowRotationAngleEnd:I

.field protected arrowRotationAngleStart:I

.field private mOnArrowDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

.field private mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->arrowRotationAngleStart:I

    const/16 v0, 0xb4

    .line 33
    iput v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->arrowRotationAngleEnd:I

    .line 80
    new-instance v0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$1;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$1;-><init>(Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->mOnArrowDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;)Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->bindView(Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public bindView(Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;Ljava/util/List;)V
    .locals 2

    .line 99
    invoke-super {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 101
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 103
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->bindViewHelper(Lcom/mikepenz/materialdrawer/model/BaseViewHolder;)V

    .line 106
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->arrowColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->arrowColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-virtual {v1, p2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Landroid/content/Context;)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->getIconColor(Landroid/content/Context;)I

    move-result p2

    :goto_0
    invoke-virtual {v0, p2}, Lcom/mikepenz/iconics/IconicsDrawable;->color(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 109
    :cond_1
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 110
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->isExpanded()Z

    move-result p2

    if-nez p2, :cond_2

    .line 111
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;->arrow:Landroid/widget/ImageView;

    iget v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->arrowRotationAngleStart:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 113
    :cond_2
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;->arrow:Landroid/widget/ImageView;

    iget v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->arrowRotationAngleEnd:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 117
    :goto_1
    iget-object p1, p1, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p0, p1}, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    return-void
.end method

.method public getLayoutRes()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 63
    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_item_expandable:I

    return v0
.end method

.method public getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->mOnArrowDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 57
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_item_expandable:I

    return v0
.end method

.method public bridge synthetic getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;
    .locals 1

    .line 122
    new-instance v0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public withArrowColor(I)Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 36
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->arrowColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withArrowColorRes(I)Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 41
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->arrowColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withArrowRotationAngleEnd(I)Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;
    .locals 0

    .line 51
    iput p1, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->arrowRotationAngleEnd:I

    return-object p0
.end method

.method public withArrowRotationAngleStart(I)Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;
    .locals 0

    .line 46
    iput p1, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->arrowRotationAngleStart:I

    return-object p0
.end method

.method public withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-object p0
.end method

.method public bridge synthetic withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;

    move-result-object p1

    return-object p1
.end method
