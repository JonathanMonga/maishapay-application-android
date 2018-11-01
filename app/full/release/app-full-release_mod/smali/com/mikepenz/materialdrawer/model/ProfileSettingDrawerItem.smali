.class public Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;
.source "ProfileSettingDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;
.implements Lcom/mikepenz/materialdrawer/model/interfaces/Tagable;
.implements Lcom/mikepenz/materialdrawer/model/interfaces/Typefaceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem<",
        "Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;",
        "Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;",
        ">;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/IProfile<",
        "Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;",
        ">;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/Tagable<",
        "Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;",
        ">;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/Typefaceable<",
        "Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;",
        ">;"
    }
.end annotation


# instance fields
.field private description:Lcom/mikepenz/materialdrawer/holder/StringHolder;

.field private descriptionTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field private icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

.field private iconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field private iconTinted:Z

.field private name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

.field private selectable:Z

.field private selectedColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field private textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->iconTinted:Z

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->typeface:Landroid/graphics/Typeface;

    .line 45
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->selectable:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->bindView(Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public bindView(Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;Ljava/util/List;)V
    .locals 6

    .line 233
    invoke-super {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 236
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 239
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 242
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 245
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->getSelectedColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_selected:I

    sget v2, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_selected:I

    invoke-static {v0, p2, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;II)I

    move-result v0

    .line 250
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->getTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v1

    sget v2, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_primary_text:I

    sget v3, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_primary_text:I

    invoke-static {v1, p2, v2, v3}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;II)I

    move-result v1

    .line 251
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->getIconColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v2

    sget v3, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_primary_icon:I

    sget v4, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_primary_icon:I

    invoke-static {v2, p2, v3, v4}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;II)I

    move-result v2

    .line 252
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->getDescriptionTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v3

    sget v4, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_primary_text:I

    sget v5, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_primary_text:I

    invoke-static {v3, p2, v4, v5}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;II)I

    move-result v3

    .line 254
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->isSelectedBackgroundAnimated()Z

    move-result v5

    invoke-static {p2, v0, v5}, Lcom/mikepenz/materialize/util/UIUtils;->getSelectableBackground(Landroid/content/Context;IZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/mikepenz/materialize/util/UIUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 256
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->getName()Lcom/mikepenz/materialdrawer/holder/StringHolder;

    move-result-object p2

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->access$100(Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mikepenz/materialdrawer/holder/StringHolder;->applyTo(Lcom/mikepenz/materialize/holder/StringHolder;Landroid/widget/TextView;)V

    .line 257
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->access$100(Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->getDescription()Lcom/mikepenz/materialdrawer/holder/StringHolder;

    move-result-object p2

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->access$200(Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mikepenz/materialdrawer/holder/StringHolder;->applyToOrHide(Lcom/mikepenz/materialize/holder/StringHolder;Landroid/widget/TextView;)Z

    .line 260
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->access$200(Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 263
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->access$100(Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 267
    :cond_0
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->access$300(Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->isIconTinted()Z

    move-result v1

    const/4 v3, 0x2

    invoke-static {p2, v0, v2, v1, v3}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->applyDecidedIconOrSetGone(Lcom/mikepenz/materialdrawer/holder/ImageHolder;Landroid/widget/ImageView;IZI)V

    .line 270
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;->setDrawerVerticalPadding(Landroid/view/View;)V

    .line 273
    iget-object p1, p1, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p0, p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    return-void
.end method

.method public getDescription()Lcom/mikepenz/materialdrawer/holder/StringHolder;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->description:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object v0
.end method

.method public getDescriptionTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->descriptionTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getEmail()Lcom/mikepenz/materialdrawer/holder/StringHolder;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->description:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object v0
.end method

.method public getIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object v0
.end method

.method public getIconColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->iconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getLayoutRes()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 228
    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_item_profile_setting:I

    return v0
.end method

.method public getName()Lcom/mikepenz/materialdrawer/holder/StringHolder;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object v0
.end method

.method public getSelectedColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->selectedColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 222
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_item_profile_setting:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public bridge synthetic getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;
    .locals 2

    .line 278
    new-instance v0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$ViewHolder;-><init>(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem$1;)V

    return-object v0
.end method

.method public isIconTinted()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->iconTinted:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->selectable:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .line 207
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->description:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-void
.end method

.method public setIconTinted(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->iconTinted:Z

    return-void
.end method

.method public withDescription(I)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 99
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->description:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 1

    .line 94
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->description:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withDescriptionTextColor(I)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 130
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->descriptionTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withDescriptionTextColorRes(I)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 135
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->descriptionTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withEmail(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 1

    .line 105
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->description:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public bridge synthetic withEmail(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->withEmail(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public withIcon(I)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 55
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withIcon(Landroid/graphics/Bitmap;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 1

    .line 61
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withIcon(Landroid/graphics/drawable/Drawable;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 1

    .line 49
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withIcon(Landroid/net/Uri;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 1

    .line 79
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 1

    .line 67
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Lcom/mikepenz/iconics/typeface/IIcon;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withIcon(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 1

    .line 73
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public bridge synthetic withIcon(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 30
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->withIcon(I)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withIcon(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->withIcon(Landroid/graphics/Bitmap;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withIcon(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->withIcon(Landroid/graphics/drawable/Drawable;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withIcon(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->withIcon(Landroid/net/Uri;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withIcon(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->withIcon(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public withIconColor(I)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 140
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->iconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withIconColorRes(I)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 145
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->iconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withIconTinted(Z)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->iconTinted:Z

    return-object p0
.end method

.method public withName(I)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 89
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 1

    .line 84
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public bridge synthetic withName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->withName(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public withSelectable(Z)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->selectable:Z

    return-object p0
.end method

.method public bridge synthetic withSelectable(Z)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->withSelectable(Z)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public withSelectedColor(I)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 110
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->selectedColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withSelectedColorRes(I)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 115
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->selectedColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withTextColor(I)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 120
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withTextColorRes(I)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 125
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withTypeface(Landroid/graphics/Typeface;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->typeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public bridge synthetic withTypeface(Landroid/graphics/Typeface;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->withTypeface(Landroid/graphics/Typeface;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;

    move-result-object p1

    return-object p1
.end method
