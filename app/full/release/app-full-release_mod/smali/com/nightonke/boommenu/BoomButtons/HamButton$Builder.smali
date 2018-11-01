.class public Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
.super Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;
.source "HamButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nightonke/boommenu/BoomButtons/HamButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder<",
        "Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 125
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;-><init>()V

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v2

    invoke-static {v1}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->imageRect:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v1}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v2

    const/high16 v3, 0x438c0000    # 280.0f

    invoke-static {v3}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lcom/nightonke/boommenu/Util;->dp2px(F)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->textRect:Landroid/graphics/Rect;

    const v0, 0x800013

    .line 128
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->textGravity:I

    const/16 v0, 0xf

    .line 129
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->textSize:I

    return-void
.end method


# virtual methods
.method public bridge synthetic build(Landroid/content/Context;)Lcom/nightonke/boommenu/BoomButtons/BoomButton;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->build(Landroid/content/Context;)Lcom/nightonke/boommenu/BoomButtons/HamButton;

    move-result-object p1

    return-object p1
.end method

.method public build(Landroid/content/Context;)Lcom/nightonke/boommenu/BoomButtons/HamButton;
    .locals 2

    .line 559
    new-instance v0, Lcom/nightonke/boommenu/BoomButtons/HamButton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/nightonke/boommenu/BoomButtons/HamButton;-><init>(Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;Landroid/content/Context;Lcom/nightonke/boommenu/BoomButtons/HamButton$1;)V

    .line 560
    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->weakReferenceButton(Lcom/nightonke/boommenu/BoomButtons/BoomButton;)Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    return-object v0
.end method

.method public buttonCornerRadius(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 0

    .line 527
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->buttonCornerRadius:I

    return-object p0
.end method

.method public buttonHeight(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 0

    .line 516
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->buttonHeight:I

    return-object p0
.end method

.method public buttonWidth(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 0

    .line 505
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->buttonWidth:I

    return-object p0
.end method

.method public containsSubText(Z)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->containsSubText:Z

    return-object p0
.end method

.method public getButtonHeight()I
    .locals 1

    .line 546
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->buttonHeight:I

    return v0
.end method

.method public getButtonWidth()I
    .locals 1

    .line 537
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->buttonWidth:I

    return v0
.end method

.method public subEllipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public subHighlightedText(Ljava/lang/String;)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subHighlightedText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subHighlightedText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subHighlightedText:Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    iput-object p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subHighlightedText:Ljava/lang/String;

    .line 200
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateSubText()V

    :cond_1
    return-object p0
.end method

.method public subHighlightedTextColor(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 1

    .line 321
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subHighlightedTextColor:I

    if-eq v0, p1, :cond_0

    .line 322
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subHighlightedTextColor:I

    .line 323
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subHighlightedTextColor:I

    .line 326
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateSubText()V

    :cond_0
    return-object p0
.end method

.method public subHighlightedTextColorRes(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 1

    .line 342
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subHighlightedTextColorRes:I

    if-eq v0, p1, :cond_0

    .line 343
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subHighlightedTextColorRes:I

    .line 344
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subHighlightedTextColorRes:I

    .line 347
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateSubText()V

    :cond_0
    return-object p0
.end method

.method public subHighlightedTextRes(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 1

    .line 216
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subHighlightedTextRes:I

    if-eq v0, p1, :cond_0

    .line 217
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subHighlightedTextRes:I

    .line 218
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subHighlightedTextRes:I

    .line 221
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateSubText()V

    :cond_0
    return-object p0
.end method

.method public subMaxLines(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 0

    .line 461
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subMaxLines:I

    return-object p0
.end method

.method public subNormalText(Ljava/lang/String;)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subNormalText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subNormalText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subNormalText:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    iput-object p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subNormalText:Ljava/lang/String;

    .line 158
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateSubText()V

    :cond_1
    return-object p0
.end method

.method public subNormalTextColor(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 1

    .line 279
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subNormalTextColor:I

    if-eq v0, p1, :cond_0

    .line 280
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subNormalTextColor:I

    .line 281
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subNormalTextColor:I

    .line 284
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateSubText()V

    :cond_0
    return-object p0
.end method

.method public subNormalTextColorRes(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 1

    .line 300
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subNormalTextColorRes:I

    if-eq v0, p1, :cond_0

    .line 301
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subNormalTextColorRes:I

    .line 302
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subNormalTextColorRes:I

    .line 305
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateSubText()V

    :cond_0
    return-object p0
.end method

.method public subNormalTextRes(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 1

    .line 174
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subNormalTextRes:I

    if-eq v0, p1, :cond_0

    .line 175
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subNormalTextRes:I

    .line 176
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subNormalTextRes:I

    .line 179
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateSubText()V

    :cond_0
    return-object p0
.end method

.method public subTextGravity(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 0

    .line 472
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subTextGravity:I

    return-object p0
.end method

.method public subTextPadding(Landroid/graphics/Rect;)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subTextPadding:Landroid/graphics/Rect;

    if-eq v0, p1, :cond_0

    .line 433
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subTextPadding:Landroid/graphics/Rect;

    .line 434
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    iput-object p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextPadding:Landroid/graphics/Rect;

    .line 437
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateSubTextPadding()V

    :cond_0
    return-object p0
.end method

.method public subTextRect(Landroid/graphics/Rect;)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subTextRect:Landroid/graphics/Rect;

    if-eq v0, p1, :cond_0

    .line 409
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subTextRect:Landroid/graphics/Rect;

    .line 410
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iput-object p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextRect:Landroid/graphics/Rect;

    .line 413
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateSubTextRect()V

    :cond_0
    return-object p0
.end method

.method public subTextSize(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 0

    .line 494
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subTextSize:I

    return-object p0
.end method

.method public subTypeface(Landroid/graphics/Typeface;)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public subUnableText(Ljava/lang/String;)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subUnableText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subUnableText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subUnableText:Ljava/lang/String;

    .line 239
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 241
    iput-object p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableText:Ljava/lang/String;

    .line 242
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateSubText()V

    :cond_1
    return-object p0
.end method

.method public subUnableTextColor(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 1

    .line 363
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subUnableTextColor:I

    if-eq v0, p1, :cond_0

    .line 364
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subUnableTextColor:I

    .line 365
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableTextColor:I

    .line 368
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateSubText()V

    :cond_0
    return-object p0
.end method

.method public subUnableTextColorRes(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 1

    .line 384
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subUnableTextColorRes:I

    if-eq v0, p1, :cond_0

    .line 385
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subUnableTextColorRes:I

    .line 386
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableTextColorRes:I

    .line 389
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateSubText()V

    :cond_0
    return-object p0
.end method

.method public subUnableTextRes(I)Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    .locals 1

    .line 258
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subUnableTextRes:I

    if-eq v0, p1, :cond_0

    .line 259
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->subUnableTextRes:I

    .line 260
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableTextRes:I

    .line 263
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateSubText()V

    :cond_0
    return-object p0
.end method
