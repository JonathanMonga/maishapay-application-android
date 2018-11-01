.class Lcom/nightonke/boommenu/BoomMenuButton$4;
.super Ljava/lang/Object;
.source "BoomMenuButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nightonke/boommenu/BoomMenuButton;->startEachBoomAnimation(Lcom/nightonke/boommenu/Piece/BoomPiece;Lcom/nightonke/boommenu/BoomButtons/BoomButton;Landroid/graphics/PointF;Landroid/graphics/PointF;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nightonke/boommenu/BoomMenuButton;

.field final synthetic val$boomButton:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

.field final synthetic val$delayFactor:I

.field final synthetic val$endPosition:Landroid/graphics/PointF;

.field final synthetic val$immediately:Z

.field final synthetic val$piece:Lcom/nightonke/boommenu/Piece/BoomPiece;

.field final synthetic val$startPosition:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/nightonke/boommenu/BoomMenuButton;Lcom/nightonke/boommenu/Piece/BoomPiece;Lcom/nightonke/boommenu/BoomButtons/BoomButton;Landroid/graphics/PointF;Landroid/graphics/PointF;IZ)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$4;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton$4;->val$piece:Lcom/nightonke/boommenu/Piece/BoomPiece;

    iput-object p3, p0, Lcom/nightonke/boommenu/BoomMenuButton$4;->val$boomButton:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    iput-object p4, p0, Lcom/nightonke/boommenu/BoomMenuButton$4;->val$startPosition:Landroid/graphics/PointF;

    iput-object p5, p0, Lcom/nightonke/boommenu/BoomMenuButton$4;->val$endPosition:Landroid/graphics/PointF;

    iput p6, p0, Lcom/nightonke/boommenu/BoomMenuButton$4;->val$delayFactor:I

    iput-boolean p7, p0, Lcom/nightonke/boommenu/BoomMenuButton$4;->val$immediately:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 696
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$4;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton$4;->val$piece:Lcom/nightonke/boommenu/Piece/BoomPiece;

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton$4;->val$boomButton:Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton$4;->val$startPosition:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/nightonke/boommenu/BoomMenuButton$4;->val$endPosition:Landroid/graphics/PointF;

    iget v5, p0, Lcom/nightonke/boommenu/BoomMenuButton$4;->val$delayFactor:I

    iget-boolean v6, p0, Lcom/nightonke/boommenu/BoomMenuButton$4;->val$immediately:Z

    invoke-static/range {v0 .. v6}, Lcom/nightonke/boommenu/BoomMenuButton;->access$1300(Lcom/nightonke/boommenu/BoomMenuButton;Lcom/nightonke/boommenu/Piece/BoomPiece;Lcom/nightonke/boommenu/BoomButtons/BoomButton;Landroid/graphics/PointF;Landroid/graphics/PointF;IZ)V

    return-void
.end method
