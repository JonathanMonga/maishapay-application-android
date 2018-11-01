.class Lcom/nightonke/boommenu/BoomMenuButton$2;
.super Ljava/lang/Object;
.source "BoomMenuButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nightonke/boommenu/BoomMenuButton;->initDraggableTouchListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nightonke/boommenu/BoomMenuButton;


# direct methods
.method constructor <init>(Lcom/nightonke/boommenu/BoomMenuButton;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 471
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 505
    :pswitch_0
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$600(Lcom/nightonke/boommenu/BoomMenuButton;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 506
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1, v1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$502(Lcom/nightonke/boommenu/BoomMenuButton;Z)Z

    .line 507
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1, v1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$602(Lcom/nightonke/boommenu/BoomMenuButton;Z)Z

    .line 508
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$802(Lcom/nightonke/boommenu/BoomMenuButton;Z)Z

    .line 509
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$900(Lcom/nightonke/boommenu/BoomMenuButton;)V

    return v0

    .line 481
    :pswitch_1
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$300(Lcom/nightonke/boommenu/BoomMenuButton;)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float p1, p1, v2

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    .line 482
    invoke-static {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$400(Lcom/nightonke/boommenu/BoomMenuButton;)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    .line 483
    :cond_0
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$502(Lcom/nightonke/boommenu/BoomMenuButton;Z)Z

    .line 484
    :cond_1
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$000(Lcom/nightonke/boommenu/BoomMenuButton;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$500(Lcom/nightonke/boommenu/BoomMenuButton;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 485
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$602(Lcom/nightonke/boommenu/BoomMenuButton;Z)Z

    .line 486
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$700(Lcom/nightonke/boommenu/BoomMenuButton;)Lcom/nightonke/boommenu/BMBShadow;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 487
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {v2}, Lcom/nightonke/boommenu/BoomMenuButton;->access$100(Lcom/nightonke/boommenu/BoomMenuButton;)F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->setX(F)V

    .line 488
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$200(Lcom/nightonke/boommenu/BoomMenuButton;)F

    move-result v0

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomMenuButton;->setY(F)V

    goto :goto_0

    .line 491
    :cond_2
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1, v1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$502(Lcom/nightonke/boommenu/BoomMenuButton;Z)Z

    goto :goto_0

    .line 495
    :pswitch_2
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$600(Lcom/nightonke/boommenu/BoomMenuButton;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 496
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1, v1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$502(Lcom/nightonke/boommenu/BoomMenuButton;Z)Z

    .line 497
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1, v1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$602(Lcom/nightonke/boommenu/BoomMenuButton;Z)Z

    .line 498
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$802(Lcom/nightonke/boommenu/BoomMenuButton;Z)Z

    .line 499
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$900(Lcom/nightonke/boommenu/BoomMenuButton;)V

    .line 500
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$1000(Lcom/nightonke/boommenu/BoomMenuButton;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    return v0

    .line 473
    :pswitch_3
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$000(Lcom/nightonke/boommenu/BoomMenuButton;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 474
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomMenuButton;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$102(Lcom/nightonke/boommenu/BoomMenuButton;F)F

    .line 475
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomMenuButton;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$202(Lcom/nightonke/boommenu/BoomMenuButton;F)F

    .line 476
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$302(Lcom/nightonke/boommenu/BoomMenuButton;F)F

    .line 477
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$2;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/nightonke/boommenu/BoomMenuButton;->access$402(Lcom/nightonke/boommenu/BoomMenuButton;F)F

    :cond_3
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
