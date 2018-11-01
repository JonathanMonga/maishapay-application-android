.class Lcom/rd/draw/drawer/type/BaseDrawer;
.super Ljava/lang/Object;
.source "BaseDrawer.java"


# instance fields
.field indicator:Lcom/rd/draw/data/Indicator;

.field paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/rd/draw/drawer/type/BaseDrawer;->paint:Landroid/graphics/Paint;

    .line 14
    iput-object p2, p0, Lcom/rd/draw/drawer/type/BaseDrawer;->indicator:Lcom/rd/draw/data/Indicator;

    return-void
.end method
