.class public Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;
.source "MiniProfileDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem<",
        "Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;",
        "Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;",
        ">;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/IProfile<",
        "Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected customHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field protected icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;-><init>()V

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/mikepenz/materialdrawer/model/ProfileDrawerItem;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;-><init>()V

    .line 35
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/ProfileDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    .line 36
    iget-boolean p1, p1, Lcom/mikepenz/materialdrawer/model/ProfileDrawerItem;->mEnabled:Z

    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->mEnabled:Z

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->bindView(Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public bindView(Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;Ljava/util/List;)V
    .locals 2

    .line 134
    invoke-super {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 136
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->customHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    if-eqz p2, :cond_0

    .line 137
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 138
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->customHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    iget-object v1, p1, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->asPixel(Landroid/content/Context;)I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 139
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    :cond_0
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 146
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->getIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    move-result-object p2

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->applyToOrSetInvisible(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/widget/ImageView;)V

    .line 152
    iget-object p1, p1, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p0, p1}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    return-void
.end method

.method public getEmail()Lcom/mikepenz/materialdrawer/holder/StringHolder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object v0
.end method

.method public getLayoutRes()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 129
    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_item_mini_profile:I

    return v0
.end method

.method public getName()Lcom/mikepenz/materialdrawer/holder/StringHolder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 123
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_item_mini_profile:I

    return v0
.end method

.method public bridge synthetic getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;
    .locals 1

    .line 157
    new-instance v0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public withCustomHeight(Lcom/mikepenz/materialdrawer/holder/DimenHolder;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->customHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withCustomHeightDp(I)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;
    .locals 0

    .line 102
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->customHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withCustomHeightPx(I)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;
    .locals 0

    .line 107
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromPixel(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->customHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withCustomHeightRes(I)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 97
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromResource(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->customHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withEmail(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic withEmail(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->withEmail(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public withIcon(I)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 68
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withIcon(Landroid/graphics/Bitmap;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;
    .locals 1

    .line 74
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withIcon(Landroid/graphics/drawable/Drawable;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;
    .locals 1

    .line 62
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withIcon(Landroid/net/Uri;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;
    .locals 1

    .line 86
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;
    .locals 1

    .line 92
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Lcom/mikepenz/iconics/typeface/IIcon;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withIcon(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;
    .locals 1

    .line 80
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public bridge synthetic withIcon(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 25
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->withIcon(I)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withIcon(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->withIcon(Landroid/graphics/Bitmap;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withIcon(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->withIcon(Landroid/graphics/drawable/Drawable;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withIcon(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->withIcon(Landroid/net/Uri;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withIcon(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->withIcon(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public withName(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic withName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->withName(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;

    move-result-object p1

    return-object p1
.end method
