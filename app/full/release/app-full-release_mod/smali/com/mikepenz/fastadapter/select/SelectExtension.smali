.class public Lcom/mikepenz/fastadapter/select/SelectExtension;
.super Ljava/lang/Object;
.source "SelectExtension.java"

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
.field protected static final BUNDLE_SELECTIONS:Ljava/lang/String; = "bundle_selections"


# instance fields
.field private mAllowDeselection:Z

.field private mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mMultiSelect:Z

.field private mSelectOnLongClick:Z

.field private mSelectWithItemUpdate:Z

.field private mSelectable:Z

.field private mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/ISelectionListener<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectWithItemUpdate:Z

    .line 35
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mMultiSelect:Z

    .line 37
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectOnLongClick:Z

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mAllowDeselection:Z

    .line 41
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectable:Z

    return-void
.end method

.method private handleSelection(Landroid/view/View;Lcom/mikepenz/fastadapter/IItem;I)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TItem;I)V"
        }
    .end annotation

    .line 274
    invoke-interface {p2}, Lcom/mikepenz/fastadapter/IItem;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-interface {p2}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mAllowDeselection:Z

    if-nez v0, :cond_1

    return-void

    .line 283
    :cond_1
    invoke-interface {p2}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v0

    .line 285
    iget-boolean v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectWithItemUpdate:Z

    if-nez v1, :cond_5

    if-nez p1, :cond_2

    goto :goto_1

    .line 295
    :cond_2
    iget-boolean v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mMultiSelect:Z

    if-nez v1, :cond_4

    .line 297
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->getSelections()Ljava/util/Set;

    move-result-object v1

    .line 298
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p3, :cond_3

    .line 300
    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(I)V

    goto :goto_0

    :cond_4
    xor-int/lit8 p3, v0, 0x1

    .line 306
    invoke-interface {p2, p3}, Lcom/mikepenz/fastadapter/IItem;->withSetSelected(Z)Ljava/lang/Object;

    xor-int/lit8 p3, v0, 0x1

    .line 307
    invoke-virtual {p1, p3}, Landroid/view/View;->setSelected(Z)V

    .line 310
    iget-object p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    if-eqz p1, :cond_8

    .line 311
    iget-object p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    xor-int/lit8 p3, v0, 0x1

    invoke-interface {p1, p2, p3}, Lcom/mikepenz/fastadapter/ISelectionListener;->onSelectionChanged(Lcom/mikepenz/fastadapter/IItem;Z)V

    goto :goto_2

    .line 286
    :cond_5
    :goto_1
    iget-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mMultiSelect:Z

    if-nez p1, :cond_6

    .line 287
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect()V

    :cond_6
    if-eqz v0, :cond_7

    .line 290
    invoke-virtual {p0, p3}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(I)V

    goto :goto_2

    .line 292
    :cond_7
    invoke-virtual {p0, p3}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(I)V

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public deleteAllSelectedItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 489
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 490
    iget-object v2, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v2, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getRelativeInfo(I)Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    move-result-object v2

    .line 491
    iget-object v3, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->item:Lcom/mikepenz/fastadapter/IItem;

    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    iget-object v3, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    instance-of v3, v3, Lcom/mikepenz/fastadapter/IItemAdapter;

    if-eqz v3, :cond_0

    .line 493
    iget-object v2, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    check-cast v2, Lcom/mikepenz/fastadapter/IItemAdapter;

    invoke-interface {v2, v1}, Lcom/mikepenz/fastadapter/IItemAdapter;->remove(I)Lcom/mikepenz/fastadapter/IItemAdapter;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public deselect()V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 380
    iget-object v2, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v2, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v2

    .line 381
    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(Lcom/mikepenz/fastadapter/IItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public deselect(I)V
    .locals 1

    const/4 v0, 0x0

    .line 456
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(ILjava/util/Iterator;)V

    return-void
.end method

.method public deselect(ILjava/util/Iterator;)V
    .locals 2
    .param p2    # Ljava/util/Iterator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 469
    invoke-interface {v0, v1}, Lcom/mikepenz/fastadapter/IItem;->withSetSelected(Z)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 472
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 474
    :cond_1
    iget-object p2, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {p2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemChanged(I)V

    .line 476
    iget-object p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    if-eqz p1, :cond_2

    .line 477
    iget-object p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    invoke-interface {p1, v0, v1}, Lcom/mikepenz/fastadapter/ISelectionListener;->onSelectionChanged(Lcom/mikepenz/fastadapter/IItem;Z)V

    :cond_2
    return-void
.end method

.method public deselect(Lcom/mikepenz/fastadapter/IItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .line 392
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 393
    invoke-interface {p1, v0}, Lcom/mikepenz/fastadapter/IItem;->withSetSelected(Z)Ljava/lang/Object;

    .line 394
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    invoke-interface {v1, p1, v0}, Lcom/mikepenz/fastadapter/ISelectionListener;->onSelectionChanged(Lcom/mikepenz/fastadapter/IItem;Z)V

    :cond_0
    return-void
.end method

.method public deselect(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 444
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 445
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(ILjava/util/Iterator;)V

    goto :goto_0

    :cond_0
    return-void
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

    .line 244
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 246
    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v3

    .line 247
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSelections()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 230
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 231
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 232
    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public init(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapterExtension;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "TItem;>;"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    const/4 p1, 0x0

    return-object p1
.end method

.method public isSelectable()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectable:Z

    return v0
.end method

.method public notifyAdapterDataSetChanged()V
    .locals 0

    return-void
.end method

.method public notifyAdapterItemMoved(II)V
    .locals 0

    return-void
.end method

.method public notifyAdapterItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

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

.method public onClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
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

    .line 170
    iget-boolean p3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectOnLongClick:Z

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectable:Z

    if-eqz p3, :cond_0

    .line 171
    invoke-direct {p0, p1, p4, p2}, Lcom/mikepenz/fastadapter/select/SelectExtension;->handleSelection(Landroid/view/View;Lcom/mikepenz/fastadapter/IItem;I)V

    :cond_0
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

    .line 179
    iget-boolean p3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectOnLongClick:Z

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectable:Z

    if-eqz p3, :cond_0

    .line 180
    invoke-direct {p0, p1, p4, p2}, Lcom/mikepenz/fastadapter/select/SelectExtension;->handleSelection(Landroid/view/View;Lcom/mikepenz/fastadapter/IItem;I)V

    :cond_0
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

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 155
    iget-object v2, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 156
    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v3

    .line 157
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle_selections"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public select()V
    .locals 1

    const/4 v0, 0x0

    .line 404
    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(Z)V

    return-void
.end method

.method public select(I)V
    .locals 1

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(IZ)V

    return-void
.end method

.method public select(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p0, p1, p2, v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(IZZ)V

    return-void
.end method

.method public select(IZZ)V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 358
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->isSelectable()Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x1

    .line 362
    invoke-interface {v0, p3}, Lcom/mikepenz/fastadapter/IItem;->withSetSelected(Z)Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemChanged(I)V

    .line 366
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    if-eqz v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    invoke-interface {v1, v0, p3}, Lcom/mikepenz/fastadapter/ISelectionListener;->onSelectionChanged(Lcom/mikepenz/fastadapter/IItem;Z)V

    .line 369
    :cond_2
    iget-object p3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->getOnClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    .line 370
    iget-object p2, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getOnClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object p2

    const/4 p3, 0x0

    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v1

    invoke-interface {p2, p3, v1, v0, p1}, Lcom/mikepenz/fastadapter/listeners/OnClickListener;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    :cond_3
    return-void
.end method

.method public select(Lcom/mikepenz/fastadapter/IItem;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 428
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->isSelectable()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 431
    invoke-interface {p1, p2}, Lcom/mikepenz/fastadapter/IItem;->withSetSelected(Z)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    invoke-interface {v0, p1, p2}, Lcom/mikepenz/fastadapter/ISelectionListener;->onSelectionChanged(Lcom/mikepenz/fastadapter/IItem;Z)V

    :cond_1
    return-void
.end method

.method public select(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 321
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 322
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public select(Z)V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 415
    iget-object v2, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v2, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v2

    .line 416
    invoke-virtual {p0, v2, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(Lcom/mikepenz/fastadapter/IItem;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    :cond_0
    iget-object p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

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

    return-void
.end method

.method public toggleSelection(I)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(I)V

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(I)V

    :goto_0
    return-void
.end method

.method public withAllowDeselection(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/select/SelectExtension<",
            "TItem;>;"
        }
    .end annotation

    .line 90
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mAllowDeselection:Z

    return-object p0
.end method

.method public withMultiSelect(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/select/SelectExtension<",
            "TItem;>;"
        }
    .end annotation

    .line 68
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mMultiSelect:Z

    return-object p0
.end method

.method public withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bundle_selections"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    .line 137
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_2

    .line 138
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    .line 139
    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 141
    invoke-virtual {p0, v1, v2}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(Lcom/mikepenz/fastadapter/IItem;Z)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->notifyAdapterDataSetChanged()V

    return-void
.end method

.method public withSelectOnLongClick(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/select/SelectExtension<",
            "TItem;>;"
        }
    .end annotation

    .line 79
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectOnLongClick:Z

    return-object p0
.end method

.method public withSelectWithItemUpdate(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/select/SelectExtension<",
            "TItem;>;"
        }
    .end annotation

    .line 57
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectWithItemUpdate:Z

    return-object p0
.end method

.method public withSelectable(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/select/SelectExtension<",
            "TItem;>;"
        }
    .end annotation

    .line 101
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectable:Z

    return-object p0
.end method

.method public withSelectionListener(Lcom/mikepenz/fastadapter/ISelectionListener;)Lcom/mikepenz/fastadapter/select/SelectExtension;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/ISelectionListener<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/select/SelectExtension<",
            "TItem;>;"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    return-object p0
.end method
