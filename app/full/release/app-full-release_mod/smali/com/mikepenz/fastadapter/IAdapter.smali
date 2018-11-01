.class public interface abstract Lcom/mikepenz/fastadapter/IAdapter;
.super Ljava/lang/Object;
.source "IAdapter.java"


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
.method public abstract getAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation
.end method

.method public abstract getAdapterItemCount()I
.end method

.method public abstract getAdapterItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end method

.method public abstract getAdapterPosition(J)I
.end method

.method public abstract getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)I"
        }
    .end annotation
.end method

.method public abstract getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation
.end method

.method public abstract getGlobalPosition(I)I
.end method

.method public abstract getOrder()I
.end method

.method public abstract setOrder(I)V
.end method

.method public abstract withFastAdapter(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;"
        }
    .end annotation
.end method
