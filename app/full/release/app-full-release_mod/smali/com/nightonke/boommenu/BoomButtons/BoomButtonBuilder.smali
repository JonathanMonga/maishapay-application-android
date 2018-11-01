.class public abstract Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;
.super Ljava/lang/Object;
.source "BoomButtonBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private boomButtonWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/nightonke/boommenu/BoomButtons/BoomButton;",
            ">;"
        }
    .end annotation
.end field

.field buttonCornerRadius:I

.field buttonHeight:I

.field buttonRadius:I

.field buttonWidth:I

.field containsSubText:Z

.field ellipsize:Landroid/text/TextUtils$TruncateAt;

.field highlightedColor:I

.field highlightedColorRes:I

.field highlightedImageDrawable:Landroid/graphics/drawable/Drawable;

.field highlightedImageRes:I

.field highlightedText:Ljava/lang/String;

.field highlightedTextColor:I

.field highlightedTextColorRes:I

.field highlightedTextRes:I

.field imagePadding:Landroid/graphics/Rect;

.field imageRect:Landroid/graphics/Rect;

.field index:I

.field isRound:Z

.field listener:Lcom/nightonke/boommenu/BoomButtons/InnerOnBoomButtonClickListener;

.field maxLines:I

.field normalColor:I

.field normalColorRes:I

.field normalImageDrawable:Landroid/graphics/drawable/Drawable;

.field normalImageRes:I

.field normalText:Ljava/lang/String;

.field normalTextColor:I

.field normalTextColorRes:I

.field normalTextRes:I

.field onBMClickListener:Lcom/nightonke/boommenu/BoomButtons/OnBMClickListener;

.field private piece:Lcom/nightonke/boommenu/Piece/BoomPiece;

.field pieceColor:Ljava/lang/Integer;

.field pieceColorRes:I

.field rippleEffect:Z

.field rotateImage:Z

.field rotateText:Z

.field shadowColor:I

.field shadowCornerRadius:I

.field shadowEffect:Z

.field shadowOffsetX:I

.field shadowOffsetY:I

.field shadowRadius:I

.field subEllipsize:Landroid/text/TextUtils$TruncateAt;

.field subHighlightedText:Ljava/lang/String;

.field subHighlightedTextColor:I

.field subHighlightedTextColorRes:I

.field subHighlightedTextRes:I

.field subMaxLines:I

.field subNormalText:Ljava/lang/String;

.field subNormalTextColor:I

.field subNormalTextColorRes:I

.field subNormalTextRes:I

.field subTextGravity:I

.field subTextPadding:Landroid/graphics/Rect;

.field subTextRect:Landroid/graphics/Rect;

.field subTextSize:I

.field subTypeface:Landroid/graphics/Typeface;

.field subUnableText:Ljava/lang/String;

.field subUnableTextColor:I

.field subUnableTextColorRes:I

.field subUnableTextRes:I

.field textGravity:I

.field textHeight:I

.field textPadding:Landroid/graphics/Rect;

.field textRect:Landroid/graphics/Rect;

.field textSize:I

.field textTopMargin:I

.field textWidth:I

.field typeface:Landroid/graphics/Typeface;

.field unable:Z

.field unableColor:I

.field unableColorRes:I

.field unableImageDrawable:Landroid/graphics/drawable/Drawable;

.field unableImageRes:I

.field unableText:Ljava/lang/String;

.field unableTextColor:I

.field unableTextColorRes:I

