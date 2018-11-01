.class public interface abstract Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;
.super Ljava/lang/Object;
.source "OnCreateViewHolderListener.java"


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
.method public abstract onPostCreateViewHolder(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
        }
    .end annotation
.end method

.method public abstract onPreCreateViewHolder(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
        }
    .end annotation
.end method
