.class public Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;
.super Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;
.source "TextOutsideCircleButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder<",
        "Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build(Landroid/content/Context;)Lcom/nightonke/boommenu/BoomButtons/BoomButton;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->build(Landroid/content/Context;)Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton;

    move-result-object p1

    return-object p1
.end method

.method public build(Landroid/content/Context;)Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton;
    .locals 2

    .line 243
    new-instance v0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton;-><init>(Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;Landroid/content/Context;Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$1;)V

    .line 244
    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->weakReferenceButton(Lcom/nightonke/boommenu/BoomButtons/BoomButton;)Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    return-object v0
.end method

.method public buttonCornerRadius(I)Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;
    .locals 0

    .line 185
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->buttonCornerRadius:I

    return-object p0
.end method

.method public buttonRadius(I)Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;
    .locals 0

    .line 174
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->buttonRadius:I

    return-object p0
.end method

.method public getButtonContentHeight()I
    .locals 3

    .line 221
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->buttonRadius:I

    mul-int/lit8 v0, v0, 0x2

    .line 222
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->textRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->textRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->shadowOffsetY:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->shadowRadius:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getButtonContentWidth()I
    .locals 2

    .line 208
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->buttonRadius:I

    mul-int/lit8 v0, v0, 0x2

    .line 209
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->textRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->textWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getButtonRadius()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->buttonRadius:I

    return v0
.end method

.method public isRound(Z)Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->isRound:Z

    return-object p0
.end method

.method public rotateText(Z)Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->rotateText:Z

    return-object p0
.end method

.method public textHeight(I)Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;
    .locals 0

    .line 163
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->textHeight:I

    return-object p0
.end method

.method public textTopMargin(I)Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 141
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->textTopMargin:I

    return-object p0
.end method

.method public textWidth(I)Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;
    .locals 0

    .line 152
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->textWidth:I

    return-object p0
.end method
