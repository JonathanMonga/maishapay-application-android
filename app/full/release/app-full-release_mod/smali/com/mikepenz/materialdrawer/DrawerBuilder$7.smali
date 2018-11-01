.class Lcom/mikepenz/materialdrawer/DrawerBuilder$7;
.super Ljava/lang/Object;
.source "DrawerBuilder.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/materialdrawer/DrawerBuilder;->createContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/listeners/OnLongClickListener<",
        "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V
    .locals 0

    .line 1793
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onLongClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z
    .locals 0

    .line 1793
    check-cast p3, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mikepenz/materialdrawer/DrawerBuilder$7;->onLongClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;I)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;I)Z
    .locals 0
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

    .line 1796
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object p2, p2, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    if-eqz p2, :cond_0

    .line 1797
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object p2, p2, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    iget-object p3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {p3, p4}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getDrawerItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object p3

    invoke-interface {p2, p1, p4, p3}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;->onItemLongClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
