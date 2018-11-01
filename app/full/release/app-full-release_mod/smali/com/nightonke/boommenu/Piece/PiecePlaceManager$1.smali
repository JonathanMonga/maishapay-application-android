.class final Lcom/nightonke/boommenu/Piece/PiecePlaceManager$1;
.super Ljava/lang/Object;
.source "PiecePlaceManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->getShareDotPositions(Lcom/nightonke/boommenu/BoomMenuButton;Landroid/graphics/Point;I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/RectF;Landroid/graphics/RectF;)I
    .locals 2

    .line 419
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 420
    :cond_0
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 416
    check-cast p1, Landroid/graphics/RectF;

    check-cast p2, Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager$1;->compare(Landroid/graphics/RectF;Landroid/graphics/RectF;)I

    move-result p1

    return p1
.end method
