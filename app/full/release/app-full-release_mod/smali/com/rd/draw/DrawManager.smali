.class public Lcom/rd/draw/DrawManager;
.super Ljava/lang/Object;
.source "DrawManager.java"


# instance fields
.field private attributeController:Lcom/rd/draw/controller/AttributeController;

.field private drawController:Lcom/rd/draw/controller/DrawController;

.field private indicator:Lcom/rd/draw/data/Indicator;

.field private measureController:Lcom/rd/draw/controller/MeasureController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/rd/draw/data/Indicator;

    invoke-direct {v0}, Lcom/rd/draw/data/Indicator;-><init>()V

    iput-object v0, p0, Lcom/rd/draw/DrawManager;->indicator:Lcom/rd/draw/data/Indicator;

    .line 25
    new-instance v0, Lcom/rd/draw/controller/DrawController;

    iget-object v1, p0, Lcom/rd/draw/DrawManager;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-direct {v0, v1}, Lcom/rd/draw/controller/DrawController;-><init>(Lcom/rd/draw/data/Indicator;)V

    iput-object v0, p0, Lcom/rd/draw/DrawManager;->drawController:Lcom/rd/draw/controller/DrawController;

    .line 26
    new-instance v0, Lcom/rd/draw/controller/MeasureController;

    invoke-direct {v0}, Lcom/rd/draw/controller/MeasureController;-><init>()V

    iput-object v0, p0, Lcom/rd/draw/DrawManager;->measureController:Lcom/rd/draw/controller/MeasureController;

    .line 27
    new-instance v0, Lcom/rd/draw/controller/AttributeController;

    iget-object v1, p0, Lcom/rd/draw/DrawManager;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-direct {v0, v1}, Lcom/rd/draw/controller/AttributeController;-><init>(Lcom/rd/draw/data/Indicator;)V

    iput-object v0, p0, Lcom/rd/draw/DrawManager;->attributeController:Lcom/rd/draw/controller/AttributeController;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    iget-object v0, p0, Lcom/rd/draw/DrawManager;->drawController:Lcom/rd/draw/controller/DrawController;

    invoke-virtual {v0, p1}, Lcom/rd/draw/controller/DrawController;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public indicator()Lcom/rd/draw/data/Indicator;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/rd/draw/DrawManager;->indicator:Lcom/rd/draw/data/Indicator;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/rd/draw/data/Indicator;

    invoke-direct {v0}, Lcom/rd/draw/data/Indicator;-><init>()V

    iput-object v0, p0, Lcom/rd/draw/DrawManager;->indicator:Lcom/rd/draw/data/Indicator;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/rd/draw/DrawManager;->indicator:Lcom/rd/draw/data/Indicator;

    return-object v0
.end method

.method public initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    iget-object v0, p0, Lcom/rd/draw/DrawManager;->attributeController:Lcom/rd/draw/controller/AttributeController;

    invoke-virtual {v0, p1, p2}, Lcom/rd/draw/controller/AttributeController;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public measureViewSize(II)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/rd/draw/DrawManager;->measureController:Lcom/rd/draw/controller/MeasureController;

    iget-object v1, p0, Lcom/rd/draw/DrawManager;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0, v1, p1, p2}, Lcom/rd/draw/controller/MeasureController;->measureViewSize(Lcom/rd/draw/data/Indicator;II)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public setClickListener(Lcom/rd/draw/controller/DrawController$ClickListener;)V
    .locals 1
    .param p1    # Lcom/rd/draw/controller/DrawController$ClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    iget-object v0, p0, Lcom/rd/draw/DrawManager;->drawController:Lcom/rd/draw/controller/DrawController;

    invoke-virtual {v0, p1}, Lcom/rd/draw/controller/DrawController;->setClickListener(Lcom/rd/draw/controller/DrawController$ClickListener;)V

    return-void
.end method

.method public touch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    iget-object v0, p0, Lcom/rd/draw/DrawManager;->drawController:Lcom/rd/draw/controller/DrawController;

    invoke-virtual {v0, p1}, Lcom/rd/draw/controller/DrawController;->touch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public updateValue(Lcom/rd/animation/data/Value;)V
    .locals 1
    .param p1    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    iget-object v0, p0, Lcom/rd/draw/DrawManager;->drawController:Lcom/rd/draw/controller/DrawController;

    invoke-virtual {v0, p1}, Lcom/rd/draw/controller/DrawController;->updateValue(Lcom/rd/animation/data/Value;)V

    return-void
.end method
