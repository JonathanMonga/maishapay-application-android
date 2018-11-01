.class Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;
.super Ljava/lang/Object;
.source "AccountHeaderBuilder.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;)V
    .locals 0

    .line 1400
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 3

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 1404
    instance-of v0, p3, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    move-object v1, p3

    check-cast v1, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->switchProfiles(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    .line 1410
    :goto_0
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-boolean v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mResetDrawerOnProfileListClick:Z

    if-eqz v1, :cond_1

    .line 1411
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mikepenz/materialdrawer/Drawer;->setOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)V

    .line 1415
    :cond_1
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-boolean v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mResetDrawerOnProfileListClick:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1416
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->access$100(Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;Landroid/content/Context;)V

    .line 1420
    :cond_2
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v1}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerBuilder()Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v1}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerBuilder()Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v1

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMiniDrawer:Lcom/mikepenz/materialdrawer/MiniDrawer;

    if-eqz v1, :cond_3

    .line 1421
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v1}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerBuilder()Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v1

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMiniDrawer:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-virtual {v1}, Lcom/mikepenz/materialdrawer/MiniDrawer;->onProfileClick()V

    :cond_3
    if-eqz p3, :cond_4

    .line 1425
    instance-of v1, p3, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-eqz v1, :cond_4

    .line 1426
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderListener;

    if-eqz v1, :cond_4

    .line 1427
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderListener;

    check-cast p3, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-interface {v1, p1, p3, v0}, Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderListener;->onProfileChanged(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;Z)Z

    move-result p1

    goto :goto_1

    :cond_4
    move p1, p2

    .line 1432
    :goto_1
    iget-object p3, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object p3, p3, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCloseDrawerOnProfileListClick:Ljava/lang/Boolean;

    const/4 v0, 0x1

    if-eqz p3, :cond_6

    if-eqz p1, :cond_5

    .line 1433
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object p1, p1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCloseDrawerOnProfileListClick:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v0

    goto :goto_2

    :cond_5
    move p1, p2

    .line 1437
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object p2, p2, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz p2, :cond_7

    if-nez p1, :cond_7

    .line 1439
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object p1, p1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    iget-object p1, p1, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->closeDrawerDelayed()V

    :cond_7
    return v0
.end method
