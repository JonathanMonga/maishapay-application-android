.class Lcom/mikepenz/materialdrawer/DrawerBuilder$3;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "DrawerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/materialdrawer/DrawerBuilder;->handleDrawerNavigation(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V
    .locals 6

    .line 1440
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .line 1451
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;

    invoke-interface {v0, p1}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 1454
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;

    invoke-interface {v0, p1}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 1446
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 1

    .line 1459
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;

    invoke-interface {v0, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 1463
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-boolean v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAnimateActionBarDrawerToggle:Z

    if-nez v0, :cond_1

    const/4 p2, 0x0

    .line 1464
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerSlide(Landroid/view/View;F)V

    goto :goto_0

    .line 1466
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerSlide(Landroid/view/View;F)V

    :goto_0
    return-void
.end method
