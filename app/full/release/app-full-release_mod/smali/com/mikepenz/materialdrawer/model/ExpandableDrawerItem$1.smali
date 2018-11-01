.class Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$1;
.super Ljava/lang/Object;
.source "ExpandableDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$1;->this$0:Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 2

    .line 83
    instance-of v0, p3, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;

    if-eqz v0, :cond_1

    invoke-interface {p3}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    move-object v0, p3

    check-cast v0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getSubItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$1;->this$0:Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;

    iget v1, v1, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->arrowRotationAngleEnd:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotation(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 88
    :cond_0
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$1;->this$0:Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;

    iget v1, v1, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->arrowRotationAngleStart:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotation(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$1;->this$0:Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->access$000(Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;)Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$1;->this$0:Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;->access$000(Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;)Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
