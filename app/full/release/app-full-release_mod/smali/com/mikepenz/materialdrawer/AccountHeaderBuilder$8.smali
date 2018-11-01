.class Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$8;
.super Ljava/lang/Object;
.source "AccountHeaderBuilder.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;


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

    .line 1450
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$8;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 2

    .line 1454
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$8;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object p2, p2, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderItemLongClickListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderItemLongClickListener;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1456
    invoke-interface {p3}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 1458
    instance-of v1, p3, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-eqz v1, :cond_1

    .line 1459
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$8;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderItemLongClickListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderItemLongClickListener;

    check-cast p3, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-interface {v0, p1, p3, p2}, Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderItemLongClickListener;->onProfileLongClick(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;Z)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method
