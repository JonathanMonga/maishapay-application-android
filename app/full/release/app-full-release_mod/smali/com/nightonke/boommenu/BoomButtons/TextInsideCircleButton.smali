.class public Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;
.super Lcom/nightonke/boommenu/BoomButtons/BoomButton;
.source "TextInsideCircleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->context:Landroid/content/Context;

    .line 26
    sget-object p2, Lcom/nightonke/boommenu/ButtonEnum;->TextInsideCircle:Lcom/nightonke/boommenu/ButtonEnum;

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    .line 27
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->init(Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;Landroid/content/Context;Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;-><init>(Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;Landroid/content/Context;)V

    return-void
.end method

.method private init(Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nightonke/boommenu/R$layout;->bmb_text_inside_circle_button:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->initAttrs(Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;)V

    .line 33
    iget-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->isRound:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->buttonRadius:I

    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->shadowRadius:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->initShadow(I)V

    goto :goto_0

    .line 34
    :cond_0
    iget p1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->shadowCornerRadius:I

    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->initShadow(I)V

    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->initCircleButton()V

    .line 36
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->initText(Landroid/view/ViewGroup;)V

    .line 37
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->initImage()V

    .line 38
    new-instance p1, Landroid/graphics/PointF;

    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->buttonRadius:I

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->shadowRadius:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->shadowOffsetX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->buttonRadius:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->shadowRadius:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->shadowOffsetY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->centerPoint:Landroid/graphics/PointF;

    return-void
.end method

.method private initAttrs(Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->initAttrs(Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;)V

    return-void
.end method


# virtual methods
.method public contentHeight()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->buttonRadius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public contentWidth()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->buttonRadius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public goneViews()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public rotateViews()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-boolean v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->rotateImage:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    iget-boolean v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->rotateText:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public setRotateAnchorPoints()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->image:Landroid/widget/ImageView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->buttonRadius:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->imageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 109
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->image:Landroid/widget/ImageView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->buttonRadius:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->imageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 110
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->text:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->buttonRadius:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->textRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 111
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->text:Landroid/widget/TextView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->buttonRadius:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->textRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    return-void
.end method

.method public setSelfScaleAnchorPoints()V
    .locals 0

    return-void
.end method

.method public toHighlighted()V
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->lastStateIsNormal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->ableToHighlight:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->toHighlightedImage()V

    .line 92
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->toHighlightedText()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->lastStateIsNormal:Z

    :cond_0
    return-void
.end method

.method public toNormal()V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->lastStateIsNormal:Z

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->toNormalImage()V

    .line 101
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->toNormalText()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->lastStateIsNormal:Z

    :cond_0
    return-void
.end method

.method public trueHeight()I
    .locals 2

    .line 75
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->buttonRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->shadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->shadowOffsetY:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public trueWidth()I
    .locals 2

    .line 70
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->buttonRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->shadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;->shadowOffsetX:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public type()Lcom/nightonke/boommenu/ButtonEnum;
    .locals 1

    .line 49
    sget-object v0, Lcom/nightonke/boommenu/ButtonEnum;->TextInsideCircle:Lcom/nightonke/boommenu/ButtonEnum;

    return-object v0
.end method
