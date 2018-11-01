.class public Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;
.super Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;
.source "TextInsideCircleButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder<",
        "Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonWithTextBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build(Landroid/content/Context;)Lcom/nightonke/boommenu/BoomButtons/BoomButton;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;->build(Landroid/content/Context;)Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;

    move-result-object p1

    return-object p1
.end method

.method public build(Landroid/content/Context;)Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;
    .locals 2

    .line 182
    new-instance v0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton;-><init>(Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;Landroid/content/Context;Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$1;)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;->weakReferenceButton(Lcom/nightonke/boommenu/BoomButtons/BoomButton;)Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    return-object v0
.end method

.method public buttonCornerRadius(I)Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;
    .locals 0

    .line 150
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;->buttonCornerRadius:I

    return-object p0
.end method

.method public buttonRadius(I)Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;
    .locals 0

    .line 139
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;->buttonRadius:I

    return-object p0
.end method

.method public getButtonRadius()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;->buttonRadius:I

    return v0
.end method

.method public isRound(Z)Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;->isRound:Z

    return-object p0
.end method

.method public rotateText(Z)Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;->rotateText:Z

    return-object p0
.end method
