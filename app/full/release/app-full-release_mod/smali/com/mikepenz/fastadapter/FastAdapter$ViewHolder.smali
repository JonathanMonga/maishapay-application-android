.class public abstract Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/FastAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1257
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public attachToWindow(Lcom/mikepenz/fastadapter/IItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract bindView(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public detachFromWindow(Lcom/mikepenz/fastadapter/IItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    return-void
.end method

.method public failedToRecycle(Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public abstract unbindView(Lcom/mikepenz/fastadapter/IItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation
.end method
