.class public Lcom/rd/animation/data/type/FillAnimationValue;
.super Lcom/rd/animation/data/type/ColorAnimationValue;
.source "FillAnimationValue.java"

# interfaces
.implements Lcom/rd/animation/data/Value;


# instance fields
.field private radius:I

.field private radiusReverse:I

.field private stroke:I

.field private strokeReverse:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/rd/animation/data/type/ColorAnimationValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getRadius()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/rd/animation/data/type/FillAnimationValue;->radius:I

    return v0
.end method

.method public getRadiusReverse()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/rd/animation/data/type/FillAnimationValue;->radiusReverse:I

    return v0
.end method

.method public getStroke()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/rd/animation/data/type/FillAnimationValue;->stroke:I

    return v0
.end method

.method public getStrokeReverse()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/rd/animation/data/type/FillAnimationValue;->strokeReverse:I

    return v0
.end method

.method public setRadius(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/rd/animation/data/type/FillAnimationValue;->radius:I

    return-void
.end method

.method public setRadiusReverse(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/rd/animation/data/type/FillAnimationValue;->radiusReverse:I

    return-void
.end method

.method public setStroke(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/rd/animation/data/type/FillAnimationValue;->stroke:I

    return-void
.end method

.method public setStrokeReverse(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/rd/animation/data/type/FillAnimationValue;->strokeReverse:I

    return-void
.end method
