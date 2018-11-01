.class public Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ProfileSettingDrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private description:Landroid/widget/TextView;

.field private icon:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 288
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 289
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->view:Landroid/view/View;

    .line 290
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 291
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->name:Landroid/widget/TextView;

    .line 292
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->description:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$1;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->name:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->description:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object p0
.end method
