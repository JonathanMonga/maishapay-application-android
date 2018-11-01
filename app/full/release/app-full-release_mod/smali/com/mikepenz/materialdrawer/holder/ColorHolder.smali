.class public Lcom/mikepenz/materialdrawer/holder/ColorHolder;
.super Lcom/mikepenz/materialize/holder/ColorHolder;
.source "ColorHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/mikepenz/materialize/holder/ColorHolder;-><init>()V

    return-void
.end method

.method public static fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 20
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 21
    invoke-virtual {v0, p0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorInt(I)V

    return-object v0
.end method

.method public static fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 14
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;-><init>()V

    .line 15
    invoke-virtual {v0, p0}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->setColorRes(I)V

    return-object v0
.end method
