.class public Lcom/rd/animation/data/type/WormAnimationValue;
.super Ljava/lang/Object;
.source "WormAnimationValue.java"

# interfaces
.implements Lcom/rd/animation/data/Value;


# instance fields
.field private rectEnd:I

.field private rectStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRectEnd()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/rd/animation/data/type/WormAnimationValue;->rectEnd:I

    return v0
.end method

.method public getRectStart()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/rd/animation/data/type/WormAnimationValue;->rectStart:I

    return v0
.end method

.method public setRectEnd(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/rd/animation/data/type/WormAnimationValue;->rectEnd:I

    return-void
.end method

.method public setRectStart(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/rd/animation/data/type/WormAnimationValue;->rectStart:I

    return-void
.end method
