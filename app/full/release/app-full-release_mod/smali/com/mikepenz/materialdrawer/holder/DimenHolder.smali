.class public Lcom/mikepenz/materialdrawer/holder/DimenHolder;
.super Lcom/mikepenz/materialize/holder/DimenHolder;
.source "DimenHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/mikepenz/materialize/holder/DimenHolder;-><init>()V

    return-void
.end method

.method public static fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    .line 24
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;-><init>()V

    .line 25
    invoke-virtual {v0, p0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->setDp(I)V

    return-object v0
.end method

.method public static fromPixel(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 18
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;-><init>()V

    .line 19
    invoke-virtual {v0, p0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->setPixel(I)V

    return-object v0
.end method

.method public static fromResource(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 30
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;-><init>()V

    .line 31
    invoke-virtual {v0, p0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->setResource(I)V

    return-object v0
.end method
