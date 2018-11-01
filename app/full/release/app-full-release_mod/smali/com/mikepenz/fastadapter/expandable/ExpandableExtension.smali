.class public Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;
.super Ljava/lang/Object;
.source "ExpandableExtension.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IAdapterExtension;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IAdapterExtension<",
        "TItem;>;"
    }
.end annotation


# static fields
.field protected static final BUNDLE_EXPANDED:Ljava/lang/String; = "bundle_expanded"

.field protected static final BUNDLE_EXPANDED_SELECTIONS:Ljava/lang/String; = "bundle_expanded_selections"


# instance fields
.field private mExpanded:Landroid/util/SparseIntArray;

.field private mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mOnlyOneExpandedItem:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mOnlyOneExpandedItem:Z

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mExpanded:Landroid/util/SparseIntArray;

    return-void
.end method

.method private internalCollapse(Lcom/mikepenz/fastadapter/IExpandable;IZ)V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    instance-of v1, v0, Lcom/mikepenz/fastadapter/IItemAdapter;

    if-eqz v1, :cond_0

    .line 342
    check-cast v0, Lcom/mikepenz/fastadapter/IItemAdapter;

    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mikepenz/fastadapter/IItemAdapter;->removeRange(II)Lcom/mikepenz/fastadapter/IItemAdapter;

    :cond_0
    const/4 v0, 0x0

    .line 346
    invoke-interface {p1, v0}, Lcom/mikepenz/fastadapter/IExpandable;->withIsExpanded(Z)Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 350
    iget-object p1, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 1

    const/4 v0, 0x1

    .line 268
    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->collapse(Z)V

    return-void
.end method

.method public collapse(I)V
    .locals 1

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->collapse(IZ)V

    return-void
.end method

.method public collapse(IZ)V
    .locals 5

    .line 300
    iget-object v0, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 301
    instance-of v1, v0, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v1, :cond_4

    .line 302
    check-cast v0, Lcom/mikepenz/fastadapter/IExpandable;

    .line 305
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 308
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    :goto_0
    add-int v3, p1, v1

    if-ge v2, v3, :cond_1

    .line 310
    iget-object v3, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v3

    .line 311
    instance-of v4, v3, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v4, :cond_0

    .line 312
    check-cast v3, Lcom/mikepenz/fastadapter/IExpandable;

    .line 313
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-le v3, p1, :cond_3

    .line 321
    iget-object v1, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    .line 322
    instance-of v2, v1, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v2, :cond_2

    .line 323
    check-cast v1, Lcom/mikepenz/fastadapter/IExpandable;

    .line 324
    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    invoke-virtual {p0, v3}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->collapse(I)V

    .line 326
    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 327
    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v3, v1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 334
    :cond_3
    invoke-direct {p0, v0, p1, p2}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->internalCollapse(Lcom/mikepenz/fastadapter/IExpandable;IZ)V

    :cond_4
    return-void
.end method

