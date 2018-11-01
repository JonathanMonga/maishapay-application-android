.class Lcom/maishapay/ui/activities/DrawerActivity$3$2;
.super Ljava/lang/Object;
.source "DrawerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/DrawerActivity$3;->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maishapay/ui/activities/DrawerActivity$3;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/DrawerActivity$3;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/maishapay/ui/activities/DrawerActivity$3$2;->this$1:Lcom/maishapay/ui/activities/DrawerActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/maishapay/ui/activities/DrawerActivity$3$2;->this$1:Lcom/maishapay/ui/activities/DrawerActivity$3;

    iget-object v0, v0, Lcom/maishapay/ui/activities/DrawerActivity$3;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/maishapay/ui/activities/DrawerActivity$3$2;->this$1:Lcom/maishapay/ui/activities/DrawerActivity$3;

    iget-object v2, v2, Lcom/maishapay/ui/activities/DrawerActivity$3;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    const-class v3, Lcom/maishapay/ui/activities/ProfilActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/maishapay/ui/activities/DrawerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
