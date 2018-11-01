.class public interface abstract Lcom/mikepenz/fastadapter/IAdapterExtension;
.super Ljava/lang/Object;
.source "IAdapterExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract init(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapterExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "TItem;>;"
        }
    .end annotation
.end method

.method public abstract notifyAdapterDataSetChanged()V
.end method

.method public abstract notifyAdapterItemMoved(II)V
.end method

.method public abstract notifyAdapterItemRangeChanged(IILjava/lang/Object;)V
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract notifyAdapterItemRangeInserted(II)V
.end method

.method public abstract notifyAdapterItemRangeRemoved(II)V
.end method

.method public abstract onClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;TItem;)Z"
        }
    .end annotation
.end method

.method public abstract onLongClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;TItem;)Z"
        }
    .end annotation
.end method

.method public abstract onTouch(Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/MotionEvent;",
            "I",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;TItem;)Z"
        }
    .end annotation
.end method

.method public abstract performFiltering(Ljava/lang/CharSequence;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract set(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;Z)V"
        }
    .end annotation
.end method

.method public abstract withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
