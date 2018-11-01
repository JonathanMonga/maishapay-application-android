.class Lcom/nightonke/boommenu/BoomMenuButton$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BoomMenuButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nightonke/boommenu/BoomMenuButton;->dimBackground(Z)V
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

    .line 606
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$3;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 609
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 610
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$3;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    sget-object v0, Lcom/nightonke/boommenu/BoomStateEnum;->DidBoom:Lcom/nightonke/boommenu/BoomStateEnum;

    invoke-static {p1, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$1102(Lcom/nightonke/boommenu/BoomMenuButton;Lcom/nightonke/boommenu/BoomStateEnum;)Lcom/nightonke/boommenu/BoomStateEnum;

    .line 611
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$3;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$1200(Lcom/nightonke/boommenu/BoomMenuButton;)Lcom/nightonke/boommenu/OnBoomListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$3;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$1200(Lcom/nightonke/boommenu/BoomMenuButton;)Lcom/nightonke/boommenu/OnBoomListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/nightonke/boommenu/OnBoomListener;->onBoomDidShow()V

    :cond_0
    return-void
.end method
