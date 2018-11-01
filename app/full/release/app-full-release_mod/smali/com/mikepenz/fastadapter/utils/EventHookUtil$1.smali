.class final Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;
.super Ljava/lang/Object;
.source "EventHookUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 58
    iput-object p1, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p2, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;->val$event:Lcom/mikepenz/fastadapter/listeners/EventHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 64
    instance-of v2, v0, Lcom/mikepenz/fastadapter/IItem;

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/mikepenz/fastadapter/FastAdapter;

    if-eqz v2, :cond_0

    .line 65
    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    .line 66
    check-cast v1, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 68
    iget-object v2, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getHolderAdapterPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;->val$event:Lcom/mikepenz/fastadapter/listeners/EventHook;

    check-cast v3, Lcom/mikepenz/fastadapter/listeners/ClickEventHook;

    invoke-virtual {v3, p1, v2, v1, v0}, Lcom/mikepenz/fastadapter/listeners/ClickEventHook;->onClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)V

    :cond_0
    return-void
.end method
