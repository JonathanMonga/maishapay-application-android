.class public Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;
.super Lcom/nightonke/boommenu/BoomButtons/BoomButton;
.source "SimpleCircleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->context:Landroid/content/Context;

    .line 25
    sget-object p2, Lcom/nightonke/boommenu/ButtonEnum;->SimpleCircle:Lcom/nightonke/boommenu/ButtonEnum;

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    .line 26
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->init(Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;Landroid/content/Context;Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;-><init>(Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;Landroid/content/Context;)V

    return-void
.end method

.method private init(Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nightonke/boommenu/R$layout;->bmb_simple_circle_button:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 31
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->initAttrs(Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;)V

    .line 32
    iget-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->isRound:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->buttonRadius:I

    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->shadowRadius:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->initShadow(I)V

    goto :goto_0

    .line 33
    :cond_0
    iget p1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->shadowCornerRadius:I

    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->initShadow(I)V

    .line 34
    :goto_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->initCircleButton()V

    .line 35
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->initImage()V

    .line 36
    new-instance p1, Landroid/graphics/PointF;

    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->buttonRadius:I

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->shadowRadius:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->shadowOffsetX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->buttonRadius:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->shadowRadius:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->shadowOffsetY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->centerPoint:Landroid/graphics/PointF;

    return-void
.end method

.method private initAttrs(Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->initAttrs(Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;)V

    return-void
.end method


# virtual methods
.method public contentHeight()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->buttonRadius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public contentWidth()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->buttonRadius:I

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

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->image:Landroid/widget/ImageView;

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

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-boolean v1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->rotateImage:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public setRotateAnchorPoints()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->image:Landroid/widget/ImageView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->buttonRadius:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->imageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 103
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->image:Landroid/widget/ImageView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->buttonRadius:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->imageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    return-void
.end method

.method public setSelfScaleAnchorPoints()V
    .locals 0

    return-void
.end method

.method public toHighlighted()V
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->lastStateIsNormal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->ableToHighlight:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->toHighlightedImage()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->lastStateIsNormal:Z

    :cond_0
    return-void
.end method

.method public toNormal()V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->lastStateIsNormal:Z

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->toNormalImage()V

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->lastStateIsNormal:Z

    :cond_0
    return-void
.end method

.method public trueHeight()I
    .locals 2

    .line 71
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->buttonRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->shadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->shadowOffsetY:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public trueWidth()I
    .locals 2

    .line 66
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->buttonRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->shadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;->shadowOffsetX:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public type()Lcom/nightonke/boommenu/ButtonEnum;
    .locals 1

    .line 47
    sget-object v0, Lcom/nightonke/boommenu/ButtonEnum;->SimpleCircle:Lcom/nightonke/boommenu/ButtonEnum;

    return-object v0
.end method
