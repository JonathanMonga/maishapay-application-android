.class public Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;
.super Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;
.source "SimpleCircleButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder<",
        "Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build(Landroid/content/Context;)Lcom/nightonke/boommenu/BoomButtons/BoomButton;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;->build(Landroid/content/Context;)Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;

    move-result-object p1

    return-object p1
.end method

.method public build(Landroid/content/Context;)Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;
    .locals 2

    .line 163
    new-instance v0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton;-><init>(Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;Landroid/content/Context;Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$1;)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;->weakReferenceButton(Lcom/nightonke/boommenu/BoomButtons/BoomButton;)Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    return-object v0
.end method

.method public buttonCornerRadius(I)Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;
    .locals 0

    .line 131
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;->buttonCornerRadius:I

    return-object p0
.end method

.method public buttonRadius(I)Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;
    .locals 0

    .line 120
    iput p1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;->buttonRadius:I

    return-object p0
.end method

.method public getButtonRadius()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;->buttonRadius:I

    return v0
.end method

.method public isRound(Z)Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;->isRound:Z

    return-object p0
.end method
