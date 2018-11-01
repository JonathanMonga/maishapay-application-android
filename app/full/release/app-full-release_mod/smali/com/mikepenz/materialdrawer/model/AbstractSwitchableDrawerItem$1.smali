.class Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$1;
.super Ljava/lang/Object;
.source "AbstractSwitchableDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->bindView(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;

.field final synthetic val$viewHolder:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$1;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;

    iput-object p2, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$1;->val$viewHolder:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$1;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->isSelectable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$1;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;

    iget-object p2, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$1;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;

    invoke-static {p2}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->access$100(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->access$102(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;Z)Z

    .line 86
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$1;->val$viewHolder:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$1;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;

    invoke-static {p2}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->access$100(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
