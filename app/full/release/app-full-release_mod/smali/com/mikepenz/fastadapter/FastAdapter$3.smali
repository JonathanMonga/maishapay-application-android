.class Lcom/mikepenz/fastadapter/FastAdapter$3;
.super Lcom/mikepenz/fastadapter/listeners/TouchEventHook;
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
        "Lcom/mikepenz/fastadapter/listeners/TouchEventHook<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/fastadapter/FastAdapter;


# direct methods
.method constructor <init>(Lcom/mikepenz/fastadapter/FastAdapter;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter$3;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-direct {p0}, Lcom/mikepenz/fastadapter/listeners/TouchEventHook;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 9
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

    .line 610
    invoke-static {p4}, Lcom/mikepenz/fastadapter/FastAdapter;->access$100(Lcom/mikepenz/fastadapter/FastAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/mikepenz/fastadapter/IAdapterExtension;

    if-nez v1, :cond_0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 612
    invoke-interface/range {v3 .. v8}, Lcom/mikepenz/fastadapter/IAdapterExtension;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z

    move-result v1

    goto :goto_0

    .line 617
    :cond_0
    invoke-static {p4}, Lcom/mikepenz/fastadapter/FastAdapter;->access$500(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {p4, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 620
    invoke-static {p4}, Lcom/mikepenz/fastadapter/FastAdapter;->access$500(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnTouchListener;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v6, p5

    move v7, p3

    invoke-interface/range {v2 .. v7}, Lcom/mikepenz/fastadapter/listeners/OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method
