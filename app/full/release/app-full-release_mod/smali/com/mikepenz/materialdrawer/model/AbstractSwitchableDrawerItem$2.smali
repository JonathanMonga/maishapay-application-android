.class Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$2;
.super Ljava/lang/Object;
.source "AbstractSwitchableDrawerItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$2;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$2;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$2;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;

    invoke-static {v0, p2}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->access$102(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;Z)Z

    .line 116
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$2;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->getOnCheckedChangeListener()Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$2;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->getOnCheckedChangeListener()Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$2;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;

    invoke-interface {v0, v1, p1, p2}, Lcom/mikepenz/materialdrawer/interfaces/OnCheckedChangeListener;->onCheckedChanged(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/widget/CompoundButton;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    xor-int/lit8 p2, p2, 0x1

    .line 121
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 122
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$2;->this$0:Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;

    invoke-static {p2}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;->access$300(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method
