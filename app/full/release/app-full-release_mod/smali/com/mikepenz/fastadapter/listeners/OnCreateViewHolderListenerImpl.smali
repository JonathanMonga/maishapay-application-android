.class public Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListenerImpl;
.super Ljava/lang/Object;
.source "OnCreateViewHolderListenerImpl.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener<",
        "TItem;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostCreateViewHolder(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
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

    .line 34
    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getEventHooks()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mikepenz/fastadapter/utils/EventHookUtil;->bind(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    return-object p2
.end method

.method public onPreCreateViewHolder(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
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

    .line 23
    invoke-virtual {p1, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->getTypeInstance(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/mikepenz/fastadapter/IItem;->getViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
