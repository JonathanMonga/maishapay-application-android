.class Lcom/rd/animation/type/WormAnimation$RectValues;
.super Ljava/lang/Object;
.source "WormAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rd/animation/type/WormAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RectValues"
.end annotation


# instance fields
.field final fromX:I

.field final reverseFromX:I

.field final reverseToX:I

.field final synthetic this$0:Lcom/rd/animation/type/WormAnimation;

.field final toX:I


# direct methods
.method constructor <init>(Lcom/rd/animation/type/WormAnimation;IIII)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/rd/animation/type/WormAnimation$RectValues;->this$0:Lcom/rd/animation/type/WormAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput p2, p0, Lcom/rd/animation/type/WormAnimation$RectValues;->fromX:I

    .line 193
    iput p3, p0, Lcom/rd/animation/type/WormAnimation$RectValues;->toX:I

    .line 195
    iput p4, p0, Lcom/rd/animation/type/WormAnimation$RectValues;->reverseFromX:I

    .line 196
    iput p5, p0, Lcom/rd/animation/type/WormAnimation$RectValues;->reverseToX:I

    return-void
.end method
