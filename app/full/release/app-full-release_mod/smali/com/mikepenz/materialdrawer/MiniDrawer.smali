.class public Lcom/mikepenz/materialdrawer/MiniDrawer;
.super Ljava/lang/Object;
.source "MiniDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/MiniDrawer$OnMiniDrawerItemClickListener;
    }
.end annotation


# static fields
.field public static final ITEM:I = 0x2

.field public static final PROFILE:I = 0x1


# instance fields
.field private mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

.field protected mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/widget/LinearLayout;

.field private mCrossFader:Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;

.field private mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

.field private mEnableProfileClick:Z

.field private mEnableSelectedMiniDrawerItemBackground:Z

.field private mInRTL:Z

.field private mIncludeSecondaryDrawerItems:Z

.field private mInnerShadow:Z

.field protected mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/adapters/ItemAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMiniDrawerItemClickListener:Lcom/mikepenz/materialdrawer/MiniDrawer$OnMiniDrawerItemClickListener;

.field private mOnMiniDrawerItemLongClickListener:Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnLongClickListener<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMiniDrawerItemOnClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mInnerShadow:Z

    .line 95
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mInRTL:Z

    .line 108
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mIncludeSecondaryDrawerItems:Z

    .line 121
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mEnableSelectedMiniDrawerItemBackground:Z

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mEnableProfileClick:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/MiniDrawer$OnMiniDrawerItemClickListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mOnMiniDrawerItemClickListener:Lcom/mikepenz/materialdrawer/MiniDrawer$OnMiniDrawerItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/AccountHeader;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/Drawer;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mikepenz/materialdrawer/MiniDrawer;)Ljava/util/List;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/MiniDrawer;->getDrawerItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/mikepenz/materialdrawer/MiniDrawer;)Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mCrossFader:Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;

    return-object p0
.end method

