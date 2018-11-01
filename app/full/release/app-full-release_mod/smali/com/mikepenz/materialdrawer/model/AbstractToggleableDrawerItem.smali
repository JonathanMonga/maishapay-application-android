.class public Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;
.source "AbstractToggleableDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;",
        ">",
        "Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem<",
        "TItem;",
        "Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private checked:Z

.field private checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private onCheckedChangeListener:Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;

.field private toggleEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->toggleEnabled:Z

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->checked:Z

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->onCheckedChangeListener:Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;

    .line 118
    new-instance v0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$2;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$2;-><init>(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$100(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->checked:Z

    return p0
.end method

.method static synthetic access$102(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->checked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->bindView(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public bindView(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;Ljava/util/List;)V
    .locals 1

    .line 76
    invoke-super {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->bindViewHelper(Lcom/mikepenz/materialdrawer/model/BaseViewHolder;)V

    .line 82
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;)Landroid/widget/ToggleButton;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;)Landroid/widget/ToggleButton;

    move-result-object p2

    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->checked:Z

    invoke-virtual {p2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 84
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;)Landroid/widget/ToggleButton;

    move-result-object p2

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;)Landroid/widget/ToggleButton;

    move-result-object p2

    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->toggleEnabled:Z

    invoke-virtual {p2, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 88
    new-instance p2, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$1;

    invoke-direct {p2, p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$1;-><init>(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;)V

    invoke-virtual {p0, p2}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Ljava/lang/Object;

    .line 101
    iget-object p1, p1, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    return-void
.end method

.method public getLayoutRes()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 71
    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_item_toggle:I

    return v0
.end method

.method public getOnCheckedChangeListener()Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->onCheckedChangeListener:Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 65
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_item_primary_toggle:I

    return v0
.end method

.method public bridge synthetic getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;
    .locals 2

    .line 106
    new-instance v0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;-><init>(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$1;)V

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->checked:Z

    return v0
.end method

.method public isToggleEnabled()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->toggleEnabled:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->checked:Z

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->onCheckedChangeListener:Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;

    return-void
.end method

.method public setToggleEnabled(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->toggleEnabled:Z

    return-void
.end method

.method public withChecked(Z)Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    .line 25
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->checked:Z

    return-object p0
.end method

.method public withOnCheckedChangeListener(Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;)Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;",
            ")TItem;"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->onCheckedChangeListener:Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;

    return-object p0
.end method

.method public withToggleEnabled(Z)Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    .line 30
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->toggleEnabled:Z

    return-object p0
.end method
