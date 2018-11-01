.class public Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;
.super Ljava/lang/Object;
.source "IconicsAttrsExtractor.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEF_COLOR:I = -0x80000000

.field private static final DEF_SIZE:I = -0x1


# instance fields
.field private mBackgroundColorId:I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field private mBackgroundContourColorId:I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field private mBackgroundContourWidthId:I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field private mColorsId:I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mContourColorId:I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field private mContourWidthId:I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field private mCornerRadiusId:I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field private mIconId:I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field private mOffsetXId:I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field private mOffsetYId:I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field private mPaddingId:I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field private mSizeId:I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field private final mTypedArray:Landroid/content/res/TypedArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mTypedArray:Landroid/content/res/TypedArray;

    return-void
.end method

.method private static copyIfCan(Lcom/mikepenz/iconics/IconicsDrawable;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0
    .param p0    # Lcom/mikepenz/iconics/IconicsDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->clone()Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createIfNeeds(Lcom/mikepenz/iconics/IconicsDrawable;Landroid/content/Context;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0
    .param p0    # Lcom/mikepenz/iconics/IconicsDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    .line 216
    new-instance p0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-direct {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object p0
.end method

.method private extract(Lcom/mikepenz/iconics/IconicsDrawable;ZZ)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 4
    .param p1    # Lcom/mikepenz/iconics/IconicsDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 147
    invoke-static {p1}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->copyIfCan(Lcom/mikepenz/iconics/IconicsDrawable;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mTypedArray:Landroid/content/res/TypedArray;

    iget v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->createIfNeeds(Lcom/mikepenz/iconics/IconicsDrawable;Landroid/content/Context;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Ljava/lang/String;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mTypedArray:Landroid/content/res/TypedArray;

    iget v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mColorsId:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->createIfNeeds(Lcom/mikepenz/iconics/IconicsDrawable;Landroid/content/Context;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->color(Landroid/content/res/ColorStateList;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mTypedArray:Landroid/content/res/TypedArray;

    iget v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mSizeId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 159
    iget-object v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->createIfNeeds(Lcom/mikepenz/iconics/IconicsDrawable;Landroid/content/Context;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->sizePx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mTypedArray:Landroid/content/res/TypedArray;

    iget v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mPaddingId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 163
    iget-object v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->createIfNeeds(Lcom/mikepenz/iconics/IconicsDrawable;Landroid/content/Context;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mTypedArray:Landroid/content/res/TypedArray;

    iget v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContourColorId:I

    const/high16 v3, -0x80000000

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 167
    iget-object v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->createIfNeeds(Lcom/mikepenz/iconics/IconicsDrawable;Landroid/content/Context;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->contourColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mTypedArray:Landroid/content/res/TypedArray;

    iget v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContourWidthId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 171
    iget-object v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->createIfNeeds(Lcom/mikepenz/iconics/IconicsDrawable;Landroid/content/Context;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->contourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mTypedArray:Landroid/content/res/TypedArray;

    iget v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mBackgroundColorId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 175
    iget-object v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->createIfNeeds(Lcom/mikepenz/iconics/IconicsDrawable;Landroid/content/Context;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    .line 177
    :cond_6
    iget-object v0, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mTypedArray:Landroid/content/res/TypedArray;

    iget v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mCornerRadiusId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 179
    iget-object v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->createIfNeeds(Lcom/mikepenz/iconics/IconicsDrawable;Landroid/content/Context;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->roundedCornersPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    .line 181
    :cond_7
    iget-object v0, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mTypedArray:Landroid/content/res/TypedArray;

    iget v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mBackgroundContourColorId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    if-eq v0, v3, :cond_8

    .line 183
    iget-object v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->createIfNeeds(Lcom/mikepenz/iconics/IconicsDrawable;Landroid/content/Context;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundContourColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    .line 185
    :cond_8
    iget-object v0, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mTypedArray:Landroid/content/res/TypedArray;

    iget v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mBackgroundContourWidthId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eq v0, v2, :cond_9

    .line 187
    iget-object v1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->createIfNeeds(Lcom/mikepenz/iconics/IconicsDrawable;Landroid/content/Context;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundContourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    :cond_9
    if-eqz p2, :cond_b

    .line 190
    iget-object p2, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mTypedArray:Landroid/content/res/TypedArray;

    iget v0, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mOffsetYId:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-eq p2, v2, :cond_a

    .line 192
    iget-object v0, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->createIfNeeds(Lcom/mikepenz/iconics/IconicsDrawable;Landroid/content/Context;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mikepenz/iconics/IconicsDrawable;->iconOffsetYPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    .line 194
    :cond_a
    iget-object p2, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mTypedArray:Landroid/content/res/TypedArray;

    iget v0, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mOffsetXId:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-eq p2, v2, :cond_b

    .line 196
    iget-object v0, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->createIfNeeds(Lcom/mikepenz/iconics/IconicsDrawable;Landroid/content/Context;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mikepenz/iconics/IconicsDrawable;->iconOffsetXPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    :cond_b
    if-eqz p3, :cond_c

    .line 200
    iget-object p2, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->createIfNeeds(Lcom/mikepenz/iconics/IconicsDrawable;Landroid/content/Context;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    :cond_c
    return-object p1
.end method


# virtual methods
.method public backgroundColorId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .line 95
    iput p1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mBackgroundColorId:I

    return-object p0
.end method

.method public backgroundContourColorId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .line 105
    iput p1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mBackgroundContourColorId:I

    return-object p0
.end method

.method public backgroundContourWidthId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .line 110
    iput p1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mBackgroundContourWidthId:I

    return-object p0
.end method

.method public colorsId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .line 75
    iput p1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mColorsId:I

    return-object p0
.end method

.method public contourColorId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .line 85
    iput p1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContourColorId:I

    return-object p0
.end method

.method public contourWidthId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .line 90
    iput p1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mContourWidthId:I

    return-object p0
.end method

.method public cornerRadiusId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .line 100
    iput p1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mCornerRadiusId:I

    return-object p0
.end method

.method public extract()Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, v1, v0, v0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->extract(Lcom/mikepenz/iconics/IconicsDrawable;ZZ)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    return-object v0
.end method

.method public extract(Lcom/mikepenz/iconics/IconicsDrawable;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # Lcom/mikepenz/iconics/IconicsDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, v0, v0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->extract(Lcom/mikepenz/iconics/IconicsDrawable;ZZ)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public extractNonNull()Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 127
    invoke-direct {p0, v0, v1, v2}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->extract(Lcom/mikepenz/iconics/IconicsDrawable;ZZ)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    return-object v0
.end method

.method public extractWithOffsets()Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, v0, v1, v2}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->extract(Lcom/mikepenz/iconics/IconicsDrawable;ZZ)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    return-object v0
.end method

.method public iconId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .line 65
    iput p1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mIconId:I

    return-object p0
.end method

.method public offsetXId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .line 115
    iput p1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mOffsetXId:I

    return-object p0
.end method

.method public offsetYId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .line 120
    iput p1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mOffsetYId:I

    return-object p0
.end method

.method public paddingId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .line 80
    iput p1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mPaddingId:I

    return-object p0
.end method

.method public sizeId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .line 70
    iput p1, p0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->mSizeId:I

    return-object p0
.end method
