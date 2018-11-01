.class Lcom/nightonke/boommenu/BoomButtons/BoomButton$2;
.super Ljava/lang/Object;
.source "BoomButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nightonke/boommenu/BoomButtons/BoomButton;->initCircleButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;


# direct methods
.method constructor <init>(Lcom/nightonke/boommenu/BoomButtons/BoomButton;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$2;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 410
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$2;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    invoke-static {p1}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->access$000(Lcom/nightonke/boommenu/BoomButtons/BoomButton;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 411
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 419
    :pswitch_0
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p1, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$2;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    iget-object p2, p2, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lcom/nightonke/boommenu/Util;->pointInView(Landroid/graphics/PointF;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 420
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$2;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    invoke-virtual {p1}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toHighlighted()V

    goto :goto_0

    .line 422
    :cond_1
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$2;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    iput-boolean v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->ableToHighlight:Z

    .line 423
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$2;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    invoke-virtual {p1}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toNormal()V

    goto :goto_0

    .line 428
    :pswitch_1
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$2;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    iput-boolean v0, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->ableToHighlight:Z

    .line 429
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$2;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    invoke-virtual {p1}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toNormal()V

    goto :goto_0

    .line 413
    :pswitch_2
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p1, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p2, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$2;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    iget-object p2, p2, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->button:Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lcom/nightonke/boommenu/Util;->pointInView(Landroid/graphics/PointF;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 414
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$2;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    invoke-virtual {p1}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->toHighlighted()V

    .line 415
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$2;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->ableToHighlight:Z

    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