.method private getDrawerItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->getOriginalDrawerItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->getOriginalDrawerItems()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerItems()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public build(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .line 302
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mContainer:Landroid/widget/LinearLayout;

    .line 303
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mInnerShadow:Z

    if-eqz v0, :cond_1

    .line 304
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mInRTL:Z

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_shadow_left:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_shadow_right:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 312
    :cond_1
    :goto_0
    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 313
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 316
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 318
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFadingEdgeLength(I)V

    .line 321
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 323
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 325
    new-instance v0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 326
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-static {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->with(Lcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 327
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->withSelectable(Z)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 328
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->withAllowDeselection(Z)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 329
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 332
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-boolean v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFullscreen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-boolean v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentStatusBar:Z

    if-eqz v0, :cond_3

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    invoke-static {p1}, Lcom/mikepenz/materialize/util/UIUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-boolean v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFullscreen:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-boolean v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBar:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_5

    .line 338
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    invoke-static {p1}, Lcom/mikepenz/materialize/util/UIUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 342
    :cond_5
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/MiniDrawer;->createItems()V

    .line 344
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mContainer:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public createItems()V
    .locals 10

    .line 430
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->clear()Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 433
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/AccountHeader;->getAccountHeaderBuilder()Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileImagesVisible:Z

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/AccountHeader;->getActiveProfile()Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    move-result-object v0

    .line 435
    instance-of v3, v0, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    if-eqz v3, :cond_0

    .line 436
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    new-array v4, v1, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    check-cast v0, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/MiniDrawer;->generateMiniDrawerItem(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, -0x1

    .line 442
    iget-object v4, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v4, :cond_4

    .line 443
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/MiniDrawer;->getDrawerItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 445
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/MiniDrawer;->getDrawerItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v6, v2

    move v5, v3

    move v3, v6

    :goto_1
    if-ge v3, v4, :cond_3

    .line 449
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/MiniDrawer;->getDrawerItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-virtual {p0, v7}, Lcom/mikepenz/materialdrawer/MiniDrawer;->generateMiniDrawerItem(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 451
    invoke-interface {v7}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v6

    .line 454
    :cond_1
    iget-object v8, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    new-array v9, v1, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    aput-object v7, v9, v2

    invoke-virtual {v8, v9}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-ltz v5, :cond_4

    .line 461
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    add-int/2addr v5, v0

    invoke-virtual {v1, v5}, Lcom/mikepenz/fastadapter/FastAdapter;->select(I)V

    .line 467
    :cond_4
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mOnMiniDrawerItemOnClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    if-eqz v0, :cond_5

    .line 468
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mOnMiniDrawerItemOnClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->withOnClickListener(Lcom/mikepenz/fastadapter/listeners/OnClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;

    goto :goto_2

    .line 470
    :cond_5
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    new-instance v1, Lcom/mikepenz/materialdrawer/MiniDrawer$1;

    invoke-direct {v1, p0}, Lcom/mikepenz/materialdrawer/MiniDrawer$1;-><init>(Lcom/mikepenz/materialdrawer/MiniDrawer;)V

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->withOnClickListener(Lcom/mikepenz/fastadapter/listeners/OnClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 507
    :goto_2
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mOnMiniDrawerItemLongClickListener:Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->withOnLongClickListener(Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 508
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public generateMiniDrawerItem(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
    .locals 2

    .line 268
    instance-of v0, p1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 269
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mIncludeSecondaryDrawerItems:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;

    check-cast p1, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;-><init>(Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;)V

    iget-boolean p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mEnableSelectedMiniDrawerItemBackground:Z

    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->withEnableSelectedBackground(Z)Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;

    move-result-object v1

    :cond_0
    return-object v1

    .line 270
    :cond_1
    instance-of v0, p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    if-eqz v0, :cond_2

    .line 271
    new-instance v0, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;

    check-cast p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;-><init>(Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;)V

    iget-boolean p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mEnableSelectedMiniDrawerItemBackground:Z

    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;->withEnableSelectedBackground(Z)Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;

    move-result-object p1

    return-object p1

    .line 272
    :cond_2
    instance-of v0, p1, Lcom/mikepenz/materialdrawer/model/ProfileDrawerItem;

    if-eqz v0, :cond_3

    .line 273
    new-instance v0, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;

    check-cast p1, Lcom/mikepenz/materialdrawer/model/ProfileDrawerItem;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;-><init>(Lcom/mikepenz/materialdrawer/model/ProfileDrawerItem;)V

    .line 274
    iget-boolean p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mEnableProfileClick:Z

    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;->withEnabled(Z)Ljava/lang/Object;

    return-object v0

    :cond_3
    return-object v1
.end method

.method public getAccountHeader()Lcom/mikepenz/materialdrawer/AccountHeader;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    return-object v0
.end method

.method public getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    return-object v0
.end method

.method public getCrossFader()Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mCrossFader:Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;

    return-object v0
.end method

.method public getDrawer()Lcom/mikepenz/materialdrawer/Drawer;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    return-object v0
.end method

.method public getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/adapters/ItemAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    return-object v0
.end method

.method public getMiniDrawerType(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)I
    .locals 1

    .line 287
    instance-of v0, p1, Lcom/mikepenz/materialdrawer/model/MiniProfileDrawerItem;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 289
    :cond_0
    instance-of p1, p1, Lcom/mikepenz/materialdrawer/model/MiniDrawerItem;

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getOnMiniDrawerItemLongClickListener()Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mOnMiniDrawerItemLongClickListener:Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    return-object v0
.end method

.method public getOnMiniDrawerItemOnClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mOnMiniDrawerItemOnClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    return-object v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public onItemClick(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 2

    .line 375
    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mCrossFader:Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mCrossFader:Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;

    invoke-interface {v0}, Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;->isCrossfaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mCrossFader:Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;

    invoke-interface {v0}, Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;->crossfade()V

    .line 383
    :cond_0
    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/materialdrawer/MiniDrawer;->setSelection(J)V

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onProfileClick()V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mCrossFader:Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mCrossFader:Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;

    invoke-interface {v0}, Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;->isCrossfaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mCrossFader:Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;

    invoke-interface {v0}, Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;->crossfade()V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/AccountHeader;->getActiveProfile()Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    move-result-object v0

    .line 361
    instance-of v1, v0, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    const/4 v2, 0x0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/MiniDrawer;->generateMiniDrawerItem(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->set(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    :cond_1
    return-void
.end method

.method public setSelection(J)V
    .locals 6

    .line 397
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 399
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v2, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    .line 400
    invoke-interface {v2}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getIdentifier()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    invoke-interface {v2}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect()V

    .line 402
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v2, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->select(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateItem(J)V
    .locals 5

    .line 413
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/MiniDrawer;->getDrawerItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/mikepenz/materialdrawer/DrawerUtils;->getDrawerItem(Ljava/util/List;J)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object p1

    const/4 p2, 0x0

    .line 415
    :goto_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-interface {v0}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getIdentifier()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getIdentifier()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 417
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/MiniDrawer;->generateMiniDrawerItem(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-virtual {v1, p2, v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->set(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public withAccountHeader(Lcom/mikepenz/materialdrawer/AccountHeader;)Lcom/mikepenz/materialdrawer/MiniDrawer;
    .locals 0
    .param p1    # Lcom/mikepenz/materialdrawer/AccountHeader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    return-object p0
.end method

.method public withCrossFader(Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;)Lcom/mikepenz/materialdrawer/MiniDrawer;
    .locals 0
    .param p1    # Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mCrossFader:Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;

    return-object p0
.end method

.method public withDrawer(Lcom/mikepenz/materialdrawer/Drawer;)Lcom/mikepenz/materialdrawer/MiniDrawer;
    .locals 0
    .param p1    # Lcom/mikepenz/materialdrawer/Drawer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    return-object p0
.end method

.method public withEnableProfileClick(Z)Lcom/mikepenz/materialdrawer/MiniDrawer;
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mEnableProfileClick:Z

    return-object p0
.end method

.method public withEnableSelectedMiniDrawerItemBackground(Z)Lcom/mikepenz/materialdrawer/MiniDrawer;
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mEnableSelectedMiniDrawerItemBackground:Z

    return-object p0
.end method

.method public withInRTL(Z)Lcom/mikepenz/materialdrawer/MiniDrawer;
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mInRTL:Z

    return-object p0
.end method

.method public withIncludeSecondaryDrawerItems(Z)Lcom/mikepenz/materialdrawer/MiniDrawer;
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mIncludeSecondaryDrawerItems:Z

    return-object p0
.end method

.method public withInnerShadow(Z)Lcom/mikepenz/materialdrawer/MiniDrawer;
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mInnerShadow:Z

    return-object p0
.end method

.method public withOnMiniDrawerItemClickListener(Lcom/mikepenz/materialdrawer/MiniDrawer$OnMiniDrawerItemClickListener;)Lcom/mikepenz/materialdrawer/MiniDrawer;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mOnMiniDrawerItemClickListener:Lcom/mikepenz/materialdrawer/MiniDrawer$OnMiniDrawerItemClickListener;

    return-object p0
.end method

.method public withOnMiniDrawerItemLongClickListener(Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;)Lcom/mikepenz/materialdrawer/MiniDrawer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnLongClickListener<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;)",
            "Lcom/mikepenz/materialdrawer/MiniDrawer;"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mOnMiniDrawerItemLongClickListener:Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    return-object p0
.end method

.method public withOnMiniDrawerItemOnClickListener(Lcom/mikepenz/fastadapter/listeners/OnClickListener;)Lcom/mikepenz/materialdrawer/MiniDrawer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;)",
            "Lcom/mikepenz/materialdrawer/MiniDrawer;"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mOnMiniDrawerItemOnClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    return-object p0
.end method
