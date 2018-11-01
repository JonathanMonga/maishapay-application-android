.class Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$5;
.super Ljava/lang/Object;
.source "AccountHeaderBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onProfileClick(Landroid/view/View;Z)V
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

    .line 1296
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$5;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1299
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$5;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$5;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->closeDrawer()V

    :cond_0
    return-void
.end method
