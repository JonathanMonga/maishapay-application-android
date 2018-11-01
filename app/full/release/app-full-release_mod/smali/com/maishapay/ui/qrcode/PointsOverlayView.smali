.class public Lcom/maishapay/ui/qrcode/PointsOverlayView;
.super Landroid/view/View;
.source "PointsOverlayView.java"


# instance fields
.field private paint:Landroid/graphics/Paint;

.field points:[Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0}, Lcom/maishapay/ui/qrcode/PointsOverlayView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Lcom/maishapay/ui/qrcode/PointsOverlayView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/maishapay/ui/qrcode/PointsOverlayView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/maishapay/ui/qrcode/PointsOverlayView;->paint:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/maishapay/ui/qrcode/PointsOverlayView;->paint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lcom/maishapay/ui/qrcode/PointsOverlayView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 44
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 45
    iget-object v0, p0, Lcom/maishapay/ui/qrcode/PointsOverlayView;->points:[Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/maishapay/ui/qrcode/PointsOverlayView;->points:[Landroid/graphics/PointF;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 47
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x41200000    # 10.0f

    iget-object v6, p0, Lcom/maishapay/ui/qrcode/PointsOverlayView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPoints([Landroid/graphics/PointF;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/maishapay/ui/qrcode/PointsOverlayView;->points:[Landroid/graphics/PointF;

    .line 39
    invoke-virtual {p0}, Lcom/maishapay/ui/qrcode/PointsOverlayView;->invalidate()V

    return-void
.end method
