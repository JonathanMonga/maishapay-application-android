.class public abstract Lcom/nightonke/boommenu/BoomButtons/BoomButton;
.super Landroid/widget/FrameLayout;
.source "BoomButton.java"


# instance fields
.field protected ableToHighlight:Z

.field protected button:Landroid/widget/FrameLayout;

.field protected buttonCornerRadius:I

.field protected buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

.field protected buttonHeight:I

.field protected buttonRadius:I

.field protected buttonWidth:I

.field public centerPoint:Landroid/graphics/PointF;

.field protected containsSubText:Z

.field protected context:Landroid/content/Context;

.field protected ellipsize:Landroid/text/TextUtils$TruncateAt;

.field protected highlightedColor:I

.field protected highlightedColorRes:I

.field protected highlightedImageDrawable:Landroid/graphics/drawable/Drawable;

.field protected highlightedImageRes:I

.field protected highlightedText:Ljava/lang/String;

.field protected highlightedTextColor:I

.field protected highlightedTextColorRes:I

.field protected highlightedTextRes:I

.field protected image:Landroid/widget/ImageView;

.field protected imagePadding:Landroid/graphics/Rect;

.field protected imageRect:Landroid/graphics/Rect;

.field protected index:I

.field protected isRound:Z

.field protected lastStateIsNormal:Z

.field protected layout:Landroid/view/ViewGroup;

.field protected listener:Lcom/nightonke/boommenu/BoomButtons/InnerOnBoomButtonClickListener;

.field protected maxLines:I

.field protected nonRippleBitmapDrawable:Landroid/graphics/drawable/StateListDrawable;

.field protected nonRippleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field protected normalColor:I

.field protected normalColorRes:I

.field protected normalImageDrawable:Landroid/graphics/drawable/Drawable;

.field protected normalImageRes:I

.field protected normalText:Ljava/lang/String;

.field protected normalTextColor:I

.field protected normalTextColorRes:I

.field protected normalTextRes:I

.field protected onBMClickListener:Lcom/nightonke/boommenu/BoomButtons/OnBMClickListener;

.field protected pieceColor:Ljava/lang/Integer;

.field protected pieceColorRes:I

.field protected rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

.field protected rippleEffect:Z

.field protected rippleEffectWorks:Z

.field protected rotateImage:Z

.field protected rotateText:Z

.field protected shadow:Lcom/nightonke/boommenu/BMBShadow;

.field protected shadowColor:I

.field protected shadowCornerRadius:I

.field protected shadowEffect:Z

.field protected shadowOffsetX:I

.field protected shadowOffsetY:I

.field protected shadowRadius:I

.field protected subEllipsize:Landroid/text/TextUtils$TruncateAt;

.field protected subHighlightedText:Ljava/lang/String;

.field protected subHighlightedTextColor:I

.field protected subHighlightedTextColorRes:I

.field protected subHighlightedTextRes:I

.field protected subMaxLines:I

.field protected subNormalText:Ljava/lang/String;

.field protected subNormalTextColor:I

.field protected subNormalTextColorRes:I

.field protected subNormalTextRes:I

.field protected subText:Landroid/widget/TextView;

.field protected subTextGravity:I

.field protected subTextPadding:Landroid/graphics/Rect;

.field protected subTextRect:Landroid/graphics/Rect;

.field protected subTextSize:I

.field protected subTypeface:Landroid/graphics/Typeface;

.field protected subUnableText:Ljava/lang/String;

.field protected subUnableTextColor:I

.field protected subUnableTextColorRes:I

.field protected subUnableTextRes:I

.field protected text:Landroid/widget/TextView;

.field protected textGravity:I

.field protected textHeight:I

.field protected textPadding:Landroid/graphics/Rect;

.field protected textRect:Landroid/graphics/Rect;

.field protected textSize:I

.field protected textTopMargin:I

.field protected textWidth:I

.field private touchable:Z

.field protected trueRadius:I

.field protected typeface:Landroid/graphics/Typeface;

.field protected unable:Z

.field protected unableColor:I

.field protected unableColorRes:I

