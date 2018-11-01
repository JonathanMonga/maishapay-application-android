.class public Lcom/rd/animation/data/type/ScaleAnimationValue;
.super Lcom/rd/animation/data/type/ColorAnimationValue;
.source "ScaleAnimationValue.java"

# interfaces
.implements Lcom/rd/animation/data/Value;


# instance fields
.field private radius:I

.field private radiusReverse:I


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

    .line 11
    iget v0, p0, Lcom/rd/animation/data/type/ScaleAnimationValue;->radius:I

    return v0
.end method

.method public getRadiusReverse()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/rd/animation/data/type/ScaleAnimationValue;->radiusReverse:I

    return v0
.end method

.method public setRadius(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/rd/animation/data/type/ScaleAnimationValue;->radius:I

    return-void
.end method

.method public setRadiusReverse(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/rd/animation/data/type/ScaleAnimationValue;->radiusReverse:I

    return-void
.end method
