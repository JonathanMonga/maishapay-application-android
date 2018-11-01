.class Lcom/mikepenz/materialdrawer/MiniDrawer$1;
.super Ljava/lang/Object;
.source "MiniDrawer.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/listeners/OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/materialdrawer/MiniDrawer;->createItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
        "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialdrawer/MiniDrawer;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z
    .locals 0

    .line 470
    check-cast p3, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;I)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            "I)Z"
        }
    .end annotation

    .line 473
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-virtual {p2, p3}, Lcom/mikepenz/materialdrawer/MiniDrawer;->getMiniDrawerType(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)I

    move-result p2

    .line 476
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/MiniDrawer;->access$000(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/MiniDrawer$OnMiniDrawerItemClickListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/MiniDrawer;->access$000(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/MiniDrawer$OnMiniDrawerItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p4, p3, p2}, Lcom/mikepenz/materialdrawer/MiniDrawer$OnMiniDrawerItemClickListener;->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne p2, v0, :cond_3

    .line 482
    invoke-interface {p3}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->isSelectable()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 484
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-static {p2}, Lcom/mikepenz/materialdrawer/MiniDrawer;->access$100(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/AccountHeader;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-static {p2}, Lcom/mikepenz/materialdrawer/MiniDrawer;->access$100(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/AccountHeader;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mikepenz/materialdrawer/AccountHeader;->isSelectionListShown()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 485
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-static {p2}, Lcom/mikepenz/materialdrawer/MiniDrawer;->access$100(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/AccountHeader;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mikepenz/materialdrawer/AccountHeader;->toggleSelectionList(Landroid/content/Context;)V

    .line 487
    :cond_1
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/MiniDrawer;->access$200(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/Drawer;

    move-result-object p1

    invoke-interface {p3}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getIdentifier()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerItem(J)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->isSelected()Z

    move-result p1

    if-nez p1, :cond_5

    .line 489
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/MiniDrawer;->access$200(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/Drawer;

    move-result-object p1

    invoke-virtual {p1, p3, v2}, Lcom/mikepenz/materialdrawer/Drawer;->setSelection(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Z)Z

    goto :goto_0

    .line 491
    :cond_2
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-static {p2}, Lcom/mikepenz/materialdrawer/MiniDrawer;->access$200(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/Drawer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mikepenz/materialdrawer/Drawer;->getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 493
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-static {p2}, Lcom/mikepenz/materialdrawer/MiniDrawer;->access$200(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/Drawer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mikepenz/materialdrawer/Drawer;->getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    move-result-object p2

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/MiniDrawer;->access$300(Lcom/mikepenz/materialdrawer/MiniDrawer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getIdentifier()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/mikepenz/materialdrawer/DrawerUtils;->getDrawerItem(Ljava/util/List;J)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object p3

    invoke-interface {p2, p1, p4, p3}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_5

    .line 496
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-static {p2}, Lcom/mikepenz/materialdrawer/MiniDrawer;->access$100(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/AccountHeader;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-static {p2}, Lcom/mikepenz/materialdrawer/MiniDrawer;->access$100(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/AccountHeader;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mikepenz/materialdrawer/AccountHeader;->isSelectionListShown()Z

    move-result p2

    if-nez p2, :cond_4

    .line 497
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-static {p2}, Lcom/mikepenz/materialdrawer/MiniDrawer;->access$100(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/AccountHeader;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mikepenz/materialdrawer/AccountHeader;->toggleSelectionList(Landroid/content/Context;)V

    .line 499
    :cond_4
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/MiniDrawer;->access$400(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 500
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer$1;->this$0:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/MiniDrawer;->access$400(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;

    move-result-object p1

    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;->crossfade()V

    :cond_5
    :goto_0
    return v1
.end method
