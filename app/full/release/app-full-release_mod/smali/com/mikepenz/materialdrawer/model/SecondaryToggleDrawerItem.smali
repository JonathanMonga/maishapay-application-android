.class public Lcom/mikepenz/materialdrawer/model/SecondaryToggleDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;
.source "SecondaryToggleDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem<",
        "Lcom/mikepenz/materialdrawer/model/SecondaryToggleDrawerItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/AbstractToggleableDrawerItem;-><init>()V

    return-void
.end method


# virtual methods
.method protected getColor(Landroid/content/Context;)I
    .locals 3

    .line 35
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/SecondaryToggleDrawerItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/SecondaryToggleDrawerItem;->getTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_secondary_text:I

    sget v2, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_secondary_text:I

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;II)I

    move-result p1

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/SecondaryToggleDrawerItem;->getDisabledTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_hint_text:I

    sget v2, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_hint_text:I

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getLayoutRes()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 22
    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_item_secondary_toggle:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 16
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_item_secondary_toggle:I

    return v0
.end method
