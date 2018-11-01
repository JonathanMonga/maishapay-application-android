.class public Lcom/nightonke/boommenu/BoomButtons/HamButton;
.super Lcom/nightonke/boommenu/BoomButtons/BoomButton;
.source "HamButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->context:Landroid/content/Context;

    .line 31
    sget-object p2, Lcom/nightonke/boommenu/ButtonEnum;->Ham:Lcom/nightonke/boommenu/ButtonEnum;

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    .line 32
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/HamButton;->init(Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;Landroid/content/Context;Lcom/nightonke/boommenu/BoomButtons/HamButton$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/nightonke/boommenu/BoomButtons/HamButton;-><init>(Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;Landroid/content/Context;)V

    return-void
.end method

.method private init(Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nightonke/boommenu/R$layout;->bmb_ham_button:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/HamButton;->initAttrs(Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;)V

    .line 38
    iget p1, p1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->shadowCornerRadius:I

    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/HamButton;->initShadow(I)V

    .line 39
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton;->initHamButton()V

    .line 40
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/HamButton;->initText(Landroid/view/ViewGroup;)V

    .line 41
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/HamButton;->initSubText(Landroid/view/ViewGroup;)V

    .line 42
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton;->initImage()V

    .line 43
    new-instance p1, Landroid/graphics/PointF;

    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->buttonWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->shadowRadius:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->shadowOffsetX:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->buttonHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->shadowRadius:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->shadowOffsetY:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-direct {p1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->centerPoint:Landroid/graphics/PointF;

    return-void
.end method

.method private initAttrs(Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->initAttrs(Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;)V

    return-void
.end method


# virtual methods
.method public contentHeight()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->buttonHeight:I

    return v0
.end method

.method public contentWidth()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->buttonWidth:I

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

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->subText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->subText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
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

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-boolean v1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->rotateImage:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public setRotateAnchorPoints()V
    .locals 0

    return-void
.end method

.method public setSelfScaleAnchorPoints()V
    .locals 0

    return-void
.end method

.method public toHighlighted()V
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->lastStateIsNormal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->ableToHighlight:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton;->toHighlightedImage()V

    .line 97
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton;->toHighlightedText()V

    .line 98
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton;->toHighlightedSubText()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->lastStateIsNormal:Z

    :cond_0
    return-void
.end method

.method public toNormal()V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->lastStateIsNormal:Z

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton;->toNormalImage()V

    .line 107
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton;->toNormalText()V

    .line 108
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomButtons/HamButton;->toNormalSubText()V

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->lastStateIsNormal:Z

    :cond_0
    return-void
.end method

.method public trueHeight()I
    .locals 2

    .line 80
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->buttonHeight:I

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->shadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->shadowOffsetY:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public trueWidth()I
    .locals 2

    .line 75
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->buttonWidth:I

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->shadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/HamButton;->shadowOffsetX:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public type()Lcom/nightonke/boommenu/ButtonEnum;
    .locals 1

    .line 54
    sget-object v0, Lcom/nightonke/boommenu/ButtonEnum;->Ham:Lcom/nightonke/boommenu/ButtonEnum;

    return-object v0
.end method
