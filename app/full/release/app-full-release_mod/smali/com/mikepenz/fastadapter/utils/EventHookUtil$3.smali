.class final Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;
.super Ljava/lang/Object;
.source "EventHookUtil.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/fastadapter/utils/EventHookUtil;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$event:Lcom/mikepenz/fastadapter/listeners/EventHook;

.field final synthetic val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/mikepenz/fastadapter/listeners/EventHook;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p2, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;->val$event:Lcom/mikepenz/fastadapter/listeners/EventHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 103
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 105
    instance-of v2, v0, Lcom/mikepenz/fastadapter/IItem;

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/mikepenz/fastadapter/FastAdapter;

    if-eqz v2, :cond_0

    .line 106
    move-object v8, v0

    check-cast v8, Lcom/mikepenz/fastadapter/IItem;

    .line 107
    move-object v7, v1

    check-cast v7, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 109
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v7, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getHolderAdapterPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v6

    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;->val$event:Lcom/mikepenz/fastadapter/listeners/EventHook;

    move-object v3, v0

    check-cast v3, Lcom/mikepenz/fastadapter/listeners/TouchEventHook;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/mikepenz/fastadapter/listeners/TouchEventHook;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
