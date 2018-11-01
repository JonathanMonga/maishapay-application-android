.class public Lcom/nightonke/boommenu/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final colors:[I

.field private static ourInstance:Lcom/nightonke/boommenu/Util;

.field private static final usedColor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x12

    .line 343
    new-array v0, v0, [I

    const-string v1, "#F44336"

    .line 344
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "#E91E63"

    .line 345
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "#9C27B0"

    .line 346
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const-string v1, "#673AB7"

    .line 347
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const-string v1, "#3F51B5"

    .line 348
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    const-string v1, "#2196F3"

    .line 349
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    const-string v1, "#03A9F4"

    .line 350
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    const-string v1, "#00BCD4"

    .line 351
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    const-string v1, "#009688"

    .line 352
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    const-string v1, "#4CAF50"

    .line 353
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    const-string v1, "#009688"

    .line 354
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    const-string v1, "#CDDC39"

    .line 355
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    const-string v1, "#FFEB3B"

    .line 356
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    aput v1, v0, v2

    const-string v1, "#FF9800"

    .line 357
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xd

    aput v1, v0, v2

    const-string v1, "#FF5722"

    .line 358
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xe

    aput v1, v0, v2

    const-string v1, "#795548"

    .line 359
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xf

    aput v1, v0, v2

    const-string v1, "#9E9E9E"

    .line 360
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x10

    aput v1, v0, v2

    const-string v1, "#607D8B"

    .line 361
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x11

    aput v1, v0, v2

    sput-object v0, Lcom/nightonke/boommenu/Util;->colors:[I

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nightonke/boommenu/Util;->usedColor:Ljava/util/ArrayList;

    .line 383
    new-instance v0, Lcom/nightonke/boommenu/Util;

    invoke-direct {v0}, Lcom/nightonke/boommenu/Util;-><init>()V

    sput-object v0, Lcom/nightonke/boommenu/Util;->ourInstance:Lcom/nightonke/boommenu/Util;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distance(Landroid/graphics/Point;Landroid/graphics/Point;)F
    .locals 3

    .line 191
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, p1

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    int-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static dp2px(F)I
    .locals 2

    .line 57
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 58
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float/2addr p0, v0

    .line 59
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static getBoolean(Landroid/content/res/TypedArray;II)Z
    .locals 1

    .line 282
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method

.method public static getColor()I
    .locals 4

    .line 367
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 369
    :cond_0
    sget-object v1, Lcom/nightonke/boommenu/Util;->colors:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 370
    sget-object v2, Lcom/nightonke/boommenu/Util;->usedColor:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 371
    sget-object v0, Lcom/nightonke/boommenu/Util;->usedColor:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :goto_0
    sget-object v0, Lcom/nightonke/boommenu/Util;->usedColor:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_1

    sget-object v0, Lcom/nightonke/boommenu/Util;->usedColor:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 373
    :cond_1
    sget-object v0, Lcom/nightonke/boommenu/Util;->colors:[I

    aget v0, v0, v1

    return v0
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 2

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0

    .line 311
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getColor(Landroid/content/Context;II)I
    .locals 0

    if-nez p1, :cond_0

    return p2

    .line 317
    :cond_0
    invoke-static {p0, p1}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColor(Landroid/content/res/TypedArray;I)I
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-static {p0, p1, v0}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/res/TypedArray;ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method public static getColor(Landroid/content/res/TypedArray;II)I
    .locals 0

    .line 303
    invoke-static {p0, p2}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/res/TypedArray;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    return p0
.end method

.method public static getColor(Landroid/content/res/TypedArray;ILandroid/content/res/Resources$Theme;)I
    .locals 2

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getColor(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, p1, v0}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/view/View;ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method public static getColor(Landroid/view/View;ILandroid/content/res/Resources$Theme;)I
    .locals 2

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getDarkerColor(I)I
    .locals 3

    const/4 v0, 0x3

    .line 330
    new-array v0, v0, [F

    .line 331
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x2

    .line 332
    aget v1, v0, p0

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    aput v1, v0, p0

    .line 333
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method public static getDimenOffset(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 296
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p0

    return p0
.end method

.method public static getDimenSize(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 289
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    return p0
.end method

.method public static getDrawable(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getDrawable(Landroid/view/View;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/nightonke/boommenu/Util;
    .locals 1

    .line 386
    sget-object v0, Lcom/nightonke/boommenu/Util;->ourInstance:Lcom/nightonke/boommenu/Util;

    return-object v0
.end method

.method public static getInt(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 275
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method public static getLighterColor(I)I
    .locals 3

    const/4 v0, 0x3

    .line 337
    new-array v0, v0, [F

    .line 338
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x2

    .line 339
    aget v1, v0, p0

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    aput v1, v0, p0

    .line 340
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method public static getOvalBitmapDrawable(Landroid/view/View;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    mul-int/2addr v0, p1

    .line 150
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 155
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 156
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, p1

    .line 158
    invoke-virtual {v1, p1, p1, p1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 162
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public static getOvalDrawable(Landroid/view/View;I)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 139
    sget v0, Lcom/nightonke/boommenu/R$drawable;->shape_oval_normal:I

    invoke-static {p0, v0}, Lcom/nightonke/boommenu/Util;->getDrawable(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    .line 142
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object p0
.end method

.method public static getOvalStateListBitmapDrawable(Landroid/view/View;IIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 200
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    .line 201
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    .line 203
    invoke-static {p0, p1, p3}, Lcom/nightonke/boommenu/Util;->getOvalBitmapDrawable(Landroid/view/View;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p3

    .line 201
    invoke-virtual {v0, v2, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 204
    new-array p3, v1, [I

    const v1, -0x101009e

    aput v1, p3, v3

    .line 206
    invoke-static {p0, p1, p4}, Lcom/nightonke/boommenu/Util;->getOvalBitmapDrawable(Landroid/view/View;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p4

    .line 204
    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 207
    sget-object p3, Landroid/util/StateSet;->WILD_CARD:[I

    .line 209
    invoke-static {p0, p1, p2}, Lcom/nightonke/boommenu/Util;->getOvalBitmapDrawable(Landroid/view/View;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    .line 207
    invoke-virtual {v0, p3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static getOvalStateListGradientDrawable(Landroid/view/View;III)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 218
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    .line 219
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    .line 221
    invoke-static {p0, p2}, Lcom/nightonke/boommenu/Util;->getOvalDrawable(Landroid/view/View;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    .line 219
    invoke-virtual {v0, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 222
    new-array p2, v1, [I

    const v1, -0x101009e

    aput v1, p2, v3

    .line 224
    invoke-static {p0, p3}, Lcom/nightonke/boommenu/Util;->getOvalDrawable(Landroid/view/View;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p3

    .line 222
    invoke-virtual {v0, p2, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 225
    sget-object p2, Landroid/util/StateSet;->WILD_CARD:[I

    .line 227
    invoke-static {p0, p1}, Lcom/nightonke/boommenu/Util;->getOvalDrawable(Landroid/view/View;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    .line 225
    invoke-virtual {v0, p2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static getRectangleBitmapDrawable(Landroid/view/View;IIII)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 183
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 184
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 185
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    new-instance p4, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v3, 0x0

    invoke-direct {p4, v3, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float p1, p3

    invoke-virtual {v1, p4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 187
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRectangleDrawable(Landroid/view/View;II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 166
    sget v0, Lcom/nightonke/boommenu/R$drawable;->shape_rectangle_normal:I

    invoke-static {p0, v0}, Lcom/nightonke/boommenu/Util;->getDrawable(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    int-to-float p1, p1

    .line 169
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 170
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object p0
.end method

.method public static getRectangleStateListBitmapDrawable(Landroid/view/View;IIIIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 239
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    .line 240
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    .line 242
    invoke-static {p0, p1, p2, p3, p5}, Lcom/nightonke/boommenu/Util;->getRectangleBitmapDrawable(Landroid/view/View;IIII)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p5

    .line 240
    invoke-virtual {v0, v2, p5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 243
    new-array p5, v1, [I

    const v1, -0x101009e

    aput v1, p5, v3

    .line 245
    invoke-static {p0, p1, p2, p3, p6}, Lcom/nightonke/boommenu/Util;->getRectangleBitmapDrawable(Landroid/view/View;IIII)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p6

    .line 243
    invoke-virtual {v0, p5, p6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 246
    sget-object p5, Landroid/util/StateSet;->WILD_CARD:[I

    .line 248
    invoke-static {p0, p1, p2, p3, p4}, Lcom/nightonke/boommenu/Util;->getRectangleBitmapDrawable(Landroid/view/View;IIII)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    .line 246
    invoke-virtual {v0, p5, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static getRectangleStateListGradientDrawable(Landroid/view/View;IIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 258
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    .line 259
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    .line 261
    invoke-static {p0, p1, p3}, Lcom/nightonke/boommenu/Util;->getRectangleDrawable(Landroid/view/View;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p3

    .line 259
    invoke-virtual {v0, v2, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 262
    new-array p3, v1, [I

    const v1, -0x101009e

    aput v1, p3, v3

    .line 264
    invoke-static {p0, p1, p4}, Lcom/nightonke/boommenu/Util;->getRectangleDrawable(Landroid/view/View;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p4

    .line 262
    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 265
    sget-object p3, Landroid/util/StateSet;->WILD_CARD:[I

    .line 267
    invoke-static {p0, p1, p2}, Lcom/nightonke/boommenu/Util;->getRectangleDrawable(Landroid/view/View;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    .line 265
    invoke-virtual {v0, p3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static getSystemDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x1

    .line 89
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 91
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method public static pointInView(Landroid/graphics/PointF;Landroid/view/View;)Z
    .locals 2

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "BoomMenuButton"

    const-string v1, "scanForActivity: context is null!"

    .line 42
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 44
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 45
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 46
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 47
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/nightonke/boommenu/Util;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "BoomMenuButton"

    const-string v1, "scanForActivity: context is null!"

    .line 48
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 321
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 322
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public static setDrawable(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 108
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setText(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 115
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 118
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setTextColor(Landroid/widget/TextView;II)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 125
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method static varargs setVisibility(I[Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 53
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
