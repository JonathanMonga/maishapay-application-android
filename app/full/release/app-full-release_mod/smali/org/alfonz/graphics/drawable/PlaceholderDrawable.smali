.class public Lorg/alfonz/graphics/drawable/PlaceholderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PlaceholderDrawable.java"


# static fields
.field private static final COLOR_FORMAT:Ljava/lang/String; = "#FF%06X"

.field private static final DARKNESS_THRESHOLD:F = 0.2f

.field public static final DEFAULT_COLOR:Ljava/lang/String; = "#808080"

.field public static final DEFAULT_TEXT:Ljava/lang/String; = "?"

.field public static final DEFAULT_TEXT_SIZE_PERCENTAGE:I = 0x32


# instance fields
.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBounds:Landroid/graphics/RectF;

.field private mCircular:Z

.field private mSymbol:Ljava/lang/String;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSizePercentage:I

.field private mTextStartXPoint:F

.field private mTextStartYPoint:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "?"

    const/16 v1, 0x32

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    const-string v2, "?"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .line 36
    invoke-direct/range {v0 .. v6}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;IZII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v3, 0x32

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 40
    invoke-direct/range {v0 .. v6}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;IZII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 44
    invoke-direct/range {v0 .. v6}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;IZII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 48
    invoke-direct/range {v0 .. v6}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;IZII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZII)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    .line 51
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->resolveSymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mSymbol:Ljava/lang/String;

    .line 53
    iput p3, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextSizePercentage:I

    .line 54
    iput-boolean p4, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mCircular:Z

    if-nez p5, :cond_0

    const-string p2, "white"

    .line 56
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p5

    :cond_0
    if-nez p6, :cond_1

    .line 57
    invoke-direct {p0, p1}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->convertStringToColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->handleColorDarkness(I)I

    move-result p6

    .line 59
    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextPaint:Landroid/graphics/Paint;

    .line 60
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextPaint:Landroid/graphics/Paint;

    const-string p3, "sans-serif"

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 64
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 65
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object p1, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private calculateTextSize()F
    .locals 2

    .line 152
    iget v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextSizePercentage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextSizePercentage:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x32

    .line 153
    iput v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextSizePercentage:I

    .line 155
    :cond_1
    invoke-virtual {p0}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextSizePercentage:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private calculateTextStartXPoint()F
    .locals 3

    .line 159
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 160
    invoke-virtual {p0}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    return v1
.end method

.method private calculateTextStartYPoint()F
    .locals 4

    .line 164
    invoke-virtual {p0}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    iget-object v3, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    return v0
.end method

.method private convertStringToColor(Ljava/lang/String;)I
    .locals 4

    .line 116
    invoke-direct {p0, p1}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "#808080"

    goto :goto_0

    :cond_0
    const-string v0, "#FF%06X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xffffff

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    and-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 117
    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private darkerColor(IF)I
    .locals 4

    .line 134
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 135
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 136
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 137
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    const/4 v3, 0x0

    .line 140
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    .line 141
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 142
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 139
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private handleColorDarkness(I)I
    .locals 1

    .line 121
    invoke-direct {p0, p1}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->isColorLight(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    .line 122
    invoke-direct {p0, p1, v0}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->darkerColor(IF)I

    move-result p1

    return p1

    :cond_0
    return p1
.end method

.method private isColorLight(I)Z
    .locals 6

    .line 129
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    const-wide v0, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide v2, 0x3fc99999a0000000L    # 0.20000000298023224

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNotNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private resolveSymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 104
    invoke-direct {p0, p1}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :cond_0
    invoke-direct {p0, p2}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    const-string p1, "?"

    return-object p1
.end method

.method private setupTextValues()V
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->calculateTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 147
    invoke-direct {p0}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->calculateTextStartXPoint()F

    move-result v0

    iput v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextStartXPoint:F

    .line 148
    invoke-direct {p0}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->calculateTextStartYPoint()F

    move-result v0

    iput v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextStartYPoint:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 72
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mBounds:Landroid/graphics/RectF;

    .line 74
    invoke-direct {p0}, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->setupTextValues()V

    .line 77
    :cond_0
    iget-boolean v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mCircular:Z

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 83
    :goto_0
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mSymbol:Ljava/lang/String;

    iget v1, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextStartXPoint:F

    iget v2, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextStartYPoint:F

    iget-object v3, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 89
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 95
    iget-object v0, p0, Lorg/alfonz/graphics/drawable/PlaceholderDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
