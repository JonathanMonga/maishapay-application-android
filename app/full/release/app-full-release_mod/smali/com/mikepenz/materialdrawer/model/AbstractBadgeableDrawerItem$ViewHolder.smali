.class public Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;
.super Lcom/mikepenz/materialdrawer/model/BaseViewHolder;
.source "AbstractBadgeableDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private badge:Landroid/widget/TextView;

.field private badgeContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 102
    invoke-direct {p0, p1}, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 103
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_badge_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;->badgeContainer:Landroid/view/View;

    .line 104
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_badge:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;->badge:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;->badge:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;->badgeContainer:Landroid/view/View;

    return-object p0
.end method
