.class public Lcom/mikepenz/materialize/holder/ImageHolder;
.super Ljava/lang/Object;
.source "ImageHolder.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconRes:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    .line 45
    iput p1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    .line 41
    iput-object p1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    .line 37
    iput-object p1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    .line 33
    iput-object p1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    .line 29
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public static applyDecidedIconOrSetGone(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/widget/ImageView;IZ)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 261
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1, p2, p3}, Lcom/mikepenz/materialize/holder/ImageHolder;->decideIcon(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 263
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/materialize/holder/ImageHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/mikepenz/materialize/holder/ImageHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 267
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 272
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static applyMultiIconTo(Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;IZLandroid/widget/ImageView;)V
    .locals 0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    .line 292
    new-instance p4, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;

    invoke-direct {p4, p0, p2, p1, p3}, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p5, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-static {p0, p2}, Lcom/mikepenz/materialize/util/UIUtils;->getIconStateList(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 297
    new-instance p2, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;

    invoke-direct {p2, p0, p1, p3}, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p5, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 p0, 0x0

    .line 302
    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/16 p0, 0x8

    .line 305
    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public static applyTo(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/widget/ImageView;)Z
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-static {p0, p1, v0}, Lcom/mikepenz/materialize/holder/ImageHolder;->applyTo(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static applyTo(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialize/holder/ImageHolder;->applyTo(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static applyToOrSetGone(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 213
    invoke-static {p0, p1, v0}, Lcom/mikepenz/materialize/holder/ImageHolder;->applyToOrSetGone(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public static applyToOrSetGone(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 224
    invoke-static {p0, p1, p2}, Lcom/mikepenz/materialize/holder/ImageHolder;->applyTo(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result p0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 227
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 229
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static applyToOrSetInvisible(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-static {p0, p1, v0}, Lcom/mikepenz/materialize/holder/ImageHolder;->applyToOrSetInvisible(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public static applyToOrSetInvisible(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 195
    invoke-static {p0, p1, p2}, Lcom/mikepenz/materialize/holder/ImageHolder;->applyTo(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result p0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 198
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    .line 200
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static decideIcon(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 247
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mikepenz/materialize/holder/ImageHolder;->decideIcon(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyTo(Landroid/widget/ImageView;)Z
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/materialize/holder/ImageHolder;->applyTo(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public applyTo(Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 1

    .line 98
    iget-object p2, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mUri:Landroid/net/Uri;

    if-eqz p2, :cond_0

    .line 99
    iget-object p2, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p2, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 108
    iget-object p2, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object p2, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    .line 110
    iget-object p2, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 111
    :cond_2
    iget p2, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 112
    iget p2, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p2, 0x0

    .line 114
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    return p1
.end method

.method public decideIcon(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 131
    iget v1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 132
    iget v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 135
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 136
    iget-object v1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 144
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconRes()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIconRes(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mUri:Landroid/net/Uri;

    return-void
.end method
