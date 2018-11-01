.class public abstract Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;
.source "BaseDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/model/interfaces/Nameable;
.implements Lcom/mikepenz/materialdrawer/model/interfaces/Iconable;
.implements Lcom/mikepenz/materialdrawer/model/interfaces/Tagable;
.implements Lcom/mikepenz/materialdrawer/model/interfaces/Typefaceable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem<",
        "TT;TVH;>;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/Nameable<",
        "TT;>;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/Iconable<",
        "TT;>;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/Tagable<",
        "TT;>;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/Typefaceable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected colorStateList:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field protected disabledIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected disabledTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

.field protected iconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected iconTinted:Z

.field protected level:I

.field protected name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

.field protected selectedColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected selectedIcon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

.field protected selectedIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected selectedTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->iconTinted:Z

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->typeface:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->level:I

    return-void
.end method


# virtual methods
.method protected getColor(Landroid/content/Context;)I
    .locals 3

    .line 284
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->getTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_primary_text:I

    sget v2, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_primary_text:I

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;II)I

    move-result p1

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->getDisabledTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_hint_text:I

    sget v2, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_hint_text:I

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getDisabledIconColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->disabledIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getDisabledTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->disabledTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object v0
.end method

.method public getIconColor(Landroid/content/Context;)I
    .locals 3

    .line 310
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->getIconColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_primary_icon:I

    sget v2, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_primary_icon:I

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;II)I

    move-result p1

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->getDisabledIconColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_hint_icon:I

    sget v2, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_hint_icon:I

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getIconColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->iconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->level:I

    return v0
.end method

.method public getName()Lcom/mikepenz/materialdrawer/holder/StringHolder;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object v0
.end method

.method protected getSelectedColor(Landroid/content/Context;)I
    .locals 3

    .line 273
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->getSelectedColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_selected:I

    sget v2, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_selected:I

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method public getSelectedColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getSelectedIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedIcon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object v0
.end method

.method protected getSelectedIconColor(Landroid/content/Context;)I
    .locals 3

    .line 325
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->getSelectedIconColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_selected_text:I

    sget v2, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_selected_text:I

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method public getSelectedIconColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method protected getSelectedTextColor(Landroid/content/Context;)I
    .locals 3

    .line 299
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->getSelectedTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_selected_text:I

    sget v2, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_selected_text:I

    invoke-static {v0, p1, v1, v2}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method public getSelectedTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method protected getTextColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 336
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->colorStateList:Landroid/util/Pair;

    if-eqz v0, :cond_0

    add-int v0, p1, p2

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->colorStateList:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 337
    :cond_0
    new-instance v0, Landroid/util/Pair;

    add-int v1, p1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;->getTextColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->colorStateList:Landroid/util/Pair;

    .line 340
    :cond_1
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->colorStateList:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isIconTinted()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->iconTinted:Z

    return v0
.end method

.method public withDisabledIconColor(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 165
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->disabledIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withDisabledIconColorRes(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 170
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->disabledIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withDisabledTextColor(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 135
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->disabledTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withDisabledTextColorRes(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 140
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->disabledTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withIcon(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withIcon(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/iconics/typeface/IIcon;",
            ")TT;"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Lcom/mikepenz/iconics/typeface/IIcon;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 81
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Lcom/mikepenz/iconics/typeface/IIcon;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedIcon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->withIconTintingEnabled(Z)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public withIcon(Lcom/mikepenz/materialdrawer/holder/ImageHolder;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/holder/ImageHolder;",
            ")TT;"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->icon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withIconColor(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 145
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->iconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withIconColorRes(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 150
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->iconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withIconTinted(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->iconTinted:Z

    return-object p0
.end method

.method public withIconTintingEnabled(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 182
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->iconTinted:Z

    return-object p0
.end method

.method public withLevel(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 209
    iput p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->level:I

    return-object p0
.end method

.method public withName(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withName(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/holder/StringHolder;",
            ")TT;"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withSelectedColor(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 105
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withSelectedColorRes(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 110
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withSelectedIcon(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedIcon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withSelectedIcon(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedIcon:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withSelectedIconColor(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 155
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withSelectedIconColorRes(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 160
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedIconColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withSelectedTextColor(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 125
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withSelectedTextColorRes(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 130
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->selectedTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withTextColor(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 115
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withTextColorRes(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 120
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withTintSelectedIcon(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->withIconTintingEnabled(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public withTypeface(Landroid/graphics/Typeface;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            ")TT;"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;->typeface:Landroid/graphics/Typeface;

    return-object p0
.end method
