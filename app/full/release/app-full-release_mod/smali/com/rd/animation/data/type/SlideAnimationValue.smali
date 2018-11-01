.class public Lcom/rd/animation/data/type/SlideAnimationValue;
.super Ljava/lang/Object;
.source "SlideAnimationValue.java"

# interfaces
.implements Lcom/rd/animation/data/Value;


# instance fields
.field private coordinate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoordinate()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/rd/animation/data/type/SlideAnimationValue;->coordinate:I

    return v0
.end method

.method public setCoordinate(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/rd/animation/data/type/SlideAnimationValue;->coordinate:I

    return-void
.end method
