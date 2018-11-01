.class Lcom/mikepenz/materialdrawer/DrawerBuilder$6$1;
.super Ljava/lang/Object;
.source "DrawerBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/materialdrawer/DrawerBuilder$6;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mikepenz/materialdrawer/DrawerBuilder$6;

.field final synthetic val$item:Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialdrawer/DrawerBuilder$6;Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V
    .locals 0

    .line 1761
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$6$1;->this$1:Lcom/mikepenz/materialdrawer/DrawerBuilder$6;

    iput-object p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$6$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$6$1;->val$position:I

    iput-object p4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$6$1;->val$item:Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1764
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$6$1;->this$1:Lcom/mikepenz/materialdrawer/DrawerBuilder$6;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder$6;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$6$1;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$6$1;->val$position:I

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$6$1;->val$item:Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-interface {v0, v1, v2, v3}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z

    return-void
.end method
