.class public Lcom/mikepenz/iconics/IconicsDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IconicsDrawable.java"


# static fields
.field public static final TOOLBAR_ICON_PADDING:I = 0x1
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field public static final TOOLBAR_ICON_SIZE:I = 0x18
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field


# instance fields
.field private mAlpha:I

.field private mBackgroundColor:I

.field private mBackgroundContourColor:I

.field private mBackgroundContourPaint:Landroid/graphics/Paint;

.field private mBackgroundContourWidth:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mContext:Landroid/content/Context;

.field private mContourColor:I

.field private mContourPaint:Landroid/graphics/Paint;

.field private mContourWidth:I

.field private mDrawBackgroundContour:Z

.field private mDrawContour:Z

.field private mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

.field private mIconColor:Landroid/content/res/ColorStateList;

.field private mIconOffsetX:I

.field private mIconOffsetY:I

.field private mIconPadding:I

.field private mIconPaint:Landroid/graphics/Paint;

.field private mPaddingBounds:Landroid/graphics/Rect;

.field private mPath:Landroid/graphics/Path;

.field private mPathBounds:Landroid/graphics/RectF;

.field private mPlainIcon:Ljava/lang/String;

.field private mRespectFontBounds:Z

.field private mRoundedCornerRx:I

.field private mRoundedCornerRy:I

.field private mSizeX:I

