.class public Lcom/mikepenz/fastadapter/FastAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;,
        Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FastAdapter"


# instance fields
.field private eventHooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mikepenz/fastadapter/listeners/EventHook<",
            "TItem;>;>;"
        }
    .end annotation
.end field

.field private fastAdapterViewClickListener:Lcom/mikepenz/fastadapter/listeners/ClickEventHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/ClickEventHook<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private fastAdapterViewLongClickListener:Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/LongClickEventHook<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private fastAdapterViewTouchListener:Lcom/mikepenz/fastadapter/listeners/TouchEventHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/TouchEventHook<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private final mAdapterSizes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;>;"
        }
    .end annotation
.end field

.field private final mAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;>;"
        }
    .end annotation
.end field

.field private final mExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "TItem;>;>;"
        }
    .end annotation
.end field

.field private mGlobalSize:I

.field private mLegacyBindViewMode:Z

.field private mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

.field private mOnClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mOnCreateViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;

.field private mOnLongClickListener:Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnLongClickListener<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mOnPreClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mOnPreLongClickListener:Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnLongClickListener<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mOnTouchListener:Lcom/mikepenz/fastadapter/listeners/OnTouchListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnTouchListener<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/select/SelectExtension<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mTypeInstanceCache:Lcom/mikepenz/fastadapter/ITypeInstanceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/ITypeInstanceCache<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mVerbose:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    .line 58
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    .line 61
    new-instance v1, Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/select/SelectExtension;-><init>()V

    iput-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    .line 63
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mLegacyBindViewMode:Z

    .line 66
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    .line 76
    new-instance v0, Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListenerImpl;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnCreateViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;

    .line 77
    new-instance v0, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListenerImpl;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    .line 532
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter$1;

    invoke-direct {v0, p0}, Lcom/mikepenz/fastadapter/FastAdapter$1;-><init>(Lcom/mikepenz/fastadapter/FastAdapter;)V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->fastAdapterViewClickListener:Lcom/mikepenz/fastadapter/listeners/ClickEventHook;

    .line 573
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter$2;

    invoke-direct {v0, p0}, Lcom/mikepenz/fastadapter/FastAdapter$2;-><init>(Lcom/mikepenz/fastadapter/FastAdapter;)V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->fastAdapterViewLongClickListener:Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;

    .line 605
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter$3;

    invoke-direct {v0, p0}, Lcom/mikepenz/fastadapter/FastAdapter$3;-><init>(Lcom/mikepenz/fastadapter/FastAdapter;)V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->fastAdapterViewTouchListener:Lcom/mikepenz/fastadapter/listeners/TouchEventHook;

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnPreClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mikepenz/fastadapter/FastAdapter;)Ljava/util/Set;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnPreLongClickListener:Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnLongClickListener:Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnTouchListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnTouchListener:Lcom/mikepenz/fastadapter/listeners/OnTouchListener;

    return-object p0
.end method

.method private static floorIndex(Landroid/util/SparseArray;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;I)I"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-gez p0, :cond_0

    xor-int/lit8 p0, p0, -0x1

    add-int/lit8 p0, p0, -0x1

    :cond_0
    return p0
.end method

