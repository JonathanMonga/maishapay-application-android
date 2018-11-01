.class public Lorg/alfonz/graphics/drawable/RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedDrawable.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mCornerRadius:F

.field private mMargin:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;F)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lorg/alfonz/graphics/drawable/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;FI)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;FI)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mRect:Landroid/graphics/RectF;

    .line 28
    iput-object p1, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 29
    iput p2, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mCornerRadius:F

    .line 30
    iput p3, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mMargin:I

    .line 32
    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object p3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, p3, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 35
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mCornerRadius:F

    iget v2, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mCornerRadius:F

    iget-object v3, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 42
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mMargin:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v4, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mMargin:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
