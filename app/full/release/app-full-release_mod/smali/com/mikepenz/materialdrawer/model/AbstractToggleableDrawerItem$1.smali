.class Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$1;
.super Ljava/lang/Object;
.source "AbstractToggleableDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->bindView(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;

.field final synthetic val$viewHolder:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$1;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;

    iput-object p2, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$1;->val$viewHolder:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$1;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->isSelectable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$1;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;

    iget-object p2, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$1;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;

    invoke-static {p2}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->access$100(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->access$102(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;Z)Z

    .line 93
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$1;->val$viewHolder:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;)Landroid/widget/ToggleButton;

    move-result-object p1

    iget-object p2, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$1;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;

    invoke-static {p2}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->access$100(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
