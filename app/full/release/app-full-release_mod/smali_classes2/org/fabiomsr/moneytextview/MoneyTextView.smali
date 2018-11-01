.class public Lorg/fabiomsr/moneytextview/MoneyTextView;
.super Landroid/view/View;
.source "MoneyTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fabiomsr/moneytextview/MoneyTextView$Section;
    }
.end annotation


# static fields
.field private static final GRAVITY_BOTTOM:I = 0x8

.field private static final GRAVITY_CENTER_HORIZONTAL:I = 0x20

.field private static final GRAVITY_CENTER_VERTICAL:I = 0x10

.field private static final GRAVITY_END:I = 0x2

.field private static final GRAVITY_START:I = 0x1

.field private static final GRAVITY_TOP:I = 0x4

.field private static final MIN_PADDING:F = 2.0f


# instance fields
.field private mAmount:F

.field private mDecimalFormat:Ljava/text/DecimalFormat;

.field private mDecimalGravity:I

.field private mDecimalMargin:F

.field private mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

.field private mDecimalSeparator:C

.field private mGravity:I

.field private mHeight:I

.field private mIncludeDecimalSeparator:Z

.field private mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

.field private mSymbolGravity:I

.field private mSymbolMargin:F

.field private mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextPaintRoomSize:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/fabiomsr/moneytextview/MoneyTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/fabiomsr/moneytextview/MoneyTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    invoke-direct {p0, p1, p2}, Lorg/fabiomsr/moneytextview/MoneyTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private calculateBounds(II)V
    .locals 4

    .line 169
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 170
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 171
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 172
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 174
    iget-object v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget-object v3, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->calculateBounds(Landroid/text/TextPaint;)V

    .line 175
    iget-object v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget-object v3, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->calculateBounds(Landroid/text/TextPaint;)V

    .line 176
    iget-object v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget-object v3, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->calculateBounds(Landroid/text/TextPaint;)V

    .line 178
    iget-object v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget-object v3, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->calculateNumbersHeight(Landroid/text/TextPaint;)V

    .line 179
    iget-object v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget-object v3, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->calculateNumbersHeight(Landroid/text/TextPaint;)V

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iput p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mWidth:I

    goto :goto_0

    .line 188
    :cond_1
    iget-object p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget p1, p1, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->width:I

    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v0, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->width:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v0, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->width:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolMargin:F

    add-float/2addr p1, v0

    iget v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalMargin:F

    add-float/2addr p1, v0

    .line 189
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mWidth:I

    :goto_0
    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 196
    :cond_2
    iput p2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mHeight:I

    goto :goto_1

    .line 200
    :cond_3
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget p2, p2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->height:I

    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v0, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->height:I

    iget-object v1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v1, v1, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->height:I

    .line 201
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mHeight:I

    :goto_1
    return-void
.end method

