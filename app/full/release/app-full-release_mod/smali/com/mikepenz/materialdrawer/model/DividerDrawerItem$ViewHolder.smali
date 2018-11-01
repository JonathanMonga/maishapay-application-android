.class public Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DividerDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private divider:Landroid/view/View;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 63
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->view:Landroid/view/View;

    .line 64
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->divider:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;->divider:Landroid/view/View;

    return-object p0
.end method
