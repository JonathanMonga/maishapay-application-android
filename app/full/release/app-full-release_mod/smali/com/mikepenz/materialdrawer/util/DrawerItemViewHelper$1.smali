.class Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper$1;
.super Ljava/lang/Object;
.source "DrawerItemViewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->build()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper$1;->this$0:Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper$1;->this$0:Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->access$000(Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;)Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper$OnDrawerItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper$1;->this$0:Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->access$000(Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;)Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper$OnDrawerItemClickListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper$OnDrawerItemClickListener;->onItemClick(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V

    :cond_0
    return-void
.end method