.method private calculatePositions()V
    .locals 7

    .line 208
    iget v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolGravity:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    .line 209
    iget v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolGravity:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    .line 212
    iget-object v4, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v4, v4, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->width:I

    iget-object v5, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v5, v5, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->width:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v5, v5, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->width:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolMargin:F

    add-float/2addr v4, v5

    iget v5, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalMargin:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 215
    iget v5, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mGravity:I

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_0

    .line 216
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getPaddingLeft()I

    move-result v4

    goto :goto_0

    .line 217
    :cond_0
    iget v5, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mGravity:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    .line 218
    iget v5, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mWidth:I

    sub-int/2addr v5, v4

    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getPaddingRight()I

    move-result v4

    sub-int v4, v5, v4

    goto :goto_0

    .line 220
    :cond_1
    iget v5, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mWidth:I

    shr-int/2addr v5, v1

    shr-int/2addr v4, v1

    sub-int v4, v5, v4

    .line 223
    :goto_0
    iget v5, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mGravity:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_2

    .line 224
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getPaddingTop()I

    move-result v1

    iget-object v3, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v3, v3, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->height:I

    add-int/2addr v1, v3

    goto :goto_1

    .line 225
    :cond_2
    iget v3, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mGravity:I

    const/16 v5, 0x8

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_3

    .line 226
    iget v1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mHeight:I

    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_1

    .line 228
    :cond_3
    iget v3, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mHeight:I

    shr-int/2addr v3, v1

    iget-object v5, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v5, v5, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->height:I

    shr-int/lit8 v1, v5, 0x1

    add-int/2addr v1, v3

    .line 231
    :goto_1
    invoke-direct {p0, v1, v2}, Lorg/fabiomsr/moneytextview/MoneyTextView;->calculateY(II)V

    .line 232
    invoke-direct {p0, v4, v0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->calculateX(II)V

    return-void
.end method

.method private calculateX(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 246
    iget-object p2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iput p1, p2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->x:I

    .line 247
    iget-object p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget-object p2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget p2, p2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->x:I

    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v0, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->width:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    iget v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolMargin:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->x:I

    .line 248
    iget-object p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget-object p2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget p2, p2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->x:I

    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v0, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->width:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    iget v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalMargin:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->x:I

    goto :goto_0

    .line 250
    :cond_0
    iget-object p2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iput p1, p2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->x:I

    .line 251
    iget-object p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget-object p2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget p2, p2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->x:I

    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v0, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->width:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    iget v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalMargin:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->x:I

    .line 252
    iget-object p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget-object p2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget p2, p2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->x:I

    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v0, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->width:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    iget v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolMargin:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->x:I

    :goto_0
    return-void
.end method

.method private calculateY(II)V
    .locals 4

    .line 237
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iput p1, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->y:I

    .line 238
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    iget-object p2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget p2, p2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->height:I

    iget-object v3, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v3, v3, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->height:I

    sub-int/2addr p2, v3

    iget-object v3, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget-object v3, v3, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v3

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    sub-int p2, p1, p2

    iput p2, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->y:I

    .line 240
    iget-object p2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalGravity:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v0, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->height:I

    iget-object v1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v1, v1, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->height:I

    sub-int v1, v0, v1

    :cond_1
    sub-int/2addr p1, v1

    iput p1, p2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->y:I

    return-void
.end method

.method private createTextFromAmount()V
    .locals 4

    .line 154
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalFormat:Ljava/text/DecimalFormat;

    iget v1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mAmount:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-char v1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 159
    iget-object v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->text:Ljava/lang/String;

    .line 160
    iget-object v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget-boolean v3, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIncludeDecimalSeparator:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->text:Ljava/lang/String;

    goto :goto_1

    .line 163
    :cond_1
    iget-object v1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iput-object v0, v1, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->text:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    const-string v1, ""

    iput-object v1, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->text:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private drawSection(Landroid/graphics/Canvas;Lorg/fabiomsr/moneytextview/MoneyTextView$Section;)V
    .locals 4

    .line 268
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->textSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 269
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->color:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 270
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaint:Landroid/text/TextPaint;

    iget-boolean v1, p2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->drawUnderline:Z

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 272
    iget-object v0, p2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->text:Ljava/lang/String;

    iget v1, p2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->x:I

    int-to-float v1, v1

    iget v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaintRoomSize:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget p2, p2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->y:I

    int-to-float p2, p2

    iget v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaintRoomSize:F

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    iget-object v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getMinPadding(I)I
    .locals 1

    if-nez p1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 352
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    return p1
.end method

.method private getMinVerticalPadding(I)I
    .locals 2

    .line 360
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v0, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->textSize:F

    iget-object v1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v1, v1, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->textSize:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 361
    iget-object v1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 362
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    int-to-float v1, p1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    float-to-int p1, v0

    return p1

    :cond_0
    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 76
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaint:Landroid/text/TextPaint;

    .line 77
    new-instance v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    invoke-direct {v0}, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;-><init>()V

    iput-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    .line 78
    new-instance v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    invoke-direct {v0}, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;-><init>()V

    iput-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    .line 79
    new-instance v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    invoke-direct {v0}, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;-><init>()V

    iput-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    .line 81
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    iget-object v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->density:F

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaintRoomSize:F

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView:[I

    sget v3, Lorg/fabiomsr/moneytextview/R$style;->MoneyTextViewDefaultStyle:I

    const/4 v4, 0x0

    invoke-virtual {v0, p2, v2, v4, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 89
    :try_start_0
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    sget v2, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_symbol:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->text:Ljava/lang/String;

    .line 90
    sget v0, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_amount:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mAmount:F

    .line 91
    sget v0, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_gravity:I

    const/16 v2, 0x30

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mGravity:I

    .line 92
    sget v0, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_symbolGravity:I

    const/4 v2, 0x5

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolGravity:I

    .line 93
    sget v0, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_decimalGravity:I

    const/4 v2, 0x4

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalGravity:I

    .line 94
    sget v0, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_includeDecimalSeparator:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIncludeDecimalSeparator:Z

    .line 95
    sget v0, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_symbolMargin:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolMargin:F

    .line 96
    sget v0, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_decimalMargin:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalMargin:F

    .line 97
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    sget v1, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_baseTextSize:I

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->textSize:F

    .line 98
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    sget v1, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_symbolTextSize:I

    iget-object v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v2, v2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->textSize:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->textSize:F

    .line 99
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    sget v1, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_decimalDigitsTextSize:I

    iget-object v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v2, v2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->textSize:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->textSize:F

    .line 100
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    sget v1, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_baseTextColor:I

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->color:I

    .line 101
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    sget v1, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_symbolTextColor:I

    iget-object v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v2, v2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->color:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->color:I

    .line 102
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    sget v1, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_decimalTextColor:I

    iget-object v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iget v2, v2, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->color:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->color:I

    .line 103
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    sget v1, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_decimalUnderline:I

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->drawUnderline:Z

    .line 105
    sget v0, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_format:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    sget v1, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_decimalSeparator:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    sget v2, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView_fontPath:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 110
    iget-object v3, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    if-nez v0, :cond_1

    .line 114
    sget v0, Lorg/fabiomsr/moneytextview/R$string;->default_format:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_1
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 118
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSeparator:C

    goto :goto_0

    .line 123
    :cond_2
    sget v1, Lorg/fabiomsr/moneytextview/R$string;->default_decimal_separator:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSeparator:C

    .line 126
    :goto_0
    iget-char p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSeparator:C

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 127
    iget-object p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, v0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 129
    iget p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mAmount:F

    invoke-virtual {p0, p1}, Lorg/fabiomsr/moneytextview/MoneyTextView;->setAmount(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 259
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 261
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    invoke-direct {p0, p1, v0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->drawSection(Landroid/graphics/Canvas;Lorg/fabiomsr/moneytextview/MoneyTextView$Section;)V

    .line 262
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    invoke-direct {p0, p1, v0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->drawSection(Landroid/graphics/Canvas;Lorg/fabiomsr/moneytextview/MoneyTextView$Section;)V

    .line 263
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    invoke-direct {p0, p1, v0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->drawSection(Landroid/graphics/Canvas;Lorg/fabiomsr/moneytextview/MoneyTextView$Section;)V

    return-void
.end method

.method public getAmount()F
    .locals 1

    .line 347
    iget v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mAmount:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 137
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 139
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getMinPadding(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getPaddingTop()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getMinVerticalPadding(I)I

    move-result v1

    .line 140
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getPaddingRight()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getMinPadding(I)I

    move-result v2

    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getPaddingBottom()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getMinVerticalPadding(I)I

    move-result v3

    .line 139
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/fabiomsr/moneytextview/MoneyTextView;->setPadding(IIII)V

    .line 142
    invoke-direct {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->createTextFromAmount()V

    .line 143
    invoke-direct {p0, p1, p2}, Lorg/fabiomsr/moneytextview/MoneyTextView;->calculateBounds(II)V

    .line 144
    invoke-direct {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->calculatePositions()V

    .line 145
    iget p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mWidth:I

    iget p2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lorg/fabiomsr/moneytextview/MoneyTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAmount(F)V
    .locals 0

    .line 149
    iput p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mAmount:F

    .line 150
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->requestLayout()V

    return-void
.end method

.method public setAmount(FLjava/lang/String;)V
    .locals 0

    .line 281
    iput p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mAmount:F

    .line 282
    iget-object p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iput-object p2, p1, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->text:Ljava/lang/String;

    .line 283
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->requestLayout()V

    return-void
.end method

.method public setBaseColor(I)V
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iput p1, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->color:I

    .line 333
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->invalidate()V

    return-void
.end method

.method public setBaseTextSize(F)V
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIntegerSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iput p1, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->textSize:F

    .line 313
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->requestLayout()V

    return-void
.end method

.method public setDecimalFormat(Ljava/text/DecimalFormat;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 288
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->requestLayout()V

    return-void
.end method

.method public setDecimalMargin(F)V
    .locals 0

    .line 302
    iput p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalMargin:F

    .line 303
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->requestLayout()V

    return-void
.end method

.method public setDecimalSeparator(C)V
    .locals 0

    .line 292
    iput-char p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSeparator:C

    .line 293
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->requestLayout()V

    return-void
.end method

.method public setDecimalsColor(I)V
    .locals 1

    .line 342
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iput p1, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->color:I

    .line 343
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->invalidate()V

    return-void
.end method

.method public setDecimalsTextSize(F)V
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mDecimalSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iput p1, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->textSize:F

    .line 328
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->requestLayout()V

    return-void
.end method

.method public setIncludeDecimalSeparator(Z)V
    .locals 0

    .line 307
    iput-boolean p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mIncludeDecimalSeparator:Z

    .line 308
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->requestLayout()V

    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iput-object p1, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->text:Ljava/lang/String;

    .line 318
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->requestLayout()V

    return-void
.end method

.method public setSymbolColor(I)V
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iput p1, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->color:I

    .line 338
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->invalidate()V

    return-void
.end method

.method public setSymbolMargin(F)V
    .locals 0

    .line 297
    iput p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolMargin:F

    .line 298
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->requestLayout()V

    return-void
.end method

.method public setSymbolTextSize(F)V
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView;->mSymbolSection:Lorg/fabiomsr/moneytextview/MoneyTextView$Section;

    iput p1, v0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->textSize:F

    .line 323
    invoke-virtual {p0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->requestLayout()V

    return-void
.end method
