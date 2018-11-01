.class public Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
.super Lcom/mikepenz/fastadapter/AbstractAdapter;
.source "ModelAdapter.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IItemAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Lcom/mikepenz/fastadapter/AbstractAdapter<",
        "TItem;>;",
        "Lcom/mikepenz/fastadapter/IItemAdapter<",
        "TModel;TItem;>;"
    }
.end annotation


# instance fields
.field protected mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mIdDistributor:Lcom/mikepenz/fastadapter/IIdDistributor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IIdDistributor<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IInterceptor<",
            "TModel;TItem;>;"
        }
    .end annotation
.end field

.field private mItemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/adapters/ItemFilter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end field

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mReverseInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IInterceptor<",
            "TItem;TModel;>;"
        }
    .end annotation
.end field

.field private mUseIdDistributor:Z


# direct methods
.method public constructor <init>(Lcom/mikepenz/fastadapter/IInterceptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IInterceptor<",
            "TModel;TItem;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/AbstractAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mUseIdDistributor:Z

    .line 121
    new-instance v0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    invoke-direct {v0, p0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;-><init>(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;)V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    .line 29
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;

    return-void
.end method

.method private intercept(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)TItem;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IInterceptor;->intercept(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItem;

    return-object p1
.end method

.method private intercept(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TModel;>;)",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 72
    invoke-direct {p0, v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static models(Lcom/mikepenz/fastadapter/IInterceptor;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(",
            "Lcom/mikepenz/fastadapter/IInterceptor<",
            "TModel;TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-direct {v0, p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;-><init>(Lcom/mikepenz/fastadapter/IInterceptor;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(ILjava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 24
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TModel;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 466
    invoke-direct {p0, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final varargs add(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TModel;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 456
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TModel;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 427
    invoke-direct {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 428
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final varargs add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TModel;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 418
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 471
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mUseIdDistributor:Z

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    :cond_0
    if-eqz p2, :cond_1

    .line 474
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 476
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mapPossibleTypes(Ljava/lang/Iterable;)V

    .line 478
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeInserted(II)V

    :cond_1
    return-object p0
.end method

.method public addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 432
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mUseIdDistributor:Z

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 436
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 437
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mapPossibleTypes(Ljava/lang/Iterable;)V

    .line 439
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    if-nez v1, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeInserted(II)V

    goto :goto_0

    .line 442
    :cond_1
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 443
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->clear()Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 559
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 560
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    return-object p0
.end method

.method public filter(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 147
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItem;

    return-object p1
.end method

.method public getAdapterItemCount()I
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAdapterItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getAdapterPosition(J)I
    .locals 5

    .line 245
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 246
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)I"
        }
    .end annotation

    .line 234
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterPosition(J)I

    move-result p1

    return p1
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TItem;>;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getGlobalPosition(I)I
    .locals 2

    .line 260
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IIdDistributor<",
            "TItem;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mIdDistributor:Lcom/mikepenz/fastadapter/IIdDistributor;

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/mikepenz/fastadapter/IIdDistributor;->DEFAULT:Lcom/mikepenz/fastadapter/IIdDistributor;

    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mIdDistributor:Lcom/mikepenz/fastadapter/IIdDistributor;

    return-object v0
.end method

.method public getInterceptor()Lcom/mikepenz/fastadapter/IInterceptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IInterceptor<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;

    return-object v0
.end method

.method public getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/adapters/ItemFilter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    return-object v0
.end method

.method public getModels()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TModel;>;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mReverseInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;

    if-eqz v0, :cond_1

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    .line 202
    iget-object v3, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mReverseInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;

    invoke-interface {v3, v2}, Lcom/mikepenz/fastadapter/IInterceptor;->intercept(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please provide a reverseInterceptor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReverseInterceptor()Lcom/mikepenz/fastadapter/IInterceptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IInterceptor<",
            "TItem;TModel;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mReverseInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;

    return-object v0
.end method

.method public isUseIdDistributor()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mUseIdDistributor:Z

    return v0
.end method

.method public move(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 514
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v0

    .line 515
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    sub-int v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IItem;

    .line 516
    iget-object v3, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 517
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    sub-int v0, p2, v0

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 518
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemMoved(II)V

    return-object p0
.end method

.method public remapMappedTypes()V
    .locals 1

    .line 407
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->clearTypeInstance()V

    .line 408
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mapPossibleTypes(Ljava/lang/Iterable;)V

    return-void
.end method

.method public bridge synthetic remove(I)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->remove(I)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 529
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRemoved(I)V

    return-object p0
.end method

.method public bridge synthetic removeRange(II)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->removeRange(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public removeRange(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 542
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v1

    sub-int/2addr v0, p1

    add-int/2addr v0, v1

    .line 544
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 547
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    sub-int v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    return-object p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->set(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->set(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITModel;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 490
    invoke-direct {p0, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p0

    .line 492
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TModel;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 279
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->set(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected set(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TModel;>;Z)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 283
    invoke-direct {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0, p1, p2, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(Ljava/util/List;ZLcom/mikepenz/fastadapter/IAdapterNotifier;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/util/List;ZLcom/mikepenz/fastadapter/IAdapterNotifier;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .param p3    # Lcom/mikepenz/fastadapter/IAdapterNotifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TModel;>;Z",
            "Lcom/mikepenz/fastadapter/IAdapterNotifier;",
            ")",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 297
    invoke-direct {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 298
    invoke-virtual {p0, p1, p2, p3}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(Ljava/util/List;ZLcom/mikepenz/fastadapter/IAdapterNotifier;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 496
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mUseIdDistributor:Z

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->registerTypeInstance(Lcom/mikepenz/fastadapter/IItem;)V

    .line 502
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemChanged(I)V

    return-object p0
.end method

.method public setInternal(Ljava/util/List;ZLcom/mikepenz/fastadapter/IAdapterNotifier;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;Z",
            "Lcom/mikepenz/fastadapter/IAdapterNotifier;",
            ")",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 311
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mUseIdDistributor:Z

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    :cond_0
    if-eqz p2, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getConstraint()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getExtensions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 321
    invoke-interface {v1, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->set(Ljava/util/List;Z)V

    goto :goto_0

    .line 325
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 326
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 327
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v1

    .line 330
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    if-eq p1, v2, :cond_4

    .line 332
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 333
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 337
    :cond_3
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 341
    :cond_4
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mapPossibleTypes(Ljava/lang/Iterable;)V

    .line 344
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    if-eqz p1, :cond_5

    .line 345
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    if-nez p3, :cond_6

    .line 350
    sget-object p3, Lcom/mikepenz/fastadapter/IAdapterNotifier;->DEFAULT:Lcom/mikepenz/fastadapter/IAdapterNotifier;

    .line 352
    :cond_6
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    invoke-interface {p3, p1, p2, v0, v1}, Lcom/mikepenz/fastadapter/IAdapterNotifier;->notify(Lcom/mikepenz/fastadapter/FastAdapter;III)Z

    return-object p0
.end method

.method public bridge synthetic setNewList(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setNewList(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public setNewList(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TModel;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setNewList(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public setNewList(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TModel;>;Z)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 374
    invoke-direct {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 376
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mUseIdDistributor:Z

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getConstraint()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getConstraint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 384
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 387
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    .line 388
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mapPossibleTypes(Ljava/lang/Iterable;)V

    .line 390
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    if-eqz p1, :cond_2

    .line 391
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 395
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    goto :goto_1

    .line 397
    :cond_3
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    :goto_1
    return-object p0
.end method

.method public withComparator(Ljava/util/Comparator;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->withComparator(Ljava/util/Comparator;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public withComparator(Ljava/util/Comparator;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TItem;>;Z)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    .line 176
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 177
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    iget-object p2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    :cond_0
    return-object p0
.end method

.method public withIdDistributor(Lcom/mikepenz/fastadapter/IIdDistributor;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IIdDistributor<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mIdDistributor:Lcom/mikepenz/fastadapter/IIdDistributor;

    return-object p0
.end method

.method public withInterceptor(Lcom/mikepenz/fastadapter/IInterceptor;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IInterceptor<",
            "TModel;TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;

    return-object p0
.end method

.method public withItemFilter(Lcom/mikepenz/fastadapter/adapters/ItemFilter;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/adapters/ItemFilter<",
            "TModel;TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    return-object p0
.end method

.method public withReverseInterceptor(Lcom/mikepenz/fastadapter/IInterceptor;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IInterceptor<",
            "TItem;TModel;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mReverseInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;

    return-object p0
.end method

.method public withUseIdDistributor(Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 109
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mUseIdDistributor:Z

    return-object p0
.end method
