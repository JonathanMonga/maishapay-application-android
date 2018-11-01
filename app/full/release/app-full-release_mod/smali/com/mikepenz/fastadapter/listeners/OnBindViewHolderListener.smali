.class public interface abstract Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;
.super Ljava/lang/Object;
.source "OnBindViewHolderListener.java"


# virtual methods
.method public abstract onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
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
.end method

.method public abstract onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Z
.end method

.method public abstract onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end method

.method public abstract onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end method

.method public abstract unBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end method
