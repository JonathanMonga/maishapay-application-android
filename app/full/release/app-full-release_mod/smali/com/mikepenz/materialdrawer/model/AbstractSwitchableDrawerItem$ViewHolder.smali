.class public Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;
.super Lcom/mikepenz/materialdrawer/model/BaseViewHolder;
.source "AbstractSwitchableDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private switchView:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 106
    invoke-direct {p0, p1}, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 107
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SwitchCompat;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;->switchView:Landroid/support/v7/widget/SwitchCompat;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;)Landroid/support/v7/widget/SwitchCompat;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/AbstractSwitchableDrawerItem$ViewHolder;->switchView:Landroid/support/v7/widget/SwitchCompat;

    return-object p0
.end method
