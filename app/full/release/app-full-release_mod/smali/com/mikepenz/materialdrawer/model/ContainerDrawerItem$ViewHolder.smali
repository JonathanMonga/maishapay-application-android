.class public Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ContainerDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 146
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->view:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$1;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$ViewHolder;->view:Landroid/view/View;

    return-object p0
.end method
