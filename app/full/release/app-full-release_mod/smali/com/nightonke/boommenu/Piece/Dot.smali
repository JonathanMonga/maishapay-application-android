.class final Lcom/nightonke/boommenu/Piece/Dot;
.super Lcom/nightonke/boommenu/Piece/BoomPiece;
.source "Dot.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/Piece/BoomPiece;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public init(IF)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 26
    sget v1, Lcom/nightonke/boommenu/R$drawable;->piece_dot:I

    invoke-static {p0, v1, v2}, Lcom/nightonke/boommenu/Util;->getDrawable(Landroid/view/View;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 28
    :cond_0
    sget v1, Lcom/nightonke/boommenu/R$drawable;->piece:I

    invoke-static {p0, v1, v2}, Lcom/nightonke/boommenu/Util;->getDrawable(Landroid/view/View;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 30
    :goto_0
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_1

    .line 31
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 32
    :cond_1
    invoke-static {p0, v1}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/nightonke/boommenu/Piece/Dot;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public setColorRes(I)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/nightonke/boommenu/Piece/Dot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/Piece/Dot;->setColor(I)V

    return-void
.end method
