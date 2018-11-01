.class public Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;
.super Lcom/mikepenz/materialdrawer/model/BaseViewHolder;
.source "ExpandableDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public arrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 129
    invoke-direct {p0, p1}, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 130
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;->arrow:Landroid/widget/ImageView;

    .line 131
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ExpandableDrawerItem$ViewHolder;->arrow:Landroid/widget/ImageView;

    new-instance v1, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_expand_more:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    invoke-direct {v1, p1, v2}, Lcom/mikepenz/iconics/IconicsDrawable;-><init>(Landroid/content/Context;Lcom/mikepenz/iconics/typeface/IIcon;)V

    const/16 p1, 0x10

    invoke-virtual {v1, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->sizeDp(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingDp(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->color(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
