.class public abstract Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;
.source "AbstractSwitchableDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;",
        ">",
        "Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem<",
        "TItem;",
        "Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private checked:Z

.field private checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private onCheckedChangeListener:Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;

.field private switchEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->switchEnabled:Z

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->checked:Z

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->onCheckedChangeListener:Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;

    .line 111
    new-instance v0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$2;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$2;-><init>(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$100(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->checked:Z

    return p0
.end method

.method static synthetic access$102(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->checked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->bindView(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public bindView(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;Ljava/util/List;)V
    .locals 1

    .line 69
    invoke-super {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/BaseDescribeableDrawerItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->bindViewHelper(Lcom/mikepenz/materialdrawer/model/BaseViewHolder;)V

    .line 75
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object p2

    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->checked:Z

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 77
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object p2

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object p2

    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->switchEnabled:Z

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 81
    new-instance p2, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$1;

    invoke-direct {p2, p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$1;-><init>(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;)V

    invoke-virtual {p0, p2}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Ljava/lang/Object;

    .line 94
    iget-object p1, p1, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    return-void
.end method

.method public getLayoutRes()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 64
    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_item_switch:I

    return v0
.end method

.method public getOnCheckedChangeListener()Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->onCheckedChangeListener:Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 58
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_item_primary_switch:I

    return v0
.end method

.method public bridge synthetic getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;
    .locals 2

    .line 99
    new-instance v0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;-><init>(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$1;)V

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->checked:Z

    return v0
.end method

.method public isSwitchEnabled()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->switchEnabled:Z

    return v0
.end method

.method public withCheckable(Z)Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;

    return-object p1
.end method

.method public withChecked(Z)Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    .line 26
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->checked:Z

    return-object p0
.end method

.method public withOnCheckedChangeListener(Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;)Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;",
            ")TItem;"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->onCheckedChangeListener:Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;

    return-object p0
.end method

.method public withSwitchEnabled(Z)Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    .line 31
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->switchEnabled:Z

    return-object p0
.end method
