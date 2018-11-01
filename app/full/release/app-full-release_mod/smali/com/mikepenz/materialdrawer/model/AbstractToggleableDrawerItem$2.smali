.class Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$2;
.super Ljava/lang/Object;
.source "AbstractToggleableDrawerItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$2;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$2;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$2;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;

    invoke-static {v0, p2}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->access$102(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;Z)Z

    .line 123
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$2;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->getOnCheckedChangeListener()Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$2;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->getOnCheckedChangeListener()Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$2;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;

    invoke-interface {v0, v1, p1, p2}, Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;->onCheckedChanged(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/widget/CompoundButton;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    xor-int/lit8 p2, p2, 0x1

    .line 128
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 129
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$2;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;

    invoke-static {p2}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;->access$300(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method
