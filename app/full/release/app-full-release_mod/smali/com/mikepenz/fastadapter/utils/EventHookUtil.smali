.class public Lcom/mikepenz/fastadapter/utils/EventHookUtil;
.super Ljava/lang/Object;
.source "EventHookUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(",
            "Lcom/mikepenz/fastadapter/listeners/EventHook<",
            "TItem;>;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 57
    instance-of v0, p0, Lcom/mikepenz/fastadapter/listeners/ClickEventHook;

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;

    invoke-direct {v0, p1, p0}, Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/mikepenz/fastadapter/listeners/EventHook;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 77
    :cond_0
    instance-of v0, p0, Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$2;

    invoke-direct {v0, p1, p0}, Lcom/mikepenz/fastadapter/utils/EventHookUtil$2;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/mikepenz/fastadapter/listeners/EventHook;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 98
    :cond_1
    instance-of v0, p0, Lcom/mikepenz/fastadapter/listeners/TouchEventHook;

    if-eqz v0, :cond_2

    .line 99
    new-instance v0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;

    invoke-direct {v0, p1, p0}, Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/mikepenz/fastadapter/listeners/EventHook;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 119
    :cond_2
    instance-of v0, p0, Lcom/mikepenz/fastadapter/listeners/CustomEventHook;

    if-eqz v0, :cond_3

    .line 121
    check-cast p0, Lcom/mikepenz/fastadapter/listeners/CustomEventHook;

    invoke-virtual {p0, p2, p1}, Lcom/mikepenz/fastadapter/listeners/CustomEventHook;->attachEvent(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static bind(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Lcom/mikepenz/fastadapter/listeners/EventHook<",
            "TItem;>;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/listeners/EventHook;

    .line 35
    invoke-interface {v0, p0}, Lcom/mikepenz/fastadapter/listeners/EventHook;->onBind(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 37
    invoke-static {v0, p0, v1}, Lcom/mikepenz/fastadapter/utils/EventHookUtil;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 40
    :cond_2
    invoke-interface {v0, p0}, Lcom/mikepenz/fastadapter/listeners/EventHook;->onBindMany(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 42
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 43
    invoke-static {v0, p0, v2}, Lcom/mikepenz/fastadapter/utils/EventHookUtil;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static varargs toList([Landroid/view/View;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
