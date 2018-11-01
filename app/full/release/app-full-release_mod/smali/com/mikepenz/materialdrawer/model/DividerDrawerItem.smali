.class public Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;
.source "DividerDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem<",
        "Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;",
        "Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;->bindView(Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public bindView(Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;Ljava/util/List;)V
    .locals 3

    .line 31
    invoke-super {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 33
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 36
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 39
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 40
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 41
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 42
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 46
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->access$100(Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_divider:I

    sget v2, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_divider:I

    invoke-static {p2, v1, v2}, Lcom/mikepenz/materialize/util/UIUtils;->getThemeColorFromAttrOrRes(Landroid/content/Context;II)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 49
    iget-object p1, p1, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p0, p1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;->onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    return-void
.end method

.method public getLayoutRes()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 26
    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_item_divider:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 20
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_item_divider:I

    return v0
.end method

.method public bridge synthetic getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;->getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;
    .locals 2

    .line 54
    new-instance v0, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;-><init>(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$1;)V

    return-object v0
.end method