.field private mSizeY:I

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintFilter:Landroid/graphics/ColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 128
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    .line 86
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRespectFontBounds:Z

    .line 100
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 101
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    .line 112
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetX:I

    .line 113
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetY:I

    const/16 v0, 0xff

    .line 115
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    .line 124
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    .line 130
    invoke-direct {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->prepare()V

    const/16 p1, 0x20

    .line 132
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Ljava/lang/Character;)Lcom/mikepenz/iconics/IconicsDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mikepenz/iconics/typeface/IIcon;)V
    .locals 2

    .line 155
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    .line 86
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRespectFontBounds:Z

    .line 100
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 101
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    .line 112
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetX:I

    .line 113
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetY:I

    const/16 v0, 0xff

    .line 115
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    .line 124
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    .line 157
    invoke-direct {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->prepare()V

    .line 158
    invoke-virtual {p0, p2}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/iconics/IconicsDrawable;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/mikepenz/iconics/typeface/ITypeface;Lcom/mikepenz/iconics/typeface/IIcon;)V
    .locals 2

    .line 161
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    .line 86
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRespectFontBounds:Z

    .line 100
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 101
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    .line 112
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetX:I

    .line 113
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetY:I

    const/16 v0, 0xff

    .line 115
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    .line 124
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    .line 163
    invoke-direct {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->prepare()V

    .line 164
    invoke-virtual {p0, p2, p3}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Lcom/mikepenz/iconics/typeface/ITypeface;Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/iconics/IconicsDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Character;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    .line 86
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRespectFontBounds:Z

    .line 100
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 101
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    .line 112
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetX:I

    .line 113
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetY:I

    const/16 v0, 0xff

    .line 115
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    .line 124
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    .line 137
    invoke-direct {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->prepare()V

    .line 139
    invoke-virtual {p0, p2}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Ljava/lang/Character;)Lcom/mikepenz/iconics/IconicsDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    .line 86
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRespectFontBounds:Z

    .line 100
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 101
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    .line 112
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetX:I

    .line 113
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetY:I

    const/16 v0, 0xff

    .line 115
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    .line 124
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    .line 144
    invoke-direct {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->prepare()V

    const/4 v0, 0x3

    .line 147
    :try_start_0
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mikepenz/iconics/Iconics;->findFont(Landroid/content/Context;Ljava/lang/String;)Lcom/mikepenz/iconics/typeface/ITypeface;

    move-result-object p1

    const-string v0, "-"

    const-string v1, "_"

    .line 148
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :try_start_1
    invoke-interface {p1, v0}, Lcom/mikepenz/iconics/typeface/ITypeface;->getIcon(Ljava/lang/String;)Lcom/mikepenz/iconics/typeface/IIcon;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/iconics/IconicsDrawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object p2, v0

    .line 151
    :catch_1
    sget-object p1, Lcom/mikepenz/iconics/Iconics;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong icon name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private offsetIcon(Landroid/graphics/Rect;)V
    .locals 3

    .line 1191
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 1192
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 1194
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    .line 1195
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v1

    .line 1197
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetX:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetY:I

    int-to-float v2, v2

    add-float/2addr p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Path;->offset(FF)V

    return-void
.end method

.method private prepare()V
    .locals 3

    .line 1122
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    .line 1123
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1124
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1125
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 1126
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1128
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 1130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourPaint:Landroid/graphics/Paint;

    .line 1131
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundContourPaint:Landroid/graphics/Paint;

    .line 1134
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundContourPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1136
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    .line 1138
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    .line 1139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPaddingBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private updateIconColor()V
    .locals 4

    .line 1207
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->getState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1208
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 1209
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 1210
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 1212
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 1213
    iget-object v2, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1214
    iget-object v2, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1218
    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    .line 1219
    iget v2, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    if-eq v0, v2, :cond_1

    .line 1220
    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->setAlpha(I)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 1222
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    :cond_2
    :goto_1
    return-void
.end method

.method private updatePaddingBounds(Landroid/graphics/Rect;)V
    .locals 5

    .line 1148
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    mul-int/lit8 v0, v0, 0x2

    .line 1149
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    mul-int/lit8 v0, v0, 0x2

    .line 1150
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPaddingBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    sub-int/2addr v3, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    sub-int/2addr p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method private updateTextSize(Landroid/graphics/Rect;)V
    .locals 10

    .line 1165
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-boolean v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRespectFontBounds:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 1166
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1168
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    invoke-interface {v1}, Lcom/mikepenz/iconics/typeface/IIcon;->getCharacter()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPlainIcon:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1169
    :goto_1
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v8, v4

    iget-object v9, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    move-object v4, v1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 1170
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1172
    iget-boolean v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRespectFontBounds:Z

    if-nez v3, :cond_3

    .line 1173
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPaddingBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    .line 1174
    iget-object v4, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPaddingBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    cmpg-float v5, v3, v4

    if-gez v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    mul-float/2addr v0, v3

    .line 1178
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1180
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float v8, p1

    iget-object v9, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    move-object v4, v1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 1181
    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    :cond_3
    return-void
.end method

.method private updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1236
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 1237
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public actionBar()Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    const/16 v0, 0x18

    .line 544
    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->sizeDp(I)Lcom/mikepenz/iconics/IconicsDrawable;

    const/4 v0, 0x1

    .line 545
    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingDp(I)Lcom/mikepenz/iconics/IconicsDrawable;

    return-object p0
.end method

.method public alpha(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0

    .line 954
    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->setAlpha(I)V

    return-object p0
.end method

.method public backgroundColor(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 713
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 714
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundColor:I

    const/4 p1, 0x0

    .line 715
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 716
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    return-object p0
.end method

.method public backgroundColorRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 727
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public backgroundContourColor(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 659
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 660
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 661
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 662
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundContourPaint:Landroid/graphics/Paint;

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 663
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundContourPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 664
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundContourColor:I

    .line 665
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public backgroundContourColorRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 676
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundContourColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public backgroundContourWidthDp(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    .line 883
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundContourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public backgroundContourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 893
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundContourWidth:I

    .line 894
    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundContourPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundContourWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x1

    .line 895
    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->drawBackgroundContour(Z)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 896
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public backgroundContourWidthRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 873
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundContourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public clearColorFilter()V
    .locals 1

    const/4 v0, 0x0

    .line 1115
    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1116
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-void
.end method

.method public clone()Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 2

    .line 254
    new-instance v0, Lcom/mikepenz/iconics/IconicsDrawable;

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    .line 255
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 256
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->roundedCornersRxPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    .line 257
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->roundedCornersRyPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    .line 258
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->sizePxX(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    .line 259
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->sizePxY(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetX:I

    .line 260
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->iconOffsetXPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetY:I

    .line 261
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->iconOffsetYPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourColor:I

    .line 262
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->contourColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourWidth:I

    .line 263
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->contourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundColor:I

    .line 264
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundContourColor:I

    .line 265
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundContourColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundContourWidth:I

    .line 266
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundContourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconColor:Landroid/content/res/ColorStateList;

    .line 267
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->color(Landroid/content/res/ColorStateList;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    .line 268
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->alpha(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawContour:Z

    .line 269
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->drawContour(Z)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawBackgroundContour:Z

    .line 270
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->drawBackgroundContour(Z)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    .line 271
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->typeface(Landroid/graphics/Typeface;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/iconics/IconicsDrawable;

    goto :goto_0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPlainIcon:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPlainIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->iconText(Ljava/lang/String;)Lcom/mikepenz/iconics/IconicsDrawable;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->clone()Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    return-object v0
.end method

.method public color(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 395
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconColor:Landroid/content/res/ColorStateList;

    .line 396
    invoke-direct {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->updateIconColor()V

    return-object p0
.end method

.method public color(Landroid/content/res/ColorStateList;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0

    if-eqz p1, :cond_0

    .line 408
    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconColor:Landroid/content/res/ColorStateList;

    .line 409
    invoke-direct {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->updateIconColor()V

    :cond_0
    return-object p0
.end method

.method public colorFilter(Landroid/graphics/ColorFilter;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0

    .line 941
    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object p0
.end method

.method public colorListRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 431
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->color(Landroid/content/res/ColorStateList;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public colorRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 421
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->color(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public contourColor(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 686
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 687
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 688
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 689
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourPaint:Landroid/graphics/Paint;

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 690
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 691
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourColor:I

    .line 692
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public contourColorRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 703
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->contourColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public contourWidthDp(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    .line 849
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->contourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public contourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 859
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourWidth:I

    .line 860
    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x1

    .line 861
    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->drawContour(Z)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 862
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public contourWidthRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 839
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->contourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 985
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPlainIcon:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 986
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 988
    invoke-direct {p0, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->updatePaddingBounds(Landroid/graphics/Rect;)V

    .line 989
    invoke-direct {p0, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->updateTextSize(Landroid/graphics/Rect;)V

    .line 990
    invoke-direct {p0, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->offsetIcon(Landroid/graphics/Rect;)V

    .line 992
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    if-le v1, v2, :cond_2

    .line 993
    iget-boolean v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawBackgroundContour:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundContourPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    .line 994
    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundContourWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 995
    new-instance v2, Landroid/graphics/RectF;

    .line 996
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    .line 997
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    invoke-direct {v2, v1, v1, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 998
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 999
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundContourPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1001
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1002
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    int-to-float v0, v0

    iget v2, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1006
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1008
    iget-boolean v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawContour:Z

    if-eqz v0, :cond_3

    .line 1009
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1012
    :cond_3
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1013
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintFilter:Landroid/graphics/ColorFilter;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1015
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public drawBackgroundContour(Z)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 2

    .line 924
    iget-boolean v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawBackgroundContour:Z

    if-eq v0, p1, :cond_1

    .line 925
    iput-boolean p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawBackgroundContour:Z

    .line 927
    iget p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    iget-boolean v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawBackgroundContour:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundContourWidth:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    .line 929
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    :cond_1
    return-object p0
.end method

.method public drawContour(Z)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 2

    .line 907
    iget-boolean v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawContour:Z

    if-eq v0, p1, :cond_1

    .line 908
    iput-boolean p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawContour:Z

    .line 910
    iget p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    iget-boolean v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawContour:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourWidth:I

    mul-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    .line 912
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    :cond_1
    return-object p0
.end method

.method public getAlpha()I
    .locals 1

    .line 1104
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundColor:I

    return v0
.end method

.method public getBackgroundContourColor()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundContourColor:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getColorList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCompatAlpha()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    return v0
.end method

.method public getContourColor()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourColor:I

    return v0
.end method

.method public getIcon()Lcom/mikepenz/iconics/typeface/IIcon;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1092
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1087
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    return v0
.end method

.method public getOpacity()I
    .locals 3

    .line 1058
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintFilter:Landroid/graphics/ColorFilter;

    const/4 v1, -0x3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1061
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, -0x1

    return v0

    :cond_2
    const/4 v0, -0x2

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getPlainIcon()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPlainIcon:Ljava/lang/String;

    return-object v0
.end method

.method public icon(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 2

    .line 353
    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    const/4 v0, 0x0

    .line 354
    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPlainIcon:Ljava/lang/String;

    .line 355
    invoke-interface {p1}, Lcom/mikepenz/iconics/typeface/IIcon;->getTypeface()Lcom/mikepenz/iconics/typeface/ITypeface;

    move-result-object p1

    .line 356
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/mikepenz/iconics/typeface/ITypeface;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 357
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method protected icon(Lcom/mikepenz/iconics/typeface/ITypeface;Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 369
    iput-object p2, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    .line 370
    iget-object p2, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/mikepenz/iconics/typeface/ITypeface;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 371
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public icon(Ljava/lang/Character;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0

    .line 307
    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->iconText(Ljava/lang/String;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public icon(Ljava/lang/Character;Landroid/graphics/Typeface;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0

    .line 318
    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/iconics/IconicsDrawable;->iconText(Ljava/lang/String;Landroid/graphics/Typeface;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public icon(Ljava/lang/String;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 3

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mikepenz/iconics/Iconics;->findFont(Landroid/content/Context;Ljava/lang/String;)Lcom/mikepenz/iconics/typeface/ITypeface;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "_"

    .line 292
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    :try_start_1
    invoke-interface {v0, v1}, Lcom/mikepenz/iconics/typeface/ITypeface;->getIcon(Ljava/lang/String;)Lcom/mikepenz/iconics/typeface/IIcon;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/iconics/IconicsDrawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v1

    .line 295
    :catch_1
    sget-object v0, Lcom/mikepenz/iconics/Iconics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong icon name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public iconOffsetXDp(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    .line 451
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->iconOffsetXPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public iconOffsetXPx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 461
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetX:I

    return-object p0
.end method

.method public iconOffsetXRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 441
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->iconOffsetXPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public iconOffsetYDp(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    .line 482
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->iconOffsetYPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public iconOffsetYPx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 492
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetY:I

    return-object p0
.end method

.method public iconOffsetYRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 472
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->iconOffsetYPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public iconText(Ljava/lang/String;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 328
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->iconText(Ljava/lang/String;Landroid/graphics/Typeface;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public iconText(Ljava/lang/String;Landroid/graphics/Typeface;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPlainIcon:Ljava/lang/String;

    const/4 p1, 0x0

    .line 340
    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    .line 341
    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    if-nez p2, :cond_0

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 342
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1040
    invoke-direct {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->offsetIcon(Landroid/graphics/Rect;)V

    .line 1041
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1042
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 1073
    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1074
    invoke-direct {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->updateIconColor()V

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1077
    :goto_0
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_1

    .line 1078
    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintFilter:Landroid/graphics/ColorFilter;

    .line 1079
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    move p1, v0

    :cond_1
    return p1
.end method

.method public paddingDp(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    .line 514
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public paddingPx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 524
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    if-eq v0, p1, :cond_2

    .line 525
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    .line 526
    iget-boolean p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawContour:Z

    if-eqz p1, :cond_0

    .line 527
    iget p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourWidth:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    .line 529
    :cond_0
    iget-boolean p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawBackgroundContour:Z

    if-eqz p1, :cond_1

    .line 530
    iget p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundContourWidth:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    :cond_2
    return-object p0
.end method

.method public paddingRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 503
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public respectFontBounds(Z)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0

    .line 383
    iput-boolean p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRespectFontBounds:Z

    .line 384
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public roundedCornersDp(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    .line 815
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 816
    iget p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    return-object p0
.end method

.method public roundedCornersPx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 827
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 828
    iget p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    return-object p0
.end method

.method public roundedCornersRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 803
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 804
    iget p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    return-object p0
.end method

.method public roundedCornersRxDp(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    .line 748
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    return-object p0
.end method

.method public roundedCornersRxPx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 759
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    return-object p0
.end method

.method public roundedCornersRxRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 737
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    return-object p0
.end method

.method public roundedCornersRyDp(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    .line 781
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    return-object p0
.end method

.method public roundedCornersRyPx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 792
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    return-object p0
.end method

.method public roundedCornersRyRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 770
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    return-object p0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1098
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    .line 1099
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1109
    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1110
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-void
.end method

.method public setState([I)Z
    .locals 0
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1052
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1053
    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintFilter:Landroid/graphics/ColorFilter;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setTint(I)V
    .locals 0

    .line 1021
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1026
    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTint:Landroid/content/res/ColorStateList;

    .line 1027
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintFilter:Landroid/graphics/ColorFilter;

    .line 1028
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1033
    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1034
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintFilter:Landroid/graphics/ColorFilter;

    .line 1035
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-void
.end method

.method public sizeDp(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    .line 567
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->sizePx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public sizeDpX(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    .line 602
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->sizePxX(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public sizeDpY(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    .line 636
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->sizePxY(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public sizePx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 577
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    .line 578
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    const/4 v0, 0x0

    .line 579
    invoke-virtual {p0, v0, v0, p1, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->setBounds(IIII)V

    .line 580
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public sizePxX(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 612
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    .line 613
    iget p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->setBounds(IIII)V

    .line 614
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public sizePxY(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x1
        .end annotation
    .end param

    .line 646
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    .line 647
    iget p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->setBounds(IIII)V

    .line 648
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public sizeRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 556
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->sizePx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public sizeResX(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 591
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->sizePxX(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public sizeResY(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 625
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->sizePxY(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public style(Landroid/graphics/Paint$Style;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object p0
.end method

.method public toBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .line 232
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    if-ne v0, v1, :cond_1

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->actionBar()Lcom/mikepenz/iconics/IconicsDrawable;

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->style(Landroid/graphics/Paint$Style;)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 240
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 241
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/mikepenz/iconics/IconicsDrawable;->setBounds(IIII)V

    .line 242
    invoke-virtual {p0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public typeface(Landroid/graphics/Typeface;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object p0
.end method
