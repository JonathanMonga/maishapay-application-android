.class Lcom/mikepenz/materialize/util/KeyboardUtil$1;
.super Ljava/lang/Object;
.source "KeyboardUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialize/util/KeyboardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/materialize/util/KeyboardUtil;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialize/util/KeyboardUtil;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mikepenz/materialize/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/mikepenz/materialize/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-static {v1}, Lcom/mikepenz/materialize/util/KeyboardUtil;->access$000(Lcom/mikepenz/materialize/util/KeyboardUtil;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 69
    iget-object v1, p0, Lcom/mikepenz/materialize/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-static {v1}, Lcom/mikepenz/materialize/util/KeyboardUtil;->access$000(Lcom/mikepenz/materialize/util/KeyboardUtil;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    int-to-float v0, v1

    iget-object v1, p0, Lcom/mikepenz/materialize/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-static {v1}, Lcom/mikepenz/materialize/util/KeyboardUtil;->access$000(Lcom/mikepenz/materialize/util/KeyboardUtil;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mikepenz/materialize/util/UIUtils;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/mikepenz/materialize/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-static {v1}, Lcom/mikepenz/materialize/util/KeyboardUtil;->access$100(Lcom/mikepenz/materialize/util/KeyboardUtil;)F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/mikepenz/materialize/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-static {v1, v0}, Lcom/mikepenz/materialize/util/KeyboardUtil;->access$102(Lcom/mikepenz/materialize/util/KeyboardUtil;F)F

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/materialize/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-static {v1}, Lcom/mikepenz/materialize/util/KeyboardUtil;->access$100(Lcom/mikepenz/materialize/util/KeyboardUtil;)F

    move-result v1

    sub-float v1, v0, v1

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/mikepenz/materialize/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-static {v1}, Lcom/mikepenz/materialize/util/KeyboardUtil;->access$200(Lcom/mikepenz/materialize/util/KeyboardUtil;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-nez v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/mikepenz/materialize/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-static {v1}, Lcom/mikepenz/materialize/util/KeyboardUtil;->access$200(Lcom/mikepenz/materialize/util/KeyboardUtil;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/mikepenz/materialize/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-static {v3}, Lcom/mikepenz/materialize/util/KeyboardUtil;->access$100(Lcom/mikepenz/materialize/util/KeyboardUtil;)F

    move-result v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/mikepenz/materialize/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-static {v3}, Lcom/mikepenz/materialize/util/KeyboardUtil;->access$000(Lcom/mikepenz/materialize/util/KeyboardUtil;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mikepenz/materialize/util/UIUtils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/materialize/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-static {v0}, Lcom/mikepenz/materialize/util/KeyboardUtil;->access$200(Lcom/mikepenz/materialize/util/KeyboardUtil;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/mikepenz/materialize/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-static {v0}, Lcom/mikepenz/materialize/util/KeyboardUtil;->access$200(Lcom/mikepenz/materialize/util/KeyboardUtil;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    :goto_0
    return-void
.end method