.field protected unableImageDrawable:Landroid/graphics/drawable/Drawable;

.field protected unableImageRes:I

.field protected unableText:Ljava/lang/String;

.field protected unableTextColor:I

.field protected unableTextColorRes:I

.field protected unableTextRes:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 151
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->index:I

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->lastStateIsNormal:Z

    .line 46
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->ableToHighlight:Z

    .line 56
    sget-object v0, Lcom/nightonke/boommenu/ButtonEnum;->Unknown:Lcom/nightonke/boommenu/ButtonEnum;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->touchable:Z

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColor:Ljava/lang/Integer;

    .line 61
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColorRes:I

    .line 64
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowEffect:Z

    .line 65
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowOffsetX:I

    .line 66
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowOffsetY:I

    .line 67
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowRadius:I

    .line 68
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowCornerRadius:I

    .line 73
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalImageRes:I

    .line 75
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedImageRes:I

    .line 77
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableImageRes:I

    .line 79
    iput-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imageRect:Landroid/graphics/Rect;

    .line 80
    iput-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imagePadding:Landroid/graphics/Rect;

    .line 83
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalTextRes:I

    .line 85
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedTextRes:I

    .line 87
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableTextRes:I

    .line 90
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalTextColorRes:I

    .line 92
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedTextColorRes:I

    .line 94
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableTextColorRes:I

    .line 95
    iput-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textRect:Landroid/graphics/Rect;

    .line 96
    iput-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textPadding:Landroid/graphics/Rect;

    .line 104
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subNormalTextRes:I

    .line 106
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subHighlightedTextRes:I

    .line 108
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableTextRes:I

    .line 111
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subNormalTextColorRes:I

    .line 113
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subHighlightedTextColorRes:I

    .line 115
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableTextColorRes:I

    .line 116
    iput-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextRect:Landroid/graphics/Rect;

    .line 117
    iput-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextPadding:Landroid/graphics/Rect;

    .line 131
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleEffect:Z

    .line 133
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColorRes:I

    .line 135
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedColorRes:I

    .line 137
    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColorRes:I

    .line 138
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    .line 139
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleEffectWorks:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nightonke/boommenu/BoomButtons/BoomButton;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->touchable:Z

    return p0
.end method


# virtual methods
.method public buttonColor()I
    .locals 1

    .line 685
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColor()I

    move-result v0

    return v0

    .line 686
    :cond_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColor()I

    move-result v0

    return v0
.end method

.method public abstract contentHeight()I
.end method

.method public abstract contentWidth()I
.end method

.method public didHide()V
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public didShow()V
    .locals 3

    const/4 v0, 0x1

    .line 709
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->touchable:Z

    .line 710
    iget-boolean v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleEffectWorks:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->isNeededColorAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->nonRippleBitmapDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-static {v1, v2}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 713
    :cond_1
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_2
    return-void
.end method

.method public getButton()Landroid/widget/FrameLayout;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->layout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getShadow()Lcom/nightonke/boommenu/BMBShadow;
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    return-object v0
.end method

