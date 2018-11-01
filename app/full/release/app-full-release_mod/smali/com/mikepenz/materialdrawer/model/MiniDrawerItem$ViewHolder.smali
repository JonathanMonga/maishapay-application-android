.class public Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MiniDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private badge:Landroid/widget/TextView;

.field private icon:Landroid/widget/ImageView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 184
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 186
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->view:Landroid/view/View;

    .line 187
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 188
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_badge:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->badge:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->badge:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object p0
.end method
