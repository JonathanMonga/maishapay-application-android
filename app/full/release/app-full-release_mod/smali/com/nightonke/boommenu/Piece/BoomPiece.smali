.class public abstract Lcom/nightonke/boommenu/Piece/BoomPiece;
.super Landroid/view/View;
.source "BoomPiece.java"


# instance fields
.field private requestLayoutNotFinish:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/nightonke/boommenu/Piece/BoomPiece;->requestLayoutNotFinish:Z

    return-void
.end method


# virtual methods
.method public abstract init(IF)V
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 50
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/nightonke/boommenu/Piece/BoomPiece;->requestLayoutNotFinish:Z

    return-void
.end method

.method public place(Landroid/graphics/RectF;)V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lcom/nightonke/boommenu/Piece/BoomPiece;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 33
    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 34
    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 35
    iget v1, p1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 36
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 37
    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/Piece/BoomPiece;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/nightonke/boommenu/Piece/BoomPiece;->requestLayoutNotFinish:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/nightonke/boommenu/Piece/BoomPiece;->requestLayoutNotFinish:Z

    .line 45
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public abstract setColor(I)V
.end method

.method public abstract setColorRes(I)V
.end method