.method public getSubTextView()Landroid/widget/TextView;
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method public abstract goneViews()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public hideAllGoneViews()V
    .locals 3

    .line 728
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->goneViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected highlightedColor()I
    .locals 3

    .line 759
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->context:Landroid/content/Context;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedColorRes:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedColor:I

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method protected initAttrs(Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;)V
    .locals 6

    .line 155
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->index:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->index:I

    .line 156
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->listener:Lcom/nightonke/boommenu/BoomButtons/InnerOnBoomButtonClickListener;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->listener:Lcom/nightonke/boommenu/BoomButtons/InnerOnBoomButtonClickListener;

    .line 157
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->onBMClickListener:Lcom/nightonke/boommenu/BoomButtons/OnBMClickListener;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->onBMClickListener:Lcom/nightonke/boommenu/BoomButtons/OnBMClickListener;

    .line 158
    iget-boolean v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->rotateImage:Z

    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rotateImage:Z

    .line 159
    iget-boolean v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->rotateText:Z

    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rotateText:Z

    .line 160
    iget-boolean v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->containsSubText:Z

    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->containsSubText:Z

    .line 162
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColor:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColor:Ljava/lang/Integer;

    .line 163
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->pieceColorRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColorRes:I

    .line 165
    iget-boolean v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowEffect:Z

    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowEffect:Z

    .line 166
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowEffect:Z

    if-eqz v0, :cond_0

    .line 167
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowOffsetX:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowOffsetX:I

    .line 168
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowOffsetY:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowOffsetY:I

    .line 169
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowRadius:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowRadius:I

    .line 170
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowCornerRadius:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowCornerRadius:I

    .line 171
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->shadowColor:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowColor:I

    .line 174
    :cond_0
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalImageRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalImageRes:I

    .line 175
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedImageRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedImageRes:I

    .line 176
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableImageRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableImageRes:I

    .line 177
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 179
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->imageRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imageRect:Landroid/graphics/Rect;

    .line 181
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->imagePadding:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imagePadding:Landroid/graphics/Rect;

    .line 183
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalText:Ljava/lang/String;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalText:Ljava/lang/String;

    .line 184
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalTextRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalTextRes:I

    .line 185
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedText:Ljava/lang/String;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedText:Ljava/lang/String;

    .line 186
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedTextRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedTextRes:I

    .line 187
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableText:Ljava/lang/String;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableText:Ljava/lang/String;

    .line 188
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableTextRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableTextRes:I

    .line 189
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalTextColor:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalTextColor:I

    .line 190
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalTextColorRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalTextColorRes:I

    .line 191
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedTextColor:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedTextColor:I

    .line 192
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedTextColorRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedTextColorRes:I

    .line 193
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableTextColor:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableTextColor:I

    .line 194
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableTextColorRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableTextColorRes:I

    .line 195
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->textRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textRect:Landroid/graphics/Rect;

    .line 196
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->textPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textPadding:Landroid/graphics/Rect;

    .line 197
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->typeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->typeface:Landroid/graphics/Typeface;

    .line 198
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->maxLines:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->maxLines:I

    .line 199
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->textGravity:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textGravity:I

    .line 200
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 201
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->textSize:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textSize:I

    .line 203
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subNormalText:Ljava/lang/String;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subNormalText:Ljava/lang/String;

    .line 204
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subNormalTextRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subNormalTextRes:I

    .line 205
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subHighlightedText:Ljava/lang/String;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subHighlightedText:Ljava/lang/String;

    .line 206
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subHighlightedTextRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subHighlightedTextRes:I

    .line 207
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subUnableText:Ljava/lang/String;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableText:Ljava/lang/String;

    .line 208
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subUnableTextRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableTextRes:I

    .line 209
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subNormalTextColor:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subNormalTextColor:I

    .line 210
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subNormalTextColorRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subNormalTextColorRes:I

    .line 211
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subHighlightedTextColor:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subHighlightedTextColor:I

    .line 212
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subHighlightedTextColorRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subHighlightedTextColorRes:I

    .line 213
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subUnableTextColor:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableTextColor:I

    .line 214
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subUnableTextColorRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableTextColorRes:I

    .line 215
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subTextRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextRect:Landroid/graphics/Rect;

    .line 216
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subTextPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextPadding:Landroid/graphics/Rect;

    .line 217
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTypeface:Landroid/graphics/Typeface;

    .line 218
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subMaxLines:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subMaxLines:I

    .line 219
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subTextGravity:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextGravity:I

    .line 220
    iget-object v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subEllipsize:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 221
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->subTextSize:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextSize:I

    .line 223
    iget-boolean v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->rippleEffect:Z

    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleEffect:Z

    .line 224
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalColor:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColor:I

    .line 225
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->normalColorRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColorRes:I

    .line 226
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedColor:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedColor:I

    .line 227
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->highlightedColorRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedColorRes:I

    .line 228
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableColor:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColor:I

    .line 229
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unableColorRes:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColorRes:I

    .line 230
    iget-boolean v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->unable:Z

    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    .line 231
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->buttonRadius:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonRadius:I

    .line 232
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->buttonWidth:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonWidth:I

    .line 233
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->buttonHeight:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonHeight:I

    .line 234
    iget-boolean v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->isRound:Z

    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->isRound:Z

    .line 235
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    sget-object v1, Lcom/nightonke/boommenu/ButtonEnum;->SimpleCircle:Lcom/nightonke/boommenu/ButtonEnum;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    sget-object v1, Lcom/nightonke/boommenu/ButtonEnum;->TextInsideCircle:Lcom/nightonke/boommenu/ButtonEnum;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    sget-object v1, Lcom/nightonke/boommenu/ButtonEnum;->TextOutsideCircle:Lcom/nightonke/boommenu/ButtonEnum;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->buttonCornerRadius:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonCornerRadius:I

    goto :goto_1

    .line 238
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->isRound:Z

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->buttonRadius:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonCornerRadius:I

    goto :goto_1

    .line 239
    :cond_3
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->buttonCornerRadius:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonCornerRadius:I

    .line 241
    :goto_1
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->buttonCornerRadius:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonCornerRadius:I

    .line 242
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleEffect:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleEffectWorks:Z

    .line 245
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->textTopMargin:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textTopMargin:I

    .line 246
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->textWidth:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textWidth:I

    .line 247
    iget v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->textHeight:I

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textHeight:I

    .line 248
    instance-of p1, p1, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;

    if-eqz p1, :cond_7

    .line 249
    iget p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonRadius:I

    mul-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowOffsetX:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowRadius:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 250
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textWidth:I

    if-le v0, p1, :cond_5

    .line 251
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowOffsetY:I

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowRadius:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonRadius:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textTopMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textWidth:I

    iget v4, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowOffsetY:I

    iget v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowRadius:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textTopMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textHeight:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textRect:Landroid/graphics/Rect;

    goto :goto_3

    .line 257
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textWidth:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowOffsetY:I

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowRadius:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonRadius:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textTopMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textWidth:I

    sub-int v3, p1, v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowOffsetY:I

    iget v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowRadius:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textTopMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textHeight:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textRect:Landroid/graphics/Rect;

    .line 263
    :goto_3
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowOffsetX:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowRadius:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonRadius:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowOffsetY:I

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowRadius:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonRadius:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Util;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->trueRadius:I

    .line 270
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textWidth:I

    if-le v0, p1, :cond_6

    .line 271
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->trueRadius:I

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->trueRadius:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowOffsetY:I

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowRadius:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonRadius:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    .line 275
    :cond_6
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->trueRadius:I

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowOffsetX:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowRadius:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonRadius:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->trueRadius:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowOffsetY:I

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowRadius:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonRadius:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_7
    :goto_4
    return-void
