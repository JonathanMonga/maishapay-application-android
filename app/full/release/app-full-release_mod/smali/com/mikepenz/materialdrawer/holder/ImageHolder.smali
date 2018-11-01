.class public Lcom/mikepenz/materialdrawer/holder/ImageHolder;
.super Lcom/mikepenz/materialize/holder/ImageHolder;
.source "ImageHolder.java"


# instance fields
.field private mIIcon:Lcom/mikepenz/iconics/typeface/IIcon;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1}, Lcom/mikepenz/materialize/holder/ImageHolder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/mikepenz/materialize/holder/ImageHolder;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/mikepenz/materialize/holder/ImageHolder;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/mikepenz/materialize/holder/ImageHolder;-><init>(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/mikepenz/iconics/typeface/IIcon;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/mikepenz/materialize/holder/ImageHolder;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->mIIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/mikepenz/materialize/holder/ImageHolder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static applyDecidedIconOrSetGone(Lcom/mikepenz/materialdrawer/holder/ImageHolder;Landroid/widget/ImageView;IZI)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1, p2, p3, p4}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->decideIcon(Lcom/mikepenz/materialdrawer/holder/ImageHolder;Landroid/content/Context;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 161
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static decideIcon(Lcom/mikepenz/materialdrawer/holder/ImageHolder;Landroid/content/Context;IZI)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->decideIcon(Landroid/content/Context;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyTo(Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->getInstance()Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->setImage(Landroid/widget/ImageView;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 72
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getIconRes()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getIconRes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 80
    :cond_3
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->mIIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    if-eqz p2, :cond_5

    .line 81
    new-instance p2, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->mIIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    invoke-direct {p2, v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;-><init>(Landroid/content/Context;Lcom/mikepenz/iconics/typeface/IIcon;)V

    invoke-virtual {p2}, Lcom/mikepenz/iconics/IconicsDrawable;->actionBar()Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p2, 0x0

    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    return p1
.end method

.method public decideIcon(Landroid/content/Context;IZI)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->mIIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    if-eqz v1, :cond_0

    .line 101
    new-instance v0, Lcom/mikepenz/iconics/IconicsDrawable;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->mIIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    invoke-direct {v0, p1, v1}, Lcom/mikepenz/iconics/IconicsDrawable;-><init>(Landroid/content/Context;Lcom/mikepenz/iconics/typeface/IIcon;)V

    invoke-virtual {v0, p2}, Lcom/mikepenz/iconics/IconicsDrawable;->color(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->sizeDp(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingDp(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getIconRes()I

    move-result p4

    const/4 v1, -0x1

    if-eq p4, v1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getIconRes()I

    move-result p4

    invoke-static {p1, p4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getUri()Landroid/net/Uri;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 106
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getUri()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 107
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->getUri()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 114
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->mIIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    if-nez p1, :cond_3

    .line 115
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 116
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    return-object v0
.end method

.method public getIIcon()Lcom/mikepenz/iconics/typeface/IIcon;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->mIIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    return-object v0
.end method

.method public setIIcon(Lcom/mikepenz/iconics/typeface/IIcon;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->mIIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    return-void
.end method
