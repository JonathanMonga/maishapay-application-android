.class Lcom/maishapay/ui/activities/DrawerActivity$1;
.super Ljava/lang/Object;
.source "DrawerActivity.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/DrawerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/DrawerActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/DrawerActivity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/maishapay/ui/activities/DrawerActivity$1;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 2

    .line 73
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/maishapay/ui/activities/DrawerActivity$1$1;

    invoke-direct {p2, p0}, Lcom/maishapay/ui/activities/DrawerActivity$1$1;-><init>(Lcom/maishapay/ui/activities/DrawerActivity$1;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    return p1
.end method
