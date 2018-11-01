.class Lcom/rd/animation/type/DropAnimation$1;
.super Ljava/lang/Object;
.source "DropAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rd/animation/type/DropAnimation;->createValueAnimation(IIJLcom/rd/animation/type/DropAnimation$AnimationType;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rd/animation/type/DropAnimation;

.field final synthetic val$type:Lcom/rd/animation/type/DropAnimation$AnimationType;


# direct methods
.method constructor <init>(Lcom/rd/animation/type/DropAnimation;Lcom/rd/animation/type/DropAnimation$AnimationType;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/rd/animation/type/DropAnimation$1;->this$0:Lcom/rd/animation/type/DropAnimation;

    iput-object p2, p0, Lcom/rd/animation/type/DropAnimation$1;->val$type:Lcom/rd/animation/type/DropAnimation$AnimationType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/rd/animation/type/DropAnimation$1;->this$0:Lcom/rd/animation/type/DropAnimation;

    iget-object v1, p0, Lcom/rd/animation/type/DropAnimation$1;->val$type:Lcom/rd/animation/type/DropAnimation$AnimationType;

    invoke-static {v0, p1, v1}, Lcom/rd/animation/type/DropAnimation;->access$000(Lcom/rd/animation/type/DropAnimation;Landroid/animation/ValueAnimator;Lcom/rd/animation/type/DropAnimation$AnimationType;)V

    return-void
.end method
