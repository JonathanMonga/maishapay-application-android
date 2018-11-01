.class public Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;
.super Ljava/lang/Object;
.source "DefaultTypeInstanceCache.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/ITypeInstanceCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/ITypeInstanceCache<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field private final mTypeInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;->mTypeInstances:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;->mTypeInstances:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public get(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;->mTypeInstances:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItem;

    return-object p1
.end method

.method public register(Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;->mTypeInstances:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;->mTypeInstances:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
