.class Lcom/nightonke/boommenu/BoomMenuButton$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BoomMenuButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nightonke/boommenu/BoomMenuButton;->innerStartEachBoomAnimation(Lcom/nightonke/boommenu/Piece/BoomPiece;Lcom/nightonke/boommenu/BoomButtons/BoomButton;Landroid/graphics/PointF;Landroid/graphics/PointF;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nightonke/boommenu/BoomMenuButton;

.field final synthetic val$boomButton:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

.field final synthetic val$piece:Lcom/nightonke/boommenu/Piece/BoomPiece;


# direct methods
.method constructor <init>(Lcom/nightonke/boommenu/BoomMenuButton;Lcom/nightonke/boommenu/Piece/BoomPiece;Lcom/nightonke/boommenu/BoomButtons/BoomButton;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$5;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton$5;->val$piece:Lcom/nightonke/boommenu/Piece/BoomPiece;

    iput-object p3, p0, Lcom/nightonke/boommenu/BoomMenuButton$5;->val$boomButton:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 747
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 748
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$5;->val$boomButton:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    invoke-virtual {p1}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->didShow()V

    .line 749
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$5;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$1410(Lcom/nightonke/boommenu/BoomMenuButton;)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 739
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 740
    new-array v0, p1, [Landroid/view/View;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton$5;->val$piece:Lcom/nightonke/boommenu/Piece/BoomPiece;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/nightonke/boommenu/Util;->setVisibility(I[Landroid/view/View;)V

    .line 741
    new-array p1, p1, [Landroid/view/View;

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$5;->val$boomButton:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    aput-object v0, p1, v2

    invoke-static {v2, p1}, Lcom/nightonke/boommenu/Util;->setVisibility(I[Landroid/view/View;)V

    .line 742
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$5;->val$boomButton:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    invoke-virtual {p1}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->willShow()V

    return-void
.end method
