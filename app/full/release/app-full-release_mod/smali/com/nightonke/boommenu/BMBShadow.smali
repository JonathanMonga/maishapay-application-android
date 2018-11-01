.class public Lcom/nightonke/boommenu/BMBShadow;
.super Landroid/widget/FrameLayout;
.source "BMBShadow.java"


# instance fields
.field private shadowColor:I

.field private shadowCornerRadius:I

.field private shadowEffect:Z

.field private shadowOffsetX:I

.field private shadowOffsetY:I

.field private shadowRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowEffect:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowEffect:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowEffect:Z

    return-void
.end method

.method private createShadow()V
    .locals 3

    .line 63
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowEffect:Z

    if-eqz v0, :cond_2

    .line 64
    invoke-direct {p0}, Lcom/nightonke/boommenu/BMBShadow;->createShadowBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BMBShadow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-gt v0, v2, :cond_1

    .line 69
    invoke-virtual {p0, v1}, Lcom/nightonke/boommenu/BMBShadow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0, v1}, Lcom/nightonke/boommenu/BMBShadow;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BMBShadow;->clearShadow()V

    :goto_0
    return-void
.end method

.method private createShadowBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 80
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BMBShadow;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BMBShadow;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BMBShadow;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BMBShadow;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 85
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowRadius:I

    iget v4, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowOffsetX:I

    .line 87
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowRadius:I

    iget v5, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowOffsetY:I

    .line 88
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 89
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BMBShadow;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowRadius:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowOffsetX:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 90
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BMBShadow;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowRadius:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowOffsetY:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 91
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    .line 92
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, 0x0

    .line 93
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BMBShadow;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    iget v4, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowRadius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowOffsetX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowOffsetY:I

    int-to-float v6, v6

    iget v7, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowColor:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 98
    :cond_0
    iget v4, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowCornerRadius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowCornerRadius:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private initPadding()V
    .locals 3

    .line 43
    iget v0, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowRadius:I

    iget v1, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowOffsetX:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    iget v1, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowRadius:I

    iget v2, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowOffsetY:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 45
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/nightonke/boommenu/BMBShadow;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public clearShadow()V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-static {p0, v0}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 58
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 59
    invoke-direct {p0}, Lcom/nightonke/boommenu/BMBShadow;->createShadow()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/nightonke/boommenu/BMBShadow;->createShadow()V

    :cond_0
    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowColor:I

    return-void
.end method

.method public setShadowCornerRadius(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowCornerRadius:I

    .line 119
    invoke-direct {p0}, Lcom/nightonke/boommenu/BMBShadow;->initPadding()V

    return-void
.end method

.method public setShadowEffect(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowEffect:Z

    return-void
.end method

.method public setShadowOffsetX(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowOffsetX:I

    .line 104
    invoke-direct {p0}, Lcom/nightonke/boommenu/BMBShadow;->initPadding()V

    return-void
.end method

.method public setShadowOffsetY(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowOffsetY:I

    .line 109
    invoke-direct {p0}, Lcom/nightonke/boommenu/BMBShadow;->initPadding()V

    return-void
.end method

.method public setShadowRadius(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/nightonke/boommenu/BMBShadow;->shadowRadius:I

    .line 114
    invoke-direct {p0}, Lcom/nightonke/boommenu/BMBShadow;->initPadding()V

    return-void
.end method