.end method

.method protected initCircleButton()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 390
    sget v0, Lcom/nightonke/boommenu/R$id;->button:I

    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    .line 391
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 392
    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonRadius:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 393
    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonRadius:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 394
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/nightonke/boommenu/BoomButtons/BoomButton$1;

    invoke-direct {v1, p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton$1;-><init>(Lcom/nightonke/boommenu/BoomButtons/BoomButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->initCircleButtonDrawable()V

    .line 407
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/nightonke/boommenu/BoomButtons/BoomButton$2;

    invoke-direct {v1, p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton$2;-><init>(Lcom/nightonke/boommenu/BoomButtons/BoomButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected initCircleButtonDrawable()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 351
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleEffectWorks:Z

    if-eqz v0, :cond_3

    .line 352
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->isRound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColor()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColor()I

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Util;->getOvalDrawable(Landroid/view/View;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonCornerRadius:I

    iget-boolean v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    if-eqz v2, :cond_2

    .line 354
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColor()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColor()I

    move-result v2

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->getRectangleDrawable(Landroid/view/View;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 355
    :goto_2
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    .line 356
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 359
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 360
    iput-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    goto :goto_5

    .line 362
    :cond_3
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->isRound:Z

    if-eqz v0, :cond_4

    .line 363
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonRadius:I

    .line 366
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColor()I

    move-result v2

    .line 367
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedColor()I

    move-result v3

    .line 368
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColor()I

    move-result v4

    .line 363
    invoke-static {v0, v1, v2, v3, v4}, Lcom/nightonke/boommenu/Util;->getOvalStateListBitmapDrawable(Landroid/view/View;IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->nonRippleBitmapDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_3

    .line 370
    :cond_4
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonWidth:I

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonHeight:I

    iget v4, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonCornerRadius:I

    .line 375
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColor()I

    move-result v5

    .line 376
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedColor()I

    move-result v6

    .line 377
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColor()I

    move-result v7

    .line 370
    invoke-static/range {v1 .. v7}, Lcom/nightonke/boommenu/Util;->getRectangleStateListBitmapDrawable(Landroid/view/View;IIIIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->nonRippleBitmapDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 378
    :goto_3
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->isNeededColorAnimation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 382
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColor()I

    move-result v1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColor()I

    move-result v1

    :goto_4
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Util;->getOvalDrawable(Landroid/view/View;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->nonRippleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 384
    :cond_6
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->nonRippleBitmapDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_5
    return-void
.end method

.method protected initHamButton()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 467
    sget v0, Lcom/nightonke/boommenu/R$id;->button:I

    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    .line 468
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 469
    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 470
    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 471
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 473
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/nightonke/boommenu/BoomButtons/BoomButton$3;

    invoke-direct {v1, p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton$3;-><init>(Lcom/nightonke/boommenu/BoomButtons/BoomButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->initHamButtonDrawable()V

    .line 484
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/nightonke/boommenu/BoomButtons/BoomButton$4;

    invoke-direct {v1, p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton$4;-><init>(Lcom/nightonke/boommenu/BoomButtons/BoomButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected initHamButtonDrawable()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 439
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleEffectWorks:Z

    if-eqz v0, :cond_1

    .line 440
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 441
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonCornerRadius:I

    iget-boolean v4, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    if-eqz v4, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColor()I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColor()I

    move-result v4

    :goto_0
    invoke-static {v2, v3, v4}, Lcom/nightonke/boommenu/Util;->getRectangleDrawable(Landroid/view/View;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 444
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 445
    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    goto :goto_2

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonWidth:I

    iget v4, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonHeight:I

    iget v5, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonCornerRadius:I

    .line 452
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColor()I

    move-result v6

    .line 453
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedColor()I

    move-result v7

    .line 454
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColor()I

    move-result v8

    .line 447
    invoke-static/range {v2 .. v8}, Lcom/nightonke/boommenu/Util;->getRectangleStateListBitmapDrawable(Landroid/view/View;IIIIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->nonRippleBitmapDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 455
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->isNeededColorAnimation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 459
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonCornerRadius:I

    iget-boolean v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColor()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColor()I

    move-result v2

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->getRectangleDrawable(Landroid/view/View;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->nonRippleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 461
    :cond_3
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->nonRippleBitmapDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method

.method protected initImage()V
    .locals 2

    .line 300
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->image:Landroid/widget/ImageView;

    .line 301
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateImageRect()V

    .line 302
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateImagePadding()V

    .line 303
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->lastStateIsNormal:Z

    .line 305
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toNormal()V

    return-void
.end method

.method protected initShadow(I)V
    .locals 2

    .line 289
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowEffect:Z

    if-eqz v0, :cond_0

    .line 290
    sget v0, Lcom/nightonke/boommenu/R$id;->shadow:I

    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nightonke/boommenu/BMBShadow;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    .line 291
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowOffsetX:I

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/BMBShadow;->setShadowOffsetX(I)V

    .line 292
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowOffsetY:I

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/BMBShadow;->setShadowOffsetY(I)V

    .line 293
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowColor:I

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/BMBShadow;->setShadowColor(I)V

    .line 294
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadowRadius:I

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/BMBShadow;->setShadowRadius(I)V

    .line 295
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    invoke-virtual {v0, p1}, Lcom/nightonke/boommenu/BMBShadow;->setShadowCornerRadius(I)V

    :cond_0
    return-void
.end method

.method protected initSubText(Landroid/view/ViewGroup;)V
    .locals 3

    .line 329
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->containsSubText:Z

    if-nez v0, :cond_0

    return-void

    .line 330
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    .line 331
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateSubTextRect()V

    .line 332
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateSubTextPadding()V

    .line 333
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->maxLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 335
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    const/4 v1, 0x2

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 336
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextGravity:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 337
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 338
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_2

    .line 339
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 340
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 341
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 342
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 343
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 344
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFreezesText(Z)V

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected initText(Landroid/view/ViewGroup;)V
    .locals 3

    .line 309
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    .line 310
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateTextRect()V

    .line 311
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateTextPadding()V

    .line 312
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->typeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->maxLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 314
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    const/4 v1, 0x2

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 315
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textGravity:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 316
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 317
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_1

    .line 318
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 319
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 320
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 321
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 322
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 323
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFreezesText(Z)V

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected initTextOutsideCircleButtonLayout()V
    .locals 3

    .line 283
    sget v0, Lcom/nightonke/boommenu/R$id;->layout:I

    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->layout:Landroid/view/ViewGroup;

    .line 284
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->trueRadius:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->trueRadius:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 285
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public isNeededColorAnimation()Z
    .locals 4

    .line 690
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 691
    iget-boolean v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 692
    :cond_1
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method protected normalColor()I
    .locals 3

    .line 755
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->context:Landroid/content/Context;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColorRes:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColor:I

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public pieceColor()I
    .locals 3

    .line 677
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColor:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColorRes:I

    if-nez v0, :cond_1

    .line 678
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColor()I

    move-result v0

    return v0

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalColor()I

    move-result v0

    return v0

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColor:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->context:Landroid/content/Context;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColorRes:I

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->context:Landroid/content/Context;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColorRes:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public place(IIII)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 515
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 516
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 517
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 518
    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public prepareColorTransformAnimation()Z
    .locals 2

    .line 732
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleEffectWorks:Z

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Background drawable is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->nonRippleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    .line 735
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Background drawable is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_1
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleEffectWorks:Z

    return v0
.end method

.method public abstract rotateViews()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public setClickable(Z)V
    .locals 1

    .line 750
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 751
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 697
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 698
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    return-void
.end method

.method protected setNonRippleButtonColor(I)V
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->nonRippleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method protected setRippleButtonColor(I)V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public abstract setRotateAnchorPoints()V
.end method

.method public abstract setSelfScaleAnchorPoints()V
.end method

.method protected abstract toHighlighted()V
.end method

.method protected toHighlightedImage()V
    .locals 3

    .line 632
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->image:Landroid/widget/ImageView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableImageRes:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->image:Landroid/widget/ImageView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedImageRes:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected toHighlightedSubText()V
    .locals 3

    .line 667
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableTextRes:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setText(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableTextColorRes:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableTextColor:I

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setTextColor(Landroid/widget/TextView;II)V

    goto :goto_0

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subHighlightedTextRes:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subHighlightedText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setText(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subHighlightedTextColorRes:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subHighlightedTextColor:I

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setTextColor(Landroid/widget/TextView;II)V

    :goto_0
    return-void
.end method

.method protected toHighlightedText()V
    .locals 3

    .line 647
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableTextRes:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setText(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableTextColorRes:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableTextColor:I

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setTextColor(Landroid/widget/TextView;II)V

    goto :goto_0

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedTextRes:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setText(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedTextColorRes:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->highlightedTextColor:I

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setTextColor(Landroid/widget/TextView;II)V

    :goto_0
    return-void
.end method

.method protected abstract toNormal()V
.end method

.method protected toNormalImage()V
    .locals 3

    .line 627
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->image:Landroid/widget/ImageView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableImageRes:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->image:Landroid/widget/ImageView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalImageRes:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected toNormalSubText()V
    .locals 3

    .line 657
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableTextRes:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setText(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableTextColorRes:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subUnableTextColor:I

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setTextColor(Landroid/widget/TextView;II)V

    goto :goto_0

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subNormalTextRes:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subNormalText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setText(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subNormalTextColorRes:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subNormalTextColor:I

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setTextColor(Landroid/widget/TextView;II)V

    :goto_0
    return-void
.end method

.method protected toNormalText()V
    .locals 3

    .line 637
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableTextRes:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setText(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableTextColorRes:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableTextColor:I

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setTextColor(Landroid/widget/TextView;II)V

    goto :goto_0

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalTextRes:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setText(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalTextColorRes:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->normalTextColor:I

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->setTextColor(Landroid/widget/TextView;II)V

    :goto_0
    return-void
.end method

.method public abstract trueHeight()I
.end method

.method public abstract trueWidth()I
.end method

.method public abstract type()Lcom/nightonke/boommenu/ButtonEnum;
.end method

.method protected unableColor()I
    .locals 3

    .line 763
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->context:Landroid/content/Context;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColorRes:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unableColor:I

    invoke-static {v0, v1, v2}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method updateButtonDrawable()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    sget-object v1, Lcom/nightonke/boommenu/ButtonEnum;->SimpleCircle:Lcom/nightonke/boommenu/ButtonEnum;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    sget-object v1, Lcom/nightonke/boommenu/ButtonEnum;->TextInsideCircle:Lcom/nightonke/boommenu/ButtonEnum;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    sget-object v1, Lcom/nightonke/boommenu/ButtonEnum;->TextOutsideCircle:Lcom/nightonke/boommenu/ButtonEnum;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->initHamButtonDrawable()V

    goto :goto_1

    .line 608
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->initCircleButtonDrawable()V

    :goto_1
    return-void
.end method

.method updateImage()V
    .locals 1

    .line 527
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->lastStateIsNormal:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toNormalImage()V

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toHighlightedImage()V

    :goto_0
    return-void
.end method

.method updateImagePadding()V
    .locals 5

    .line 553
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imagePadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->image:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imagePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imagePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imagePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imagePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method updateImageRect()V
    .locals 4

    .line 542
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imageRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imageRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 545
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imageRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 546
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 547
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imageRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->imageRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 549
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->image:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method updateSubText()V
    .locals 1

    .line 537
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->lastStateIsNormal:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toNormalSubText()V

    goto :goto_0

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toHighlightedSubText()V

    :goto_0
    return-void
.end method

.method updateSubTextPadding()V
    .locals 5

    .line 595
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method updateSubTextRect()V
    .locals 4

    .line 584
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 587
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 588
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 589
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 590
    :cond_0
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 591
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->subText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method updateText()V
    .locals 1

    .line 532
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->lastStateIsNormal:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toNormalText()V

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toHighlightedText()V

    :goto_0
    return-void
.end method

.method updateTextPadding()V
    .locals 5

    .line 574
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method updateTextRect()V
    .locals 4

    .line 563
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 566
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 567
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 568
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->textRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 570
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method updateUnable()V
    .locals 2

    .line 613
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleEffectWorks:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateButtonDrawable()V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->unable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 615
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->lastStateIsNormal:Z

    if-eqz v0, :cond_1

    .line 616
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toNormalImage()V

    .line 617
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toNormalText()V

    .line 618
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toNormalSubText()V

    goto :goto_0

    .line 620
    :cond_1
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toHighlightedImage()V

    .line 621
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toHighlightedText()V

    .line 622
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toHighlightedSubText()V

    :goto_0
    return-void
.end method

.method public willHide()V
    .locals 2

    const/4 v0, 0x0

    .line 717
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->touchable:Z

    .line 718
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleEffectWorks:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->isNeededColorAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->nonRippleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public willShow()V
    .locals 2

    const/4 v0, 0x0

    .line 702
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->touchable:Z

    .line 703
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->rippleEffectWorks:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->isNeededColorAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->nonRippleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->updateButtonDrawable()V

    :goto_0
    return-void
.end method
