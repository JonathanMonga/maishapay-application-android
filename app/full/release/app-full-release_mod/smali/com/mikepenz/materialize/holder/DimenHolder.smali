.class public Lcom/mikepenz/materialize/holder/DimenHolder;
.super Ljava/lang/Object;
.source "DimenHolder.java"


# instance fields
.field private mDp:I

.field private mPixel:I

.field private mResource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 12
    iput v0, p0, Lcom/mikepenz/materialize/holder/DimenHolder;->mPixel:I

    .line 13
    iput v0, p0, Lcom/mikepenz/materialize/holder/DimenHolder;->mDp:I

    .line 14
    iput v0, p0, Lcom/mikepenz/materialize/holder/DimenHolder;->mResource:I

    return-void
.end method

.method public static fromDp(I)Lcom/mikepenz/materialize/holder/DimenHolder;
    .locals 1

    .line 51
    new-instance v0, Lcom/mikepenz/materialize/holder/DimenHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialize/holder/DimenHolder;-><init>()V

    .line 52
    iput p0, v0, Lcom/mikepenz/materialize/holder/DimenHolder;->mDp:I

    return-object v0
.end method

.method public static fromPixel(I)Lcom/mikepenz/materialize/holder/DimenHolder;
    .locals 1

    .line 45
    new-instance v0, Lcom/mikepenz/materialize/holder/DimenHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialize/holder/DimenHolder;-><init>()V

    .line 46
    iput p0, v0, Lcom/mikepenz/materialize/holder/DimenHolder;->mPixel:I

    return-object v0
.end method

.method public static fromResource(I)Lcom/mikepenz/materialize/holder/DimenHolder;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 57
    new-instance v0, Lcom/mikepenz/materialize/holder/DimenHolder;

    invoke-direct {v0}, Lcom/mikepenz/materialize/holder/DimenHolder;-><init>()V

    .line 58
    iput p0, v0, Lcom/mikepenz/materialize/holder/DimenHolder;->mResource:I

    return-object v0
.end method


# virtual methods
.method public asPixel(Landroid/content/Context;)I
    .locals 2

    .line 63
    iget v0, p0, Lcom/mikepenz/materialize/holder/DimenHolder;->mPixel:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 64
    iget p1, p0, Lcom/mikepenz/materialize/holder/DimenHolder;->mPixel:I

    return p1

    .line 65
    :cond_0
    iget v0, p0, Lcom/mikepenz/materialize/holder/DimenHolder;->mDp:I

    if-eq v0, v1, :cond_1

    .line 66
    iget v0, p0, Lcom/mikepenz/materialize/holder/DimenHolder;->mDp:I

    int-to-float v0, v0

    invoke-static {v0, p1}, Lcom/mikepenz/materialize/util/UIUtils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    return p1

    .line 67
    :cond_1
    iget v0, p0, Lcom/mikepenz/materialize/holder/DimenHolder;->mResource:I

    if-eq v0, v1, :cond_2

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/mikepenz/materialize/holder/DimenHolder;->mResource:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getDp()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/mikepenz/materialize/holder/DimenHolder;->mDp:I

    return v0
.end method

.method public getPixel()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/mikepenz/materialize/holder/DimenHolder;->mPixel:I

    return v0
.end method

.method public getResource()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/mikepenz/materialize/holder/DimenHolder;->mResource:I

    return v0
.end method

.method public setDp(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/mikepenz/materialize/holder/DimenHolder;->mDp:I

    return-void
.end method

.method public setPixel(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/mikepenz/materialize/holder/DimenHolder;->mPixel:I

    return-void
.end method

.method public setResource(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/mikepenz/materialize/holder/DimenHolder;->mResource:I

    return-void
.end method
