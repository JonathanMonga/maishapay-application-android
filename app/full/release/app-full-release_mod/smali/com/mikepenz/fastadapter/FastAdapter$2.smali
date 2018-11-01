.class Lcom/mikepenz/fastadapter/FastAdapter$2;
.super Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;
.source "FastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/FastAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/fastadapter/listeners/LongClickEventHook<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/fastadapter/FastAdapter;


# direct methods
.method constructor <init>(Lcom/mikepenz/fastadapter/FastAdapter;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter$2;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-direct {p0}, Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;TItem;)Z"
        }
    .end annotation

    .line 577
    invoke-virtual {p3, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    .line 578
    invoke-interface {p4}, Lcom/mikepenz/fastadapter/IItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 580
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$300(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 581
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$300(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    move-result-object v1

    invoke-interface {v1, p1, v0, p4, p2}, Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;->onLongClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result v1

    .line 585
    :cond_0
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$100(Lcom/mikepenz/fastadapter/FastAdapter;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/fastadapter/IAdapterExtension;

    if-nez v1, :cond_1

    .line 587
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mikepenz/fastadapter/IAdapterExtension;->onLongClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z

    move-result v1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 594
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$400(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 595
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$400(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    move-result-object p3

    invoke-interface {p3, p1, v0, p4, p2}, Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;->onLongClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result v1

    :cond_2
    return v1
.end method
