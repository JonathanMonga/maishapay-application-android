.class public Lcom/rd/animation/data/type/ColorAnimationValue;
.super Ljava/lang/Object;
.source "ColorAnimationValue.java"

# interfaces
.implements Lcom/rd/animation/data/Value;


# instance fields
.field private color:I

.field private colorReverse:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/rd/animation/data/type/ColorAnimationValue;->color:I

    return v0
.end method

.method public getColorReverse()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/rd/animation/data/type/ColorAnimationValue;->colorReverse:I

    return v0
.end method

.method public setColor(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/rd/animation/data/type/ColorAnimationValue;->color:I

    return-void
.end method

.method public setColorReverse(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/rd/animation/data/type/ColorAnimationValue;->colorReverse:I

    return-void
.end method
