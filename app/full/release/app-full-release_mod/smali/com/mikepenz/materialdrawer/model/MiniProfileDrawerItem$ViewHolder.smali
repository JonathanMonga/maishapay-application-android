.class public Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MiniProfileDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 164
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 165
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;->icon:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object p0
.end method
