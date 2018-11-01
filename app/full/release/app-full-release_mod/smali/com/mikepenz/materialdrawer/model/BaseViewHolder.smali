.class public Lcom/mikepenz/materialdrawer/model/BaseViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseViewHolder.java"


# instance fields
.field protected description:Landroid/widget/TextView;

.field protected icon:Landroid/widget/ImageView;

.field protected name:Landroid/widget/TextView;

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->view:Landroid/view/View;

    .line 20
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->icon:Landroid/widget/ImageView;

    .line 21
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->name:Landroid/widget/TextView;

    .line 22
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseViewHolder;->description:Landroid/widget/TextView;

    return-void
.end method
