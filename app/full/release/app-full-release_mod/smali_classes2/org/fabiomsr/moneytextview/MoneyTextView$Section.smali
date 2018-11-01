.class Lorg/fabiomsr/moneytextview/MoneyTextView$Section;
.super Ljava/lang/Object;
.source "MoneyTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fabiomsr/moneytextview/MoneyTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Section"
.end annotation


# instance fields
.field public bounds:Landroid/graphics/Rect;

.field public color:I

.field public drawUnderline:Z

.field public height:I

.field public text:Ljava/lang/String;

.field public textSize:F

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->bounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public calculateBounds(Landroid/text/TextPaint;)V
    .locals 4

    .line 387
    iget v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->textSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 388
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->text:Ljava/lang/String;

    iget-object v1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->bounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 389
    iget-object p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->width:I

    .line 390
    iget-object p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->height:I

    return-void
.end method

.method public calculateNumbersHeight(Landroid/text/TextPaint;)V
    .locals 4

    .line 394
    iget-object v0, p0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->text:Ljava/lang/String;

    const-string v1, "[^0-9]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    iget v1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->textSize:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 396
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->bounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 397
    iget-object p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lorg/fabiomsr/moneytextview/MoneyTextView$Section;->height:I

    return-void
.end method
