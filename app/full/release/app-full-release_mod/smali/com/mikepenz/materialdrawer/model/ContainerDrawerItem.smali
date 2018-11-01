.class public Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;
.source "ContainerDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;,
        Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem<",
        "Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;",
        "Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDivider:Z

.field private mHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field private mView:Landroid/view/View;

.field private mViewPosition:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;-><init>()V

    .line 49
    sget-object v0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;->TOP:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mViewPosition:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mDivider:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->bindView(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public bindView(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;Ljava/util/List;)V
    .locals 7

    .line 80
    invoke-super {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 82
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 85
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 88
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, -0x2

    .line 97
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    if-eqz v1, :cond_1

    .line 98
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 99
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-virtual {v1, p2}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->asPixel(Landroid/content/Context;)I

    move-result v1

    .line 100
    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 101
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    .line 105
    :cond_1
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 108
    iget-boolean v1, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mDivider:Z

    .line 112
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 114
    sget v3, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_divider:I

    sget v4, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_divider:I

    invoke-static {p2, v3, v4}, Lcom/mikepenz/materialize/util/UIUtils;->getThemeColorFromAttrOrRes(Landroid/content/Context;II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 116
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, v1

    invoke-static {v1, p2}, Lcom/mikepenz/materialize/util/UIUtils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    if-eqz v6, :cond_2

    invoke-static {v1, p2}, Lcom/mikepenz/materialize/util/UIUtils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    :cond_2
    invoke-direct {v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 120
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mViewPosition:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    sget-object v1, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;->TOP:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    if-ne v0, v1, :cond_3

    .line 121
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/mikepenz/materialdrawer/R$dimen;->material_drawer_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 123
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mViewPosition:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    sget-object v1, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;->BOTTOM:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    if-ne v0, v1, :cond_4

    .line 125
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/mikepenz/materialdrawer/R$dimen;->material_drawer_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 126
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mView:Landroid/view/View;

    invoke-virtual {p2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 129
    :cond_4
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mView:Landroid/view/View;

    invoke-virtual {p2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    :goto_0
    iget-object p1, p1, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p0, p1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    return-void
.end method

.method public getHeight()Lcom/mikepenz/materialdrawer/holder/DimenHolder;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object v0
.end method

.method public getLayoutRes()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 75
    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_item_container:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 69
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_item_container:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;
    .locals 2

    .line 138
    new-instance v0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;-><init>(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$1;)V

    return-object v0
.end method

.method public getViewPosition()Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mViewPosition:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    return-object v0
.end method

.method public withDivider(Z)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mDivider:Z

    return-object p0
.end method

.method public withHeight(Lcom/mikepenz/materialdrawer/holder/DimenHolder;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withView(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mView:Landroid/view/View;

    return-object p0
.end method

.method public withViewPosition(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->mViewPosition:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    return-object p0
.end method
