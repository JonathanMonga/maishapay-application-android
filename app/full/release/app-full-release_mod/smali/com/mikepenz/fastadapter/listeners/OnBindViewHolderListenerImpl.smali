.class public Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListenerImpl;
.super Ljava/lang/Object;
.source "OnBindViewHolderListenerImpl.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 23
    instance-of v1, v0, Lcom/mikepenz/fastadapter/FastAdapter;

    if-eqz v1, :cond_1

    .line 24
    check-cast v0, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 25
    invoke-virtual {v0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 27
    instance-of v0, p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 28
    move-object v0, p1

    check-cast v0, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    invoke-virtual {v0, p2, p3}, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;->bindView(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {p2, p1, p3}, Lcom/mikepenz/fastadapter/IItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 33
    :goto_0
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p3, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item:I

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Z
    .locals 1

    .line 111
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mikepenz/fastadapter/IItem;

    if-eqz p2, :cond_1

    .line 113
    instance-of v0, p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    invoke-virtual {p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;->failedToRecycle(Lcom/mikepenz/fastadapter/IItem;)Z

    move-result p1

    return p1

    .line 116
    :cond_0
    invoke-interface {p2, p1}, Lcom/mikepenz/fastadapter/IItem;->failedToRecycle(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 69
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mikepenz/fastadapter/IItem;

    if-eqz p2, :cond_1

    .line 72
    :try_start_0
    instance-of v0, p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    invoke-virtual {p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;->attachToWindow(Lcom/mikepenz/fastadapter/IItem;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {p2, p1}, Lcom/mikepenz/fastadapter/IItem;->attachToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "FastAdapter"

    .line 78
    invoke-virtual {p1}, Ljava/lang/AbstractMethodError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 91
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mikepenz/fastadapter/IItem;

    if-eqz p2, :cond_1

    .line 93
    instance-of v0, p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    invoke-virtual {p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;->detachFromWindow(Lcom/mikepenz/fastadapter/IItem;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-interface {p2, p1}, Lcom/mikepenz/fastadapter/IItem;->detachFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 46
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mikepenz/fastadapter/IItem;

    if-eqz p2, :cond_1

    .line 48
    instance-of v0, p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p1

    check-cast v0, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    invoke-virtual {v0, p2}, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;->unbindView(Lcom/mikepenz/fastadapter/IItem;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {p2, p1}, Lcom/mikepenz/fastadapter/IItem;->unbindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 54
    :goto_0
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 55
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p1, "FastAdapter"

    const-string p2, "The bindView method of this item should set the `Tag` on its itemView (https://github.com/mikepenz/FastAdapter/blob/develop/library-core/src/main/java/com/mikepenz/fastadapter/items/AbstractItem.java#L189)"

    .line 57
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