.field unableTextRes:I


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->piece:Lcom/nightonke/boommenu/Piece/BoomPiece;

    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->index:I

    const/4 v2, 0x1

    .line 33
    iput-boolean v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->rotateImage:Z

    .line 34
    iput-boolean v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->rotateText:Z

    .line 35
    iput-boolean v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->containsSubText:Z

    .line 38
    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColor:Ljava/lang/Integer;

    const/4 v3, 0x0

    .line 39
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColorRes:I

    .line 42
    iput-boolean v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowEffect:Z

    const/4 v4, 0x0

    .line 43
    invoke-static {v4}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v4

    iput v4, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowOffsetX:I

    const/high16 v4, 0x40400000    # 3.0f

    .line 44
    invoke-static {v4}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v4

    iput v4, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowOffsetY:I

    const/high16 v4, 0x41000000    # 8.0f

    .line 45
    invoke-static {v4}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v4

    iput v4, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowRadius:I

    const-string v4, "#88757575"

    .line 46
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowColor:I

    const/high16 v4, 0x40a00000    # 5.0f

    .line 47
    invoke-static {v4}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v5

    iput v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowCornerRadius:I

    .line 50
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalImageRes:I

    .line 51
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedImageRes:I

    .line 52
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableImageRes:I

    .line 53
    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    new-instance v5, Landroid/graphics/Rect;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v7

    invoke-static {v6}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v6

    const/high16 v8, 0x428c0000    # 70.0f

    invoke-static {v8}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v9

    invoke-static {v8}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v10

    invoke-direct {v5, v7, v6, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->imageRect:Landroid/graphics/Rect;

    .line 57
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->imagePadding:Landroid/graphics/Rect;

    .line 60
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalTextRes:I

    .line 61
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedTextRes:I

    .line 62
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableTextRes:I

    .line 66
    iput v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalTextColor:I

    .line 67
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalTextColorRes:I

    .line 68
    iput v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedTextColor:I

    .line 69
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedTextColorRes:I

    .line 70
    iput v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableTextColor:I

    .line 71
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableTextColorRes:I

    .line 72
    new-instance v5, Landroid/graphics/Rect;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v6}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v6

    const/high16 v7, 0x42500000    # 52.0f

    invoke-static {v7}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v7

    const/high16 v9, 0x42820000    # 65.0f

    invoke-static {v9}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v9

    const/high16 v10, 0x42900000    # 72.0f

    invoke-static {v10}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v10

    invoke-direct {v5, v6, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->textRect:Landroid/graphics/Rect;

    .line 73
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->textPadding:Landroid/graphics/Rect;

    .line 74
    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->typeface:Landroid/graphics/Typeface;

    .line 75
    iput v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->maxLines:I

    const/16 v5, 0x11

    .line 76
    iput v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->textGravity:I

    .line 77
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    iput-object v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    const/16 v5, 0xa

    .line 78
    iput v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->textSize:I

    .line 81
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subNormalTextRes:I

    .line 82
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subHighlightedTextRes:I

    .line 83
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subUnableTextRes:I

    .line 87
    iput v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subNormalTextColor:I

    .line 88
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subNormalTextColorRes:I

    .line 89
    iput v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subHighlightedTextColor:I

    .line 90
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subHighlightedTextColorRes:I

    .line 91
    iput v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subUnableTextColor:I

    .line 92
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subUnableTextColorRes:I

    .line 93
    new-instance v1, Landroid/graphics/Rect;

    invoke-static {v8}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v6

    const/high16 v7, 0x420c0000    # 35.0f

    invoke-static {v7}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v7

    const/high16 v8, 0x438c0000    # 280.0f

    invoke-static {v8}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v8

    const/high16 v9, 0x425c0000    # 55.0f

    invoke-static {v9}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v9

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subTextRect:Landroid/graphics/Rect;

    .line 94
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subTextPadding:Landroid/graphics/Rect;

    .line 95
    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subTypeface:Landroid/graphics/Typeface;

    .line 96
    iput v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subMaxLines:I

    const v0, 0x800013

    .line 97
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subTextGravity:I

    .line 98
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 99
    iput v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subTextSize:I

    .line 102
    invoke-static {v4}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->textTopMargin:I

    const/high16 v0, 0x42a00000    # 80.0f

    .line 103
    invoke-static {v0}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->textWidth:I

    const/high16 v0, 0x41a00000    # 20.0f

    .line 104
    invoke-static {v0}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->textHeight:I

    .line 107
    iput-boolean v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->rippleEffect:Z

    .line 108
    invoke-static {}, Lcom/nightonke/boommenu/Util;->getColor()I

    move-result v0

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalColor:I

    .line 109
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalColorRes:I

    .line 110
    invoke-static {}, Lcom/nightonke/boommenu/Util;->getColor()I

    move-result v0

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedColor:I

    .line 111
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedColorRes:I

    .line 112
    invoke-static {}, Lcom/nightonke/boommenu/Util;->getColor()I

    move-result v0

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableColor:I

    .line 113
    iput v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableColorRes:I

    .line 114
    iput-boolean v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unable:Z

    const/high16 v0, 0x42200000    # 40.0f

    .line 115
    invoke-static {v0}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->buttonRadius:I

    const/high16 v0, 0x43960000    # 300.0f

    .line 116
    invoke-static {v0}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->buttonWidth:I

    const/high16 v0, 0x42700000    # 60.0f

    .line 117
    invoke-static {v0}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->buttonHeight:I

    .line 118
    invoke-static {v4}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->buttonCornerRadius:I

    .line 119
    iput-boolean v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->isRound:Z

    return-void
.end method


# virtual methods
.method public abstract build(Landroid/content/Context;)Lcom/nightonke/boommenu/BoomButtons/BoomButton;
.end method

.method public button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->boomButtonWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->boomButtonWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public highlightedColor(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 507
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedColor:I

    if-eq v0, p1, :cond_0

    .line 508
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedColor:I

    .line 509
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedColor:I

    .line 512
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateButtonDrawable()V

    :cond_0
    return-object p0
.end method

.method public highlightedColorRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 528
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedColorRes:I

    if-eq v0, p1, :cond_0

    .line 529
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedColorRes:I

    .line 530
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 532
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedColorRes:I

    .line 533
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateButtonDrawable()V

    :cond_0
    return-object p0
.end method

.method public highlightedImageDrawable(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 323
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 324
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iput-object p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 327
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateImage()V

    :cond_0
    return-object p0
.end method

.method public highlightedImageRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 343
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedImageRes:I

    if-eq v0, p1, :cond_0

    .line 344
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedImageRes:I

    .line 345
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedImageRes:I

    .line 348
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateImage()V

    :cond_0
    return-object p0
.end method

.method public imagePadding(Landroid/graphics/Rect;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")TT;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->imagePadding:Landroid/graphics/Rect;

    if-eq v0, p1, :cond_0

    .line 434
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->imagePadding:Landroid/graphics/Rect;

    .line 435
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iput-object p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imagePadding:Landroid/graphics/Rect;

    .line 438
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateImagePadding()V

    :cond_0
    return-object p0
.end method

.method public imageRect(Landroid/graphics/Rect;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")TT;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->imageRect:Landroid/graphics/Rect;

    if-eq v0, p1, :cond_0

    .line 410
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->imageRect:Landroid/graphics/Rect;

    .line 411
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iput-object p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imageRect:Landroid/graphics/Rect;

    .line 414
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateImageRect()V

    :cond_0
    return-object p0
.end method

.method public index(I)Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;
    .locals 0

    .line 167
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->index:I

    return-object p0
.end method

.method public innerListener(Lcom/nightonke/boommenu/BoomButtons/InnerOnBoomButtonClickListener;)Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->listener:Lcom/nightonke/boommenu/BoomButtons/InnerOnBoomButtonClickListener;

    return-object p0
.end method

.method public listener(Lcom/nightonke/boommenu/BoomButtons/OnBMClickListener;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nightonke/boommenu/BoomButtons/OnBMClickListener;",
            ")TT;"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->onBMClickListener:Lcom/nightonke/boommenu/BoomButtons/OnBMClickListener;

    return-object p0
.end method

.method public normalColor(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 465
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalColor:I

    if-eq v0, p1, :cond_0

    .line 466
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalColor:I

    .line 467
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColor:I

    .line 470
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateButtonDrawable()V

    :cond_0
    return-object p0
.end method

.method public normalColorRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 486
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalColorRes:I

    if-eq v0, p1, :cond_0

    .line 487
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalColorRes:I

    .line 488
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColorRes:I

    .line 491
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateButtonDrawable()V

    :cond_0
    return-object p0
.end method

.method public normalImageDrawable(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 281
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 282
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iput-object p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 285
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateImage()V

    :cond_0
    return-object p0
.end method

.method public normalImageRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 301
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalImageRes:I

    if-eq v0, p1, :cond_0

    .line 302
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalImageRes:I

    .line 303
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalImageRes:I

    .line 306
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateImage()V

    :cond_0
    return-object p0
.end method

.method public piece(Lcom/nightonke/boommenu/Piece/BoomPiece;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->piece:Lcom/nightonke/boommenu/Piece/BoomPiece;

    return-void
.end method

.method public pieceColor(Landroid/content/Context;)I
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColor:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColorRes:I

    if-nez v0, :cond_1

    .line 131
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableColorRes:I

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableColor:I

    invoke-static {p1, v0, v1}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/Context;II)I

    move-result p1

    return p1

    .line 132
    :cond_0
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalColorRes:I

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalColor:I

    invoke-static {p1, v0, v1}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/Context;II)I

    move-result p1

    return p1

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColor:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColorRes:I

    invoke-static {p1, v0}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    .line 134
    :cond_2
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColorRes:I

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method public pieceColor(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 592
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColor:Ljava/lang/Integer;

    .line 593
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 594
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColor:Ljava/lang/Integer;

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->piece:Lcom/nightonke/boommenu/Piece/BoomPiece;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->piece:Lcom/nightonke/boommenu/Piece/BoomPiece;

    invoke-virtual {v0, p1}, Lcom/nightonke/boommenu/Piece/BoomPiece;->setColor(I)V

    :cond_2
    return-object p0
.end method

.method public pieceColorRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 610
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColorRes:I

    if-eq v0, p1, :cond_1

    .line 611
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColorRes:I

    .line 612
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 613
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColorRes:I

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->piece:Lcom/nightonke/boommenu/Piece/BoomPiece;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->piece:Lcom/nightonke/boommenu/Piece/BoomPiece;

    invoke-virtual {v0, p1}, Lcom/nightonke/boommenu/Piece/BoomPiece;->setColorRes(I)V

    :cond_1
    return-object p0
.end method

.method public rippleEffect(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 451
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->rippleEffect:Z

    return-object p0
.end method

.method public rotateImage(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 200
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->rotateImage:Z

    return-object p0
.end method

.method public setUnable(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unable:Z

    return-void
.end method

.method public shadowColor(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 266
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowColor:I

    return-object p0
.end method

.method public shadowCornerRadius(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 255
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowCornerRadius:I

    return-object p0
.end method

.method public shadowEffect(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 211
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowEffect:Z

    return-object p0
.end method

.method public shadowOffsetX(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 222
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowOffsetX:I

    return-object p0
.end method

.method public shadowOffsetY(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 233
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowOffsetY:I

    return-object p0
.end method

.method public shadowRadius(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 244
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowRadius:I

    return-object p0
.end method

.method public unable(Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 629
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unable:Z

    if-eq v0, p1, :cond_0

    .line 630
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unable:Z

    .line 631
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 633
    iput-boolean p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    .line 634
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateUnable()V

    .line 635
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->piece:Lcom/nightonke/boommenu/Piece/BoomPiece;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->piece:Lcom/nightonke/boommenu/Piece/BoomPiece;

    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nightonke/boommenu/Piece/BoomPiece;->setColor(I)V

    :cond_0
    return-object p0
.end method

.method public unableColor(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 549
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableColor:I

    if-eq v0, p1, :cond_0

    .line 550
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableColor:I

    .line 551
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColor:I

    .line 554
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateButtonDrawable()V

    :cond_0
    return-object p0
.end method

.method public unableColorRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 570
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableColorRes:I

    if-eq v0, p1, :cond_0

    .line 571
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableColorRes:I

    .line 572
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 574
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColorRes:I

    .line 575
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateButtonDrawable()V

    :cond_0
    return-object p0
.end method

.method public unableImageDrawable(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 365
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 366
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iput-object p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 369
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateImage()V

    :cond_0
    return-object p0
.end method

.method public unableImageRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 385
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableImageRes:I

    if-eq v0, p1, :cond_0

    .line 386
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableImageRes:I

    .line 387
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableImageRes:I

    .line 390
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateImage()V

    :cond_0
    return-object p0
.end method

.method weakReferenceButton(Lcom/nightonke/boommenu/BoomButtons/BoomButton;)Lcom/nightonke/boommenu/BoomButtons/BoomButton;
    .locals 1

    .line 147
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->boomButtonWeakReference:Ljava/lang/ref/WeakReference;

    return-object p1
.end method
