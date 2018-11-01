.class public abstract Lcom/mikepenz/fastadapter/listeners/CustomEventHook;
.super Ljava/lang/Object;
.source "CustomEventHook.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/listeners/EventHook;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/listeners/EventHook<",
        "TItem;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract attachEvent(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public getFastAdapter(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 31
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 32
    instance-of v0, p1, Lcom/mikepenz/fastadapter/FastAdapter;

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lcom/mikepenz/fastadapter/FastAdapter;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/IItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")TItem;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/listeners/CustomEventHook;->getFastAdapter(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 51
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getHolderAdapterPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 55
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 56
    instance-of v0, p1, Lcom/mikepenz/fastadapter/IItem;

    if-eqz v0, :cond_1

    .line 57
    check-cast p1, Lcom/mikepenz/fastadapter/IItem;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public onBind(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onBindMany(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
