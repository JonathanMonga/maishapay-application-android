.class public Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;
.super Lcom/mikepenz/materialdrawer/model/BaseViewHolder;
.source "AbstractToggleableDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private toggle:Landroid/widget/ToggleButton;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 113
    invoke-direct {p0, p1}, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 114
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;->toggle:Landroid/widget/ToggleButton;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;)Landroid/widget/ToggleButton;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem$ViewHolder;->toggle:Landroid/widget/ToggleButton;

    return-object p0
.end method
