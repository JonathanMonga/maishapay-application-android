.class final Lcom/nightonke/boommenu/Piece/Ham;
.super Lcom/nightonke/boommenu/Piece/BoomPiece;
.source "Ham.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/Piece/BoomPiece;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public init(IF)V
    .locals 2

    .line 25
    sget v0, Lcom/nightonke/boommenu/R$drawable;->piece:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/nightonke/boommenu/Util;->getDrawable(Landroid/view/View;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 26
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 27
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 28
    invoke-static {p0, v0}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/nightonke/boommenu/Piece/Ham;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public setColorRes(I)V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/nightonke/boommenu/Piece/Ham;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/Piece/Ham;->setColor(I)V

    return-void
.end method