.method public static with(Lcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            "A::",
            "Lcom/mikepenz/fastadapter/IAdapter;",
            ">(TA;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/FastAdapter;-><init>()V

    const/4 v1, 0x0

    .line 134
    invoke-virtual {v0, v1, p0}, Lcom/mikepenz/fastadapter/FastAdapter;->addAdapter(ILcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;

    return-object v0
.end method

.method public static with(Ljava/util/Collection;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            "A::",
            "Lcom/mikepenz/fastadapter/IAdapter;",
            ">(",
            "Ljava/util/Collection<",
            "TA;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 146
    invoke-static {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->with(Ljava/util/Collection;Ljava/util/Collection;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static with(Ljava/util/Collection;Ljava/util/Collection;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 3
    .param p0    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            "A::",
            "Lcom/mikepenz/fastadapter/IAdapter;",
            ">(",
            "Ljava/util/Collection<",
            "TA;>;",
            "Ljava/util/Collection<",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "TItem;>;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 157
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/FastAdapter;-><init>()V

    if-nez p0, :cond_0

    .line 159
    iget-object p0, v0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-static {}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->items()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 161
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapter;

    .line 162
    iget-object v2, v0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    .line 165
    :goto_2
    iget-object v1, v0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_2

    .line 166
    iget-object v1, v0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapter;

    invoke-interface {v1, v0}, Lcom/mikepenz/fastadapter/IAdapter;->withFastAdapter(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/mikepenz/fastadapter/IAdapter;->setOrder(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 168
    :cond_2
    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    if-eqz p1, :cond_3

    .line 171
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 172
    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->addExtension(Lcom/mikepenz/fastadapter/IAdapterExtension;)Lcom/mikepenz/fastadapter/FastAdapter;

    goto :goto_3

    :cond_3
    return-object v0
.end method


# virtual methods
.method public adapter(I)Lcom/mikepenz/fastadapter/IAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IAdapter;

    return-object p1
.end method

.method public addAdapter(ILcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;>(ITA;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 188
    :goto_0
    iget-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 189
    iget-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mikepenz/fastadapter/IAdapter;

    invoke-interface {p2, p0}, Lcom/mikepenz/fastadapter/IAdapter;->withFastAdapter(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mikepenz/fastadapter/IAdapter;->setOrder(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    return-object p0
.end method

.method public addExtension(Lcom/mikepenz/fastadapter/IAdapterExtension;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "TItem;>;>(TE;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-interface {p1, p0}, Lcom/mikepenz/fastadapter/IAdapterExtension;->init(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapterExtension;

    return-object p0
.end method

.method protected cacheSizes()V
    .locals 5

    .line 955
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 958
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/fastadapter/IAdapter;

    .line 959
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItemCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 960
    iget-object v4, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 961
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItemCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 966
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 967
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 970
    :cond_2
    iput v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    return-void
.end method

.method public clearTypeInstance()V
    .locals 1

    .line 515
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getTypeInstanceCache()Lcom/mikepenz/fastadapter/ITypeInstanceCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/ITypeInstanceCache;->clear()V

    return-void
.end method

.method public deleteAllSelectedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .line 1108
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deleteAllSelectedItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public deselect()V
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect()V

    return-void
.end method

.method public deselect(I)V
    .locals 2

    .line 1088
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(ILjava/util/Iterator;)V

    return-void
.end method

.method public deselect(ILjava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1099
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(ILjava/util/Iterator;)V

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

    .line 1079
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(Ljava/lang/Iterable;)V

    return-void
.end method

.method public enableVerboseLog()Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    return-object p0
.end method

.method public getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_2

    .line 842
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 845
    :cond_0
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "FastAdapter"

    const-string v1, "getAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->floorIndex(Landroid/util/SparseArray;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IAdapter;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEventHooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mikepenz/fastadapter/listeners/EventHook<",
            "TItem;>;>;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->eventHooks:Ljava/util/List;

    return-object v0
.end method

.method public getExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "TItem;>;>;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    return-object v0
.end method

.method public getHolderAdapterPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 526
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    return p1
.end method

.method public getItem(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 803
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->floorIndex(Landroid/util/SparseArray;I)I

    move-result v0

    .line 808
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapter;

    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 878
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 869
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 858
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getType()I

    move-result p1

    return p1
.end method

.method public getOnClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "TItem;>;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    return-object v0
.end method

.method public getPosition(J)I
    .locals 5

    .line 780
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IAdapter;

    .line 781
    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IAdapter;->getOrder()I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_0

    .line 785
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterPosition(J)I

    move-result v4

    if-eq v4, v3, :cond_1

    add-int/2addr v1, v4

    return v1

    .line 789
    :cond_1
    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItemCount()I

    move-result v1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public getPosition(Lcom/mikepenz/fastadapter/IItem;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)I"
        }
    .end annotation

    .line 765
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string p1, "FastAdapter"

    const-string v0, "You have to define an identifier for your item to retrieve the position via this method"

    .line 766
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 769
    :cond_0
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPosition(J)I

    move-result p1

    return p1
.end method

.method public getPreItemCount(I)I
    .locals 2

    .line 913
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->floorIndex(Landroid/util/SparseArray;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method public getPreItemCountByOrder(I)I
    .locals 3

    .line 889
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 896
    :goto_0
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 897
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IAdapter;

    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItemCount()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getRelativeInfo(I)Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo<",
            "TItem;>;"
        }
    .end annotation

    if-gez p1, :cond_0

    .line 820
    new-instance p1, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    invoke-direct {p1}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;-><init>()V

    return-object p1

    .line 823
    :cond_0
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;-><init>()V

    .line 824
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->floorIndex(Landroid/util/SparseArray;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 826
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IAdapter;

    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v2

    iput-object v2, v0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->item:Lcom/mikepenz/fastadapter/IItem;

    .line 827
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapter;

    iput-object v1, v0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    .line 828
    iput p1, v0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->position:I

    :cond_1
    return-object v0
.end method

.method public getSelectExtension()Lcom/mikepenz/fastadapter/select/SelectExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/select/SelectExtension<",
            "TItem;>;"
        }
    .end annotation

    .line 984
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    return-object v0
.end method

.method public getSelectedItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TItem;>;"
        }
    .end annotation

    .line 999
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->getSelectedItems()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSelections()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 991
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->getSelections()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTypeInstance(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .line 508
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getTypeInstanceCache()Lcom/mikepenz/fastadapter/ITypeInstanceCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/ITypeInstanceCache;->get(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    return-object p1
.end method

.method public getTypeInstanceCache()Lcom/mikepenz/fastadapter/ITypeInstanceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/ITypeInstanceCache<",
            "TItem;>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mTypeInstanceCache:Lcom/mikepenz/fastadapter/ITypeInstanceCache;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mTypeInstanceCache:Lcom/mikepenz/fastadapter/ITypeInstanceCache;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mTypeInstanceCache:Lcom/mikepenz/fastadapter/ITypeInstanceCache;

    return-object v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public notifyAdapterDataSetChanged()V
    .locals 2

    .line 1122
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 1123
    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IAdapterExtension;->notifyAdapterDataSetChanged()V

    goto :goto_0

    .line 1125
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 1126
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyAdapterItemChanged(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1198
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public notifyAdapterItemChanged(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1208
    invoke-virtual {p0, p1, v0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public notifyAdapterItemInserted(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1135
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeInserted(II)V

    return-void
.end method

.method public notifyAdapterItemMoved(II)V
    .locals 2

    .line 1186
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 1187
    invoke-interface {v1, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->notifyAdapterItemMoved(II)V

    goto :goto_0

    .line 1189
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public notifyAdapterItemRangeChanged(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1218
    invoke-virtual {p0, p1, p2, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public notifyAdapterItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1230
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 1231
    invoke-interface {v1, p1, p2, p3}, Lcom/mikepenz/fastadapter/IAdapterExtension;->notifyAdapterItemRangeChanged(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 1234
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemRangeChanged(II)V

    goto :goto_1

    .line 1236
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public notifyAdapterItemRangeInserted(II)V
    .locals 2

    .line 1146
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 1147
    invoke-interface {v1, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->notifyAdapterItemRangeInserted(II)V

    goto :goto_0

    .line 1149
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 1150
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public notifyAdapterItemRangeRemoved(II)V
    .locals 2

    .line 1170
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 1171
    invoke-interface {v1, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->notifyAdapterItemRangeRemoved(II)V

    goto :goto_0

    .line 1174
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 1175
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public notifyAdapterItemRemoved(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1159
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 748
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    const-string v1, "onAttachedToRecyclerView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 665
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mLegacyBindViewMode:Z

    if-eqz v0, :cond_1

    .line 666
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolderLegacy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isLegacy: true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 672
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, p1, p2, v1}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 686
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mLegacyBindViewMode:Z

    if-nez v0, :cond_1

    .line 687
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isLegacy: false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 692
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 694
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 636
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateViewHolder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnCreateViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;->onPreCreateViewHolder(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 641
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {p2, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 644
    iget-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->fastAdapterViewClickListener:Lcom/mikepenz/fastadapter/listeners/ClickEventHook;

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, p1, v0}, Lcom/mikepenz/fastadapter/utils/EventHookUtil;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 647
    iget-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->fastAdapterViewLongClickListener:Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, p1, v0}, Lcom/mikepenz/fastadapter/utils/EventHookUtil;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 650
    iget-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->fastAdapterViewTouchListener:Lcom/mikepenz/fastadapter/listeners/TouchEventHook;

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, p1, v0}, Lcom/mikepenz/fastadapter/utils/EventHookUtil;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 652
    iget-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnCreateViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;

    invoke-interface {p2, p0, p1}, Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;->onPostCreateViewHolder(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 754
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    const-string v1, "onDetachedFromRecyclerView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .line 742
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailedToRecycleView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 728
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewAttachedToWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 730
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 716
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewDetachedFromWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 718
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 704
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewRecycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 706
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->unBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public registerTypeInstance(Lcom/mikepenz/fastadapter/IItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .line 493
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getTypeInstanceCache()Lcom/mikepenz/fastadapter/ITypeInstanceCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/ITypeInstanceCache;->register(Lcom/mikepenz/fastadapter/IItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    instance-of v0, p1, Lcom/mikepenz/fastadapter/IHookable;

    if-eqz v0, :cond_0

    .line 496
    check-cast p1, Lcom/mikepenz/fastadapter/IHookable;

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IHookable;->getEventHooks()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->withEventHooks(Ljava/util/Collection;)Lcom/mikepenz/fastadapter/FastAdapter;

    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, ""

    .line 931
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 945
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 946
    invoke-interface {v1, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public select()V
    .locals 2

    .line 1061
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(Z)V

    return-void
.end method

.method public select(I)V
    .locals 2

    .line 1026
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(IZZ)V

    return-void
.end method

.method public select(IZ)V
    .locals 2

    .line 1036
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(IZZ)V

    return-void
.end method

.method public select(IZZ)V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(IZZ)V

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

    .line 1017
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(Ljava/lang/Iterable;)V

    return-void
.end method

.method public select(Z)V
    .locals 1

    .line 1070
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(Z)V

    return-void
.end method

.method public setTypeInstanceCache(Lcom/mikepenz/fastadapter/ITypeInstanceCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/ITypeInstanceCache<",
            "TItem;>;)V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mTypeInstanceCache:Lcom/mikepenz/fastadapter/ITypeInstanceCache;

    return-void
.end method

.method public toggleSelection(I)V
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->toggleSelection(I)V

    return-void
.end method

.method public withAllowDeselection(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->withAllowDeselection(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;

    return-object p0
.end method

.method public withEventHook(Lcom/mikepenz/fastadapter/listeners/EventHook;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/EventHook<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->eventHooks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->eventHooks:Ljava/util/List;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->eventHooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withEventHooks(Ljava/util/Collection;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/mikepenz/fastadapter/listeners/EventHook<",
            "TItem;>;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->eventHooks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 273
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->eventHooks:Ljava/util/List;

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->eventHooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public withItemEvent(Lcom/mikepenz/fastadapter/listeners/EventHook;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/EventHook<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->withEventHook(Lcom/mikepenz/fastadapter/listeners/EventHook;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    return-object p1
.end method

.method public withLegacyBindViewMode(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 434
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mLegacyBindViewMode:Z

    return-object p0
.end method

.method public withMultiSelect(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->withMultiSelect(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;

    return-object p0
.end method

.method public withOnBindViewHolderListener(Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;",
            ")",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 359
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    return-object p0
.end method

.method public withOnClickListener(Lcom/mikepenz/fastadapter/listeners/OnClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    return-object p0
.end method

.method public withOnCreateViewHolderListener(Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;",
            ")",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnCreateViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;

    return-object p0
.end method

.method public withOnLongClickListener(Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnLongClickListener<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnLongClickListener:Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    return-object p0
.end method

.method public withOnPreClickListener(Lcom/mikepenz/fastadapter/listeners/OnClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnPreClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    return-object p0
.end method

.method public withOnPreLongClickListener(Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnLongClickListener<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnPreLongClickListener:Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    return-object p0
.end method

.method public withOnTouchListener(Lcom/mikepenz/fastadapter/listeners/OnTouchListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnTouchListener<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnTouchListener:Lcom/mikepenz/fastadapter/listeners/OnTouchListener;

    return-object p0
.end method

.method public withSavedInstanceState(Landroid/os/Bundle;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    const-string v0, ""

    .line 466
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    return-object p1
.end method

.method public withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 481
    invoke-interface {v1, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public withSelectOnLongClick(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->withSelectOnLongClick(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;

    return-object p0
.end method

.method public withSelectWithItemUpdate(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->withSelectWithItemUpdate(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;

    return-object p0
.end method

.method public withSelectable(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->addExtension(Lcom/mikepenz/fastadapter/IAdapterExtension;)Lcom/mikepenz/fastadapter/FastAdapter;

    goto :goto_0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 423
    :goto_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->withSelectable(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;

    return-object p0
.end method

.method public withSelectionListener(Lcom/mikepenz/fastadapter/ISelectionListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/ISelectionListener<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->withSelectionListener(Lcom/mikepenz/fastadapter/ISelectionListener;)Lcom/mikepenz/fastadapter/select/SelectExtension;

    return-object p0
.end method