.method public collapse(Z)V
    .locals 3

    .line 277
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->getExpandedItems()[I

    move-result-object v0

    .line 278
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 279
    aget v2, v0, v1

    invoke-virtual {p0, v2, p1}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->collapse(IZ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deselect()V
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getSelectExtension()Lcom/mikepenz/fastadapter/select/SelectExtension;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v1}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->getAllItems(Lcom/mikepenz/fastadapter/FastAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    .line 444
    invoke-virtual {v0, v2}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(Lcom/mikepenz/fastadapter/IItem;)V

    goto :goto_0

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public expand()V
    .locals 1

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->expand(Z)V

    return-void
.end method

.method public expand(I)V
    .locals 1

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->expand(IZ)V

    return-void
.end method

.method public expand(IZ)V
    .locals 4

    .line 390
    iget-object v0, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 391
    instance-of v1, v0, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v1, :cond_1

    .line 392
    check-cast v0, Lcom/mikepenz/fastadapter/IExpandable;

    .line 394
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 396
    instance-of v2, v1, Lcom/mikepenz/fastadapter/IItemAdapter;

    if-eqz v2, :cond_0

    .line 397
    check-cast v1, Lcom/mikepenz/fastadapter/IItemAdapter;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/mikepenz/fastadapter/IItemAdapter;->addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;

    :cond_0
    const/4 v1, 0x1

    .line 401
    invoke-interface {v0, v1}, Lcom/mikepenz/fastadapter/IExpandable;->withIsExpanded(Z)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 405
    iget-object p2, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {p2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public expand(Z)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 369
    invoke-virtual {p0, v0, p1}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->expand(IZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getExpanded()Landroid/util/SparseIntArray;
    .locals 5

    .line 217
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 219
    iget-object v1, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 220
    iget-object v3, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v3

    .line 221
    instance-of v4, v3, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getExpandedItems()[I
    .locals 6

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    iget-object v1, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 236
    iget-object v4, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v4, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v4

    .line 237
    instance-of v5, v4, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {v4}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 243
    new-array v3, v1, [I

    :goto_1
    if-ge v2, v1, :cond_2

    .line 245
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method public getExpandedItemsCount(II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 424
    iget-object v1, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    .line 425
    instance-of v2, v1, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v2, :cond_0

    .line 426
    check-cast v1, Lcom/mikepenz/fastadapter/IExpandable;

    .line 427
    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public bridge synthetic init(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapterExtension;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->init(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;

    move-result-object p1

    return-object p1
.end method

.method public init(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/expandable/ExpandableExtension<",
            "TItem;>;"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    return-object p0
.end method

.method public isOnlyOneExpandedItem()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mOnlyOneExpandedItem:Z

    return v0
.end method

.method public notifyAdapterDataSetChanged()V
    .locals 0

    return-void
.end method

.method public notifyAdapterItemMoved(II)V
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->collapse(I)V

    .line 158
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->collapse(I)V

    return-void
.end method

.method public notifyAdapterItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    move p3, p1

    :goto_0
    add-int v0, p1, p2

    if-ge p3, v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    .line 165
    instance-of v1, v0, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->collapse(I)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyAdapterItemRangeInserted(II)V
    .locals 0

    return-void
.end method

.method public notifyAdapterItemRangeRemoved(II)V
    .locals 0

    return-void
.end method

.method public notifyAdapterSubItemsChanged(II)I
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    instance-of v1, v0, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v1, :cond_1

    .line 193
    check-cast v0, Lcom/mikepenz/fastadapter/IExpandable;

    .line 194
    iget-object v1, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    instance-of v2, v1, Lcom/mikepenz/fastadapter/IItemAdapter;

    if-eqz v2, :cond_0

    .line 196
    check-cast v1, Lcom/mikepenz/fastadapter/IItemAdapter;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v1, p1, p2}, Lcom/mikepenz/fastadapter/IItemAdapter;->removeRange(II)Lcom/mikepenz/fastadapter/IItemAdapter;

    .line 197
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/mikepenz/fastadapter/IItemAdapter;->add(ILjava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;

    .line 199
    :cond_0
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;TItem;)Z"
        }
    .end annotation

    .line 112
    instance-of p1, p4, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz p1, :cond_0

    .line 113
    move-object p1, p4

    check-cast p1, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IExpandable;->isAutoExpanding()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->toggleExpandable(I)V

    .line 119
    :cond_0
    iget-boolean p1, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mOnlyOneExpandedItem:Z

    if-eqz p1, :cond_2

    instance-of p1, p4, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz p1, :cond_2

    .line 120
    check-cast p4, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {p4}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p4}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->getExpandedItems()[I

    move-result-object p1

    const/4 p3, 0x1

    .line 122
    array-length p4, p1

    sub-int/2addr p4, p3

    :goto_0
    if-ltz p4, :cond_2

    .line 123
    aget v0, p1, p4

    if-eq v0, p2, :cond_1

    .line 124
    aget v0, p1, p4

    invoke-virtual {p0, v0, p3}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->collapse(IZ)V

    :cond_1
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onLongClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;TItem;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 0
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

    const/4 p1, 0x0

    return p1
.end method

.method public performFiltering(Ljava/lang/CharSequence;)V
    .locals 0

    const/4 p1, 0x0

    .line 179
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->collapse(Z)V

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 91
    iget-object v3, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    .line 92
    iget-object v4, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v4, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v4

    .line 93
    instance-of v5, v4, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {v5}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    invoke-interface {v4}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    invoke-interface {v4}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    invoke-interface {v4}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    invoke-static {v4, v0}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->findSubItemSelections(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bundle_expanded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle_expanded_selections"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public select(Z)V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getSelectExtension()Lcom/mikepenz/fastadapter/select/SelectExtension;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v1}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->getAllItems(Lcom/mikepenz/fastadapter/FastAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    .line 460
    invoke-virtual {v0, v2, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(Lcom/mikepenz/fastadapter/IItem;Z)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object p1, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public set(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;Z)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 174
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->collapse(Z)V

    return-void
.end method

.method public toggleExpandable(I)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    .line 257
    instance-of v1, v0, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->collapse(I)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->expand(I)V

    :goto_0
    return-void
.end method

.method public withOnlyOneExpandedItem(Z)Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/expandable/ExpandableExtension<",
            "TItem;>;"
        }
    .end annotation

    .line 50
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mOnlyOneExpandedItem:Z

    return-object p0
.end method

.method public withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bundle_expanded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle_expanded_selections"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    .line 69
    iget-object v1, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_2

    .line 70
    iget-object v2, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v2, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v2

    .line 71
    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->expand(I)V

    .line 74
    iget-object v1, p0, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v1

    .line 78
    :cond_1
    invoke-static {v2, p1}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->restoreSubItemSelectionStatesForAlternativeStateManagement(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
