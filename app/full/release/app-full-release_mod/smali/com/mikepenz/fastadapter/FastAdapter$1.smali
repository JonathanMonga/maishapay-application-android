.class Lcom/mikepenz/fastadapter/FastAdapter$1;
.super Lcom/mikepenz/fastadapter/listeners/ClickEventHook;
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
        "Lcom/mikepenz/fastadapter/listeners/ClickEventHook<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/fastadapter/FastAdapter;


# direct methods
.method constructor <init>(Lcom/mikepenz/fastadapter/FastAdapter;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-direct {p0}, Lcom/mikepenz/fastadapter/listeners/ClickEventHook;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;TItem;)V"
        }
    .end annotation

    .line 535
    invoke-virtual {p3, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_4

    .line 536
    invoke-interface {p4}, Lcom/mikepenz/fastadapter/IItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 539
    instance-of v2, p4, Lcom/mikepenz/fastadapter/IClickable;

    if-eqz v2, :cond_0

    move-object v3, p4

    check-cast v3, Lcom/mikepenz/fastadapter/IClickable;

    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IClickable;->getOnPreItemClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 540
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IClickable;->getOnPreItemClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1, v0, p4, p2}, Lcom/mikepenz/fastadapter/listeners/OnClickListener;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 544
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$000(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 545
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$000(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1, v0, p4, p2}, Lcom/mikepenz/fastadapter/listeners/OnClickListener;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result v1

    .line 549
    :cond_1
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$100(Lcom/mikepenz/fastadapter/FastAdapter;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mikepenz/fastadapter/IAdapterExtension;

    if-nez v1, :cond_2

    .line 551
    invoke-interface {v4, p1, p2, p3, p4}, Lcom/mikepenz/fastadapter/IAdapterExtension;->onClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z

    move-result v1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    .line 558
    move-object v2, p4

    check-cast v2, Lcom/mikepenz/fastadapter/IClickable;

    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IClickable;->getOnItemClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 559
    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IClickable;->getOnItemClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1, v0, p4, p2}, Lcom/mikepenz/fastadapter/listeners/OnClickListener;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result v1

    :cond_3
    if-nez v1, :cond_4

    .line 563
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$200(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 564
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$200(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object p3

    invoke-interface {p3, p1, v0, p4, p2}, Lcom/mikepenz/fastadapter/listeners/OnClickListener;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    :cond_4
    return-void
.end method
