.class public Lorg/alfonz/graphics/drawable/CircularDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularDrawable.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBorderColor:I

.field private mBorderGap:F

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderWidth:F

.field private mDiameter:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    move v3, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/alfonz/graphics/drawable/CircularDrawable;-><init>(Landroid/graphics/Bitmap;FFFI)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;F)V
    .locals 6
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 30
    invoke-direct/range {v0 .. v5}, Lorg/alfonz/graphics/drawable/CircularDrawable;-><init>(Landroid/graphics/Bitmap;FFFI)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;FFFI)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 39
    iput p2, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mDiameter:F

    .line 40
    iput p3, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBorderWidth:F

    .line 41
    iput p4, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBorderGap:F

    .line 42
    iput p5, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBorderColor:I

    .line 44
    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object p3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object p4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, p3, p4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 46
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 47
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 49
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 51
    iget p1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBorderWidth:F

    const/4 p3, 0x0

    cmpl-float p1, p1, p3

    if-lez p1, :cond_0

    .line 52
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 53
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBorderPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBorderWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBorderColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;FFI)V
    .locals 7
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    move v3, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/alfonz/graphics/drawable/CircularDrawable;-><init>(Landroid/graphics/Bitmap;FFFI)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lorg/alfonz/graphics/drawable/CircularDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/alfonz/graphics/drawable/CircularDrawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mDiameter:F

    div-float/2addr v3, v1

    iget v4, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBorderWidth:F

    sub-float/2addr v3, v4

    iget v4, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBorderGap:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 80
    invoke-virtual {p0}, Lorg/alfonz/graphics/drawable/CircularDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/alfonz/graphics/drawable/CircularDrawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mDiameter:F

    div-float/2addr v3, v1

    iget v4, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBorderWidth:F

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    iget-object v1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lorg/alfonz/graphics/drawable/CircularDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/alfonz/graphics/drawable/CircularDrawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mDiameter:F

    div-float/2addr v3, v1

    iget-object v1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mDiameter:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mDiameter:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .line 62
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 64
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 65
    iget-object v1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 66
    iget v2, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mDiameter:F

    iget-object v3, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 67
    iget v3, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mDiameter:F

    iget-object v4, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 69
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 70
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    neg-float p1, p1

    div-float/2addr v2, v0

    add-float/2addr p1, v2

    neg-float v1, v1

    div-float/2addr v3, v0

    add-float/2addr v1, v3

    .line 71
    invoke-virtual {v4, p1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 73
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/CircularDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
