.class public Lcom/mikepenz/fastadapter/adapters/ItemFilter;
.super Landroid/widget/Filter;
.source "ItemFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Landroid/widget/Filter;"
    }
.end annotation


# instance fields
.field private mConstraint:Ljava/lang/CharSequence;

.field private mFilterPredicate:Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IItemAdapter$Predicate<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation
.end field

.field protected mItemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/ItemFilterListener<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mOriginalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    return-void
.end method


# virtual methods
.method public add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I

    move-result v1

    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result p1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 244
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 245
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    return-object p1

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final varargs add(I[Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TItem;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 229
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 215
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    return-object p1

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final varargs add([Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TItem;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 199
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public clear()Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 336
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 337
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    return-object v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->clear()Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterPosition(J)I
    .locals 5

    .line 184
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 185
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

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

    .line 174
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(J)I

    move-result p1

    return p1
.end method

.method public getConstraint()Ljava/lang/CharSequence;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSelectedItems()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TItem;>;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 154
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 155
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 156
    iget-object v3, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/fastadapter/IItem;

    .line 157
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSelections()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v1

    const/4 v2, 0x0

    .line 135
    iget-object v3, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 136
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mikepenz/fastadapter/IItem;

    .line 137
    invoke-interface {v4}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int v4, v2, v1

    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getSelections()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public move(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I

    move-result p1

    .line 281
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I

    move-result p2

    .line 282
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IItem;

    .line 283
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 284
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    sub-int/2addr p2, v0

    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 285
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    .line 286
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    return-object p1

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->move(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-object v0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getExtensions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 70
    invoke-interface {v2, p1}, Lcom/mikepenz/fastadapter/IAdapterExtension;->performFiltering(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :cond_2
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    .line 75
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-nez v1, :cond_3

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    :cond_3
    if-eqz p1, :cond_8

    .line 80
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 91
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mFilterPredicate:Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;

    if-eqz v2, :cond_6

    .line 95
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/fastadapter/IItem;

    .line 96
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mFilterPredicate:Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;

    invoke-interface {v4, v3, p1}, Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;->filter(Lcom/mikepenz/fastadapter/IItem;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 97
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    :cond_6
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    .line 104
    :cond_7
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 105
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_3

    .line 82
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    .line 87
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;

    if-eqz p1, :cond_9

    .line 88
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;->onReset()V

    :cond_9
    :goto_3
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 117
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(Ljava/util/List;ZLcom/mikepenz/fastadapter/IAdapterNotifier;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;->itemsFiltered(Ljava/lang/CharSequence;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public remove(I)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I

    move-result v1

    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result p1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 300
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 301
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    return-object p1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->remove(I)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public removeRange(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 317
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v1

    sub-int/2addr v0, p1

    add-int/2addr v0, v1

    .line 319
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    sub-int v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_0
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 324
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    return-object p1

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->removeRange(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public set(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I

    move-result v1

    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result p1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 264
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    return-object p1

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public withFilterPredicate(Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;)Lcom/mikepenz/fastadapter/adapters/ItemFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IItemAdapter$Predicate<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ItemFilter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mFilterPredicate:Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;

    return-object p0
.end method

.method public withItemFilterListener(Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;)Lcom/mikepenz/fastadapter/adapters/ItemFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/ItemFilterListener<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ItemFilter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;

    return-object p0
.end method
