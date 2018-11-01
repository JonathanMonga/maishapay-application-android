.class Lcom/nightonke/boommenu/BoomButtons/BoomButton$3;
.super Ljava/lang/Object;
.source "BoomButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nightonke/boommenu/BoomButtons/BoomButton;->initHamButton()V
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

    .line 473
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$3;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 476
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$3;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    invoke-static {p1}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->access$000(Lcom/nightonke/boommenu/BoomButtons/BoomButton;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 477
    :cond_0
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$3;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    iget-object p1, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->listener:Lcom/nightonke/boommenu/BoomButtons/InnerOnBoomButtonClickListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$3;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    iget-object p1, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->listener:Lcom/nightonke/boommenu/BoomButtons/InnerOnBoomButtonClickListener;

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$3;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    iget v0, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->index:I

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$3;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    invoke-interface {p1, v0, v1}, Lcom/nightonke/boommenu/BoomButtons/InnerOnBoomButtonClickListener;->onButtonClick(ILcom/nightonke/boommenu/BoomButtons/BoomButton;)V

    .line 478
    :cond_1
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$3;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    iget-object p1, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->onBMClickListener:Lcom/nightonke/boommenu/BoomButtons/OnBMClickListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$3;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    iget-object p1, p1, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->onBMClickListener:Lcom/nightonke/boommenu/BoomButtons/OnBMClickListener;

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomButtons/BoomButton$3;->this$0:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    iget v0, v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->index:I

    invoke-interface {p1, v0}, Lcom/nightonke/boommenu/BoomButtons/OnBMClickListener;->onBoomButtonClick(I)V

    :cond_2
    return-void
.end method
