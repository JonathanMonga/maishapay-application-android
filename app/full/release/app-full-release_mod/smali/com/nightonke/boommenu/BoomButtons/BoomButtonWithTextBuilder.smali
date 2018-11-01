.class public abstract Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;
.super Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;
.source "BoomButtonWithTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public ellipsize(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextUtils$TruncateAt;",
            ")TT;"
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public highlightedText(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->highlightedText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->highlightedText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->highlightedText:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    iput-object p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedText:Ljava/lang/String;

    .line 74
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateText()V

    :cond_1
    return-object p0
.end method

.method public highlightedTextColor(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 195
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->highlightedTextColor:I

    if-eq v0, p1, :cond_0

    .line 196
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->highlightedTextColor:I

    .line 197
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedTextColor:I

    .line 200
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateText()V

    :cond_0
    return-object p0
.end method

.method public highlightedTextColorRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 216
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->highlightedTextColorRes:I

    if-eq v0, p1, :cond_0

    .line 217
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->highlightedTextColorRes:I

    .line 218
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedTextColorRes:I

    .line 221
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateText()V

    :cond_0
    return-object p0
.end method

.method public highlightedTextRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 90
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->highlightedTextRes:I

    if-eq v0, p1, :cond_0

    .line 91
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->highlightedTextRes:I

    .line 92
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedTextRes:I

    .line 95
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateText()V

    :cond_0
    return-object p0
.end method

.method public maxLines(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 335
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->maxLines:I

    return-object p0
.end method

.method public normalText(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->normalText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->normalText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->normalText:Ljava/lang/String;

    .line 29
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    iput-object p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalText:Ljava/lang/String;

    .line 32
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateText()V

    :cond_1
    return-object p0
.end method

.method public normalTextColor(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 153
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->normalTextColor:I

    if-eq v0, p1, :cond_0

    .line 154
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->normalTextColor:I

    .line 155
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalTextColor:I

    .line 158
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateText()V

    :cond_0
    return-object p0
.end method

.method public normalTextColorRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 174
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->normalTextColorRes:I

    if-eq v0, p1, :cond_0

    .line 175
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->normalTextColorRes:I

    .line 176
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalTextColorRes:I

    .line 179
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateText()V

    :cond_0
    return-object p0
.end method

.method public normalTextRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 48
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->normalTextRes:I

    if-eq v0, p1, :cond_0

    .line 49
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->normalTextRes:I

    .line 50
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalTextRes:I

    .line 53
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateText()V

    :cond_0
    return-object p0
.end method

.method public textGravity(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 346
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->textGravity:I

    return-object p0
.end method

.method public textPadding(Landroid/graphics/Rect;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")TT;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->textPadding:Landroid/graphics/Rect;

    if-eq v0, p1, :cond_0

    .line 307
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->textPadding:Landroid/graphics/Rect;

    .line 308
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iput-object p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textPadding:Landroid/graphics/Rect;

    .line 311
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateTextPadding()V

    :cond_0
    return-object p0
.end method

.method public textRect(Landroid/graphics/Rect;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")TT;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->textRect:Landroid/graphics/Rect;

    if-eq v0, p1, :cond_0

    .line 283
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->textRect:Landroid/graphics/Rect;

    .line 284
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iput-object p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textRect:Landroid/graphics/Rect;

    .line 287
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateTextRect()V

    :cond_0
    return-object p0
.end method

.method public textSize(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 368
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->textSize:I

    return-object p0
.end method

.method public typeface(Landroid/graphics/Typeface;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            ")TT;"
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->typeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public unableText(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->unableText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->unableText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->unableText:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    iput-object p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableText:Ljava/lang/String;

    .line 116
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateText()V

    :cond_1
    return-object p0
.end method

.method public unableTextColor(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 237
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->unableTextColor:I

    if-eq v0, p1, :cond_0

    .line 238
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->unableTextColor:I

    .line 239
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableTextColor:I

    .line 242
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateText()V

    :cond_0
    return-object p0
.end method

.method public unableTextColorRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 258
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->unableTextColorRes:I

    if-eq v0, p1, :cond_0

    .line 259
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->unableTextColorRes:I

    .line 260
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableTextColorRes:I

    .line 263
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateText()V

    :cond_0
    return-object p0
.end method

.method public unableTextRes(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 132
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->unableTextRes:I

    if-eq v0, p1, :cond_0

    .line 133
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->unableTextRes:I

    .line 134
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;->button()Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iput p1, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableTextRes:I

    .line 137
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateText()V

    :cond_0
    return-object p0
.end method
