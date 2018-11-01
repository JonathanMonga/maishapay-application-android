.class public Lcom/mikepenz/materialdrawer/DrawerBuilder;
.super Ljava/lang/Object;
.source "DrawerBuilder.java"


# instance fields
.field public final idDistributor:Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;

.field protected mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

.field protected mAccountHeaderSticky:Z

.field protected mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field protected mActionBarDrawerToggleEnabled:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mAdapterWrapper:Landroid/support/v7/widget/RecyclerView$Adapter;

.field protected mAnimateActionBarDrawerToggle:Z

.field protected mAppended:Z

.field protected mCloseOnClick:Z

.field protected mCurrentStickyFooterSelection:I

.field protected mCustomView:Landroid/view/View;

.field protected mDelayDrawerClickEvent:I

.field protected mDelayOnDrawerClose:I

.field protected mDisplayBelowStatusBar:Ljava/lang/Boolean;

.field protected mDrawerGravity:Ljava/lang/Integer;

.field protected mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field protected mDrawerWidth:I

.field protected mExpandableExtension:Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/expandable/ExpandableExtension<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mFireInitialOnClick:Z

.field protected mFooterAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mFooterClickable:Z

.field protected mFooterDivider:Z

.field protected mFooterView:Landroid/view/View;

.field protected mFullscreen:Z

.field protected mGenerateMiniDrawer:Z

.field protected mHasStableIds:Z

.field protected mHeaderAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeaderDivider:Z

.field protected mHeaderPadding:Z

.field protected mHeaderView:Landroid/view/View;

.field protected mHeiderHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field private mInnerShadow:Z

.field protected mItemAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field protected mKeepStickyItemsVisible:Z

.field protected mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field protected mMaterialize:Lcom/mikepenz/materialize/Materialize;

.field protected mMiniDrawer:Lcom/mikepenz/materialdrawer/MiniDrawer;

.field protected mMultiSelect:Z

.field protected mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

.field protected mOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

.field protected mOnDrawerListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;

.field protected mOnDrawerNavigationListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerNavigationListener;

.field protected mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected mRootView:Landroid/view/ViewGroup;

.field protected mSavedInstance:Landroid/os/Bundle;

.field protected mScrollToTopAfterClick:Z

.field protected mSelectedItemIdentifier:J

.field protected mSelectedItemPosition:I

.field protected mShowDrawerOnFirstLaunch:Z

.field protected mShowDrawerUntilDraggedOpened:Z

.field protected mSliderBackgroundColor:I

.field protected mSliderBackgroundColorRes:I

.field protected mSliderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field protected mSliderBackgroundDrawableRes:I

.field protected mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

.field protected mStickyDrawerItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mStickyFooterDivider:Z

.field protected mStickyFooterShadow:Z

.field protected mStickyFooterShadowView:Landroid/view/View;

.field protected mStickyFooterView:Landroid/view/ViewGroup;

.field protected mStickyHeaderShadow:Z

.field protected mStickyHeaderView:Landroid/view/View;

.field protected mSystemUIHidden:Z

.field protected mToolbar:Landroid/support/v7/widget/Toolbar;

.field protected mTranslucentNavigationBar:Z

.field protected mTranslucentNavigationBarProgrammatically:Z

.field protected mTranslucentStatusBar:Z

.field protected mUsed:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mUsed:Z

    const/4 v1, -0x1

    .line 77
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCurrentStickyFooterSelection:I

    .line 78
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAppended:Z

    .line 85
    new-instance v2, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributorImpl;

    invoke-direct {v2}, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributorImpl;-><init>()V

    iput-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->idDistributor:Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;

    const/4 v2, 0x1

    .line 150
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentStatusBar:Z

    .line 177
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mInnerShadow:Z

    .line 206
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBar:Z

    .line 226
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBarProgrammatically:Z

    .line 245
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFullscreen:Z

    .line 266
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSystemUIHidden:Z

    .line 343
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColor:I

    .line 344
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColorRes:I

    const/4 v3, 0x0

    .line 345
    iput-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 346
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawableRes:I

    .line 399
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerWidth:I

    const v1, 0x800003

    .line 443
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    .line 458
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeaderSticky:Z

    .line 486
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAnimateActionBarDrawerToggle:Z

    .line 503
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggleEnabled:Z

    .line 532
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mScrollToTopAfterClick:Z

    .line 548
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderDivider:Z

    .line 549
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderPadding:Z

    .line 550
    iput-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeiderHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    .line 618
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyHeaderShadow:Z

    .line 663
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterDivider:Z

    .line 664
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterClickable:Z

    .line 721
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterDivider:Z

    .line 725
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterShadow:Z

    .line 780
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFireInitialOnClick:Z

    .line 794
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMultiSelect:Z

    .line 811
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    const-wide/16 v4, 0x0

    .line 825
    iput-wide v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemIdentifier:J

    .line 854
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHasStableIds:Z

    .line 874
    new-instance v1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->idDistributor:Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;

    invoke-virtual {v1, v4}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->withIdDistributor(Lcom/mikepenz/fastadapter/IIdDistributor;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    .line 875
    new-instance v1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->idDistributor:Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;

    invoke-virtual {v1, v4}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->withIdDistributor(Lcom/mikepenz/fastadapter/IIdDistributor;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mItemAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    .line 876
    new-instance v1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->idDistributor:Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;

    invoke-virtual {v1, v4}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->withIdDistributor(Lcom/mikepenz/fastadapter/IIdDistributor;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    .line 877
    new-instance v1, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;-><init>()V

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mExpandableExtension:Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;

    .line 943
    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 979
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mKeepStickyItemsVisible:Z

    .line 994
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    .line 1084
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCloseOnClick:Z

    const/16 v1, 0x32

    .line 1098
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDelayOnDrawerClose:I

    .line 1115
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDelayDrawerClickEvent:I

    .line 1188
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mShowDrawerOnFirstLaunch:Z

    .line 1202
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mShowDrawerUntilDraggedOpened:Z

    .line 1216
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mGenerateMiniDrawer:Z

    .line 1217
    iput-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMiniDrawer:Lcom/mikepenz/materialdrawer/MiniDrawer;

    .line 91
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mUsed:Z

    const/4 v1, -0x1

    .line 77
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCurrentStickyFooterSelection:I

    .line 78
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAppended:Z

    .line 85
    new-instance v2, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributorImpl;

    invoke-direct {v2}, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributorImpl;-><init>()V

    iput-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->idDistributor:Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;

    const/4 v2, 0x1

    .line 150
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentStatusBar:Z

    .line 177
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mInnerShadow:Z

    .line 206
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBar:Z

    .line 226
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBarProgrammatically:Z

    .line 245
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFullscreen:Z

    .line 266
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSystemUIHidden:Z

    .line 343
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColor:I

    .line 344
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColorRes:I

    const/4 v3, 0x0

    .line 345
    iput-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 346
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawableRes:I

    .line 399
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerWidth:I

    const v1, 0x800003

    .line 443
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    .line 458
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeaderSticky:Z

    .line 486
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAnimateActionBarDrawerToggle:Z

    .line 503
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggleEnabled:Z

    .line 532
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mScrollToTopAfterClick:Z

    .line 548
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderDivider:Z

    .line 549
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderPadding:Z

    .line 550
    iput-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeiderHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    .line 618
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyHeaderShadow:Z

    .line 663
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterDivider:Z

    .line 664
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterClickable:Z

    .line 721
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterDivider:Z

    .line 725
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterShadow:Z

    .line 780
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFireInitialOnClick:Z

    .line 794
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMultiSelect:Z

    .line 811
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    const-wide/16 v4, 0x0

    .line 825
    iput-wide v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemIdentifier:J

    .line 854
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHasStableIds:Z

    .line 874
    new-instance v1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->idDistributor:Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;

    invoke-virtual {v1, v4}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->withIdDistributor(Lcom/mikepenz/fastadapter/IIdDistributor;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    .line 875
    new-instance v1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->idDistributor:Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;

    invoke-virtual {v1, v4}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->withIdDistributor(Lcom/mikepenz/fastadapter/IIdDistributor;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mItemAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    .line 876
    new-instance v1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->idDistributor:Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;

    invoke-virtual {v1, v4}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->withIdDistributor(Lcom/mikepenz/fastadapter/IIdDistributor;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    .line 877
    new-instance v1, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;-><init>()V

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mExpandableExtension:Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;

    .line 943
    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 979
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mKeepStickyItemsVisible:Z

    .line 994
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    .line 1084
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCloseOnClick:Z

    const/16 v1, 0x32

    .line 1098
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDelayOnDrawerClose:I

    .line 1115
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDelayDrawerClickEvent:I

    .line 1188
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mShowDrawerOnFirstLaunch:Z

    .line 1202
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mShowDrawerUntilDraggedOpened:Z

    .line 1216
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mGenerateMiniDrawer:Z

    .line 1217
    iput-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMiniDrawer:Lcom/mikepenz/materialdrawer/MiniDrawer;

    const v0, 0x1020002

    .line 100
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    .line 101
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    .line 102
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 103
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    return-void
.end method

.method private addMenuItems(Landroid/view/Menu;Z)V
    .locals 8

    .line 1047
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_menu_default_group:I

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 1048
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1049
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    if-nez p2, :cond_0

    .line 1051
    invoke-interface {v3}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    if-eq v5, v2, :cond_0

    invoke-interface {v3}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1052
    invoke-interface {v3}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 1053
    new-instance v5, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;

    invoke-direct {v5}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;-><init>()V

    .line 1054
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v6

    new-array v7, v4, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    aput-object v5, v7, v1

    invoke-interface {v6, v7}, Lcom/mikepenz/fastadapter/IItemAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;

    .line 1056
    :cond_0
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1057
    new-instance v5, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v5}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    .line 1058
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    .line 1059
    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    .line 1060
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    .line 1061
    invoke-interface {v3}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withEnabled(Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    .line 1062
    invoke-virtual {v5, v1}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    .line 1063
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v6

    new-array v7, v4, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    aput-object v5, v7, v1

    invoke-interface {v6, v7}, Lcom/mikepenz/fastadapter/IItemAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;

    .line 1064
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->addMenuItems(Landroid/view/Menu;Z)V

    goto/16 :goto_2

    .line 1065
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    if-nez v5, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 1073
    :cond_2
    new-instance v5, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v5}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    .line 1074
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    .line 1075
    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    .line 1076
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    .line 1077
    invoke-interface {v3}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    invoke-virtual {v5, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withEnabled(Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    .line 1078
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v5

    new-array v4, v4, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    aput-object v3, v4, v1

    invoke-interface {v5, v4}, Lcom/mikepenz/fastadapter/IItemAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;

    goto :goto_2

    .line 1066
    :cond_3
    :goto_1
    new-instance v5, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    invoke-direct {v5}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;-><init>()V

    .line 1067
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    .line 1068
    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withIcon(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    .line 1069
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    .line 1070
    invoke-interface {v3}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    invoke-virtual {v5, v3}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withEnabled(Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    .line 1071
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v5

    new-array v4, v4, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    aput-object v3, v4, v1

    invoke-interface {v5, v4}, Lcom/mikepenz/fastadapter/IItemAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private createContent()V
    .locals 10

    .line 1623
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCustomView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 1624
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1628
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1629
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 1634
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const v4, 0x800003

    if-ge v0, v3, :cond_4

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_4

    .line 1635
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1636
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_1

    sget v5, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_shadow_right:I

    goto :goto_0

    :cond_1
    sget v5, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_shadow_left:I

    :goto_0
    iget-object v6, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    goto :goto_2

    .line 1638
    :cond_2
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_3

    sget v5, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_shadow_left:I

    goto :goto_1

    :cond_3
    sget v5, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_shadow_right:I

    :goto_1
    iget-object v6, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    .line 1644
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_a

    .line 1645
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v7, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_recycler_view:I

    iget-object v8, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {v0, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1646
    sget v7, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_recycler_view:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    iput-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1648
    iget-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 1650
    iget-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/RecyclerView;->setFadingEdgeLength(I)V

    .line 1654
    iget-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1656
    iget-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1659
    iget-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDisplayBelowStatusBar:Ljava/lang/Boolean;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDisplayBelowStatusBar:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    iget-boolean v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSystemUIHidden:Z

    if-nez v7, :cond_6

    .line 1660
    iget-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/mikepenz/materialize/util/UIUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v7

    goto :goto_3

    :cond_6
    move v7, v6

    .line 1663
    :goto_3
    iget-object v8, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    .line 1664
    iget-boolean v9, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBar:Z

    if-nez v9, :cond_7

    iget-boolean v9, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFullscreen:Z

    if-eqz v9, :cond_9

    :cond_7
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v3, :cond_9

    iget-boolean v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSystemUIHidden:Z

    if-nez v3, :cond_9

    if-eq v8, v5, :cond_8

    const/4 v3, 0x2

    if-ne v8, v3, :cond_9

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    .line 1667
    invoke-static {v3}, Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;->isSystemBarOnBottom(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1668
    :cond_8
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/mikepenz/materialize/util/UIUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    goto :goto_4

    :cond_9
    move v3, v6

    .line 1671
    :goto_4
    iget-object v8, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v6, v7, v6, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    goto :goto_5

    .line 1673
    :cond_a
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1676
    :goto_5
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1680
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1681
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {v1, v0, v3}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1683
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mInnerShadow:Z

    if-eqz v0, :cond_c

    .line 1684
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    sget v1, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_inner_shadow:I

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1685
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1686
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 1687
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_b

    .line 1688
    sget v1, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_shadow_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .line 1690
    :cond_b
    sget v1, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_shadow_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1695
    :cond_c
    :goto_6
    iget v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColor:I

    if-eqz v0, :cond_d

    .line 1696
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColor:I

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->setBackgroundColor(I)V

    goto :goto_7

    .line 1697
    :cond_d
    iget v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColorRes:I

    if-eq v0, v2, :cond_e

    .line 1698
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColorRes:I

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->setBackgroundColor(I)V

    goto :goto_7

    .line 1699
    :cond_e
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 1700
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/mikepenz/materialize/util/UIUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1701
    :cond_f
    iget v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawableRes:I

    if-eq v0, v2, :cond_10

    .line 1702
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawableRes:I

    invoke-static {v0, v1}, Lcom/mikepenz/materialize/util/UIUtils;->setBackground(Landroid/view/View;I)V

    .line 1706
    :cond_10
    :goto_7
    invoke-static {p0}, Lcom/mikepenz/materialdrawer/DrawerUtils;->handleHeaderView(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    .line 1709
    new-instance v0, Lcom/mikepenz/materialdrawer/DrawerBuilder$5;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder$5;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    invoke-static {p0, v0}, Lcom/mikepenz/materialdrawer/DrawerUtils;->handleFooterView(Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/view/View$OnClickListener;)V

    .line 1718
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    iget-boolean v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMultiSelect:Z

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->withMultiSelect(Z)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 1719
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMultiSelect:Z

    if-eqz v0, :cond_11

    .line 1720
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, v6}, Lcom/mikepenz/fastadapter/FastAdapter;->withSelectOnLongClick(Z)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 1721
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, v5}, Lcom/mikepenz/fastadapter/FastAdapter;->withAllowDeselection(Z)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 1725
    :cond_11
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapterWrapper:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_12

    .line 1726
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_8

    .line 1728
    :cond_12
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapterWrapper:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1732
    :goto_8
    iget v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    if-nez v0, :cond_13

    iget-wide v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemIdentifier:J

    const-wide/16 v3, 0x0

    cmp-long v7, v0, v3

    if-eqz v7, :cond_13

    .line 1733
    iget-wide v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemIdentifier:J

    invoke-static {p0, v0, v1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->getPositionByIdentifier(Lcom/mikepenz/materialdrawer/DrawerBuilder;J)I

    move-result v0

    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    .line 1735
    :cond_13
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    if-nez v0, :cond_14

    .line 1736
    iput v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    .line 1738
    :cond_14
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect()V

    .line 1739
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    iget v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->select(I)V

    .line 1742
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    new-instance v1, Lcom/mikepenz/materialdrawer/DrawerBuilder$6;

    invoke-direct {v1, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder$6;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->withOnClickListener(Lcom/mikepenz/fastadapter/listeners/OnClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 1793
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    new-instance v1, Lcom/mikepenz/materialdrawer/DrawerBuilder$7;

    invoke-direct {v1, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder$7;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->withOnLongClickListener(Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 1803
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_15

    .line 1804
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1808
    :cond_15
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 1809
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAppended:Z

    if-nez v0, :cond_16

    .line 1810
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect()V

    .line 1811
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    const-string v4, "_selection"

    invoke-virtual {v0, v3, v4}, Lcom/mikepenz/fastadapter/FastAdapter;->withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 1812
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    const-string v3, "bundle_sticky_footer_selection"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0, v1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->setStickyFooterSelection(Lcom/mikepenz/materialdrawer/DrawerBuilder;ILjava/lang/Boolean;)V

    goto :goto_9

    .line 1814
    :cond_16
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect()V

    .line 1815
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    const-string v4, "_selection_appended"

    invoke-virtual {v0, v3, v4}, Lcom/mikepenz/fastadapter/FastAdapter;->withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 1816
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    const-string v3, "bundle_sticky_footer_selection_appended"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0, v1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->setStickyFooterSelection(Lcom/mikepenz/materialdrawer/DrawerBuilder;ILjava/lang/Boolean;)V

    .line 1821
    :cond_17
    :goto_9
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFireInitialOnClick:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    if-eqz v0, :cond_19

    .line 1822
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getSelections()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_a

    :cond_18
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getSelections()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1823
    :goto_a
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    invoke-virtual {p0, v2}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getDrawerItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z

    :cond_19
    return-void
.end method

.method private handleShowOnLaunch()V
    .locals 3

    .line 1251
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_1

    .line 1252
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1254
    iget-boolean v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mShowDrawerOnFirstLaunch:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "navigation_drawer_learned"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1257
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1260
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "navigation_drawer_learned"

    const/4 v2, 0x1

    .line 1261
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1262
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1264
    :cond_0
    iget-boolean v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mShowDrawerUntilDraggedOpened:Z

    if-eqz v1, :cond_1

    const-string v1, "navigation_drawer_dragged_open"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1266
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1269
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v2, Lcom/mikepenz/materialdrawer/DrawerBuilder$1;

    invoke-direct {v2, p0, v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder$1;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public varargs addDrawerItems([Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1
    .param p1    # [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 974
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IItemAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object p0
.end method

.method public varargs addStickyDrawerItems([Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1
    .param p1    # [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1014
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1015
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public append(Lcom/mikepenz/materialdrawer/Drawer;)Lcom/mikepenz/materialdrawer/Drawer;
    .locals 5
    .param p1    # Lcom/mikepenz/materialdrawer/Drawer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1571
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mUsed:Z

    if-eqz v0, :cond_0

    .line 1572
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "you must not reuse a DrawerBuilder builder"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 1575
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "please set the gravity for the drawer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x1

    .line 1579
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mUsed:Z

    .line 1580
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAppended:Z

    .line 1583
    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 1586
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_slider:I

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    .line 1587
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_background:I

    sget v4, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_background:I

    invoke-static {v1, v2, v4}, Lcom/mikepenz/materialize/util/UIUtils;->getThemeColorFromAttrOrRes(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->setBackgroundColor(I)V

    .line 1589
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {p1}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1591
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1593
    invoke-static {p0, p1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->processDrawerLayoutParams(Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-result-object p1

    .line 1595
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {v1, p1}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1597
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    sget v1, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_slider_layout:I

    invoke-virtual {p1, v1}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->setId(I)V

    .line 1599
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->addView(Landroid/view/View;I)V

    .line 1602
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->createContent()V

    .line 1605
    new-instance p1, Lcom/mikepenz/materialdrawer/Drawer;

    invoke-direct {p1, p0}, Lcom/mikepenz/materialdrawer/Drawer;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    .line 1608
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    const-string v1, "bundle_drawer_content_switched_appended"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1609
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/AccountHeader;->toggleSelectionList(Landroid/content/Context;)V

    :cond_2
    const/4 v0, 0x0

    .line 1613
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    return-object p1
.end method

.method public build()Lcom/mikepenz/materialdrawer/Drawer;
    .locals 4

    .line 1302
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mUsed:Z

    if-eqz v0, :cond_0

    .line 1303
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you must not reuse a DrawerBuilder builder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1306
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please pass an activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    .line 1310
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mUsed:Z

    .line 1313
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v1, :cond_2

    const/4 v1, -0x1

    .line 1314
    invoke-virtual {p0, v1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withDrawerLayout(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    .line 1318
    :cond_2
    new-instance v1, Lcom/mikepenz/materialize/MaterializeBuilder;

    invoke-direct {v1}, Lcom/mikepenz/materialize/MaterializeBuilder;-><init>()V

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    .line 1319
    invoke-virtual {v1, v2}, Lcom/mikepenz/materialize/MaterializeBuilder;->withActivity(Landroid/app/Activity;)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    .line 1320
    invoke-virtual {v1, v2}, Lcom/mikepenz/materialize/MaterializeBuilder;->withRootView(Landroid/view/ViewGroup;)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFullscreen:Z

    .line 1321
    invoke-virtual {v1, v2}, Lcom/mikepenz/materialize/MaterializeBuilder;->withFullscreen(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSystemUIHidden:Z

    .line 1322
    invoke-virtual {v1, v2}, Lcom/mikepenz/materialize/MaterializeBuilder;->withSystemUIHidden(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1323
    invoke-virtual {v1, v2}, Lcom/mikepenz/materialize/MaterializeBuilder;->withUseScrimInsetsLayout(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentStatusBar:Z

    .line 1324
    invoke-virtual {v1, v3}, Lcom/mikepenz/materialize/MaterializeBuilder;->withTransparentStatusBar(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBarProgrammatically:Z

    .line 1325
    invoke-virtual {v1, v3}, Lcom/mikepenz/materialize/MaterializeBuilder;->withTranslucentNavigationBarProgrammatically(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 1326
    invoke-virtual {v1, v3}, Lcom/mikepenz/materialize/MaterializeBuilder;->withContainer(Landroid/view/ViewGroup;)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    .line 1327
    invoke-virtual {v1}, Lcom/mikepenz/materialize/MaterializeBuilder;->build()Lcom/mikepenz/materialize/Materialize;

    move-result-object v1

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMaterialize:Lcom/mikepenz/materialize/Materialize;

    .line 1330
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1, v2}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->handleDrawerNavigation(Landroid/app/Activity;Z)V

    .line 1333
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->buildView()Lcom/mikepenz/materialdrawer/Drawer;

    move-result-object v1

    .line 1336
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    sget v3, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_slider_layout:I

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->setId(I)V

    .line 1338
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/widget/DrawerLayout;->addView(Landroid/view/View;I)V

    return-object v1
.end method

.method public buildForFragment()Lcom/mikepenz/materialdrawer/Drawer;
    .locals 6

    .line 1349
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mUsed:Z

    if-eqz v0, :cond_0

    .line 1350
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you must not reuse a DrawerBuilder builder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1353
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please pass an activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1355
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    .line 1356
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please pass the view which should host the DrawerLayout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    .line 1360
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mUsed:Z

    .line 1363
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, -0x1

    if-nez v1, :cond_3

    .line 1364
    invoke-virtual {p0, v2}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withDrawerLayout(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    .line 1369
    :cond_3
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1371
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/mikepenz/materialdrawer/R$id;->materialize_root:I

    if-ne v4, v5, :cond_4

    move v4, v0

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    if-nez v4, :cond_5

    .line 1376
    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 1379
    :cond_5
    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1383
    :goto_1
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1389
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1392
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    sget v4, Lcom/mikepenz/materialdrawer/R$id;->materialize_root:I

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/DrawerLayout;->setId(I)V

    .line 1395
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v2, v3}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->handleDrawerNavigation(Landroid/app/Activity;Z)V

    .line 1398
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->buildView()Lcom/mikepenz/materialdrawer/Drawer;

    move-result-object v2

    .line 1401
    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v4, v1, v3}, Landroid/support/v4/widget/DrawerLayout;->addView(Landroid/view/View;I)V

    .line 1404
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    sget v3, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_slider_layout:I

    invoke-virtual {v1, v3}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->setId(I)V

    .line 1406
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/widget/DrawerLayout;->addView(Landroid/view/View;I)V

    return-object v2
.end method

.method public buildView()Lcom/mikepenz/materialdrawer/Drawer;
    .locals 5

    .line 1521
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_slider:I

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    .line 1522
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_background:I

    sget v4, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_background:I

    invoke-static {v1, v2, v4}, Lcom/mikepenz/materialize/util/UIUtils;->getThemeColorFromAttrOrRes(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->setBackgroundColor(I)V

    .line 1524
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {v0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1527
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1529
    invoke-static {p0, v0}, Lcom/mikepenz/materialdrawer/DrawerUtils;->processDrawerLayoutParams(Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-result-object v0

    .line 1531
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1535
    :cond_0
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->createContent()V

    .line 1538
    new-instance v0, Lcom/mikepenz/materialdrawer/Drawer;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/Drawer;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    .line 1540
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    if-eqz v1, :cond_1

    .line 1541
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    invoke-virtual {v1, v0}, Lcom/mikepenz/materialdrawer/AccountHeader;->setDrawer(Lcom/mikepenz/materialdrawer/Drawer;)V

    .line 1545
    :cond_1
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    const-string v2, "bundle_drawer_content_switched"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1546
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/mikepenz/materialdrawer/AccountHeader;->toggleSelectionList(Landroid/content/Context;)V

    .line 1550
    :cond_2
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->handleShowOnLaunch()V

    .line 1553
    iget-boolean v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAppended:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mGenerateMiniDrawer:Z

    if-eqz v1, :cond_3

    .line 1555
    new-instance v1, Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-direct {v1}, Lcom/mikepenz/materialdrawer/MiniDrawer;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mikepenz/materialdrawer/MiniDrawer;->withDrawer(Lcom/mikepenz/materialdrawer/Drawer;)Lcom/mikepenz/materialdrawer/MiniDrawer;

    move-result-object v1

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    invoke-virtual {v1, v2}, Lcom/mikepenz/materialdrawer/MiniDrawer;->withAccountHeader(Lcom/mikepenz/materialdrawer/AccountHeader;)Lcom/mikepenz/materialdrawer/MiniDrawer;

    move-result-object v1

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMiniDrawer:Lcom/mikepenz/materialdrawer/MiniDrawer;

    :cond_3
    const/4 v1, 0x0

    .line 1559
    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected checkDrawerItem(IZ)Z
    .locals 0

    .line 1867
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected closeDrawerDelayed()V
    .locals 4

    .line 1831
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCloseOnClick:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_1

    .line 1832
    iget v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDelayOnDrawerClose:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 1833
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mikepenz/materialdrawer/DrawerBuilder$8;

    invoke-direct {v1, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder$8;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    iget v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDelayOnDrawerClose:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 903
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 904
    new-array v0, v0, [Lcom/mikepenz/fastadapter/IItemAdapter;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mItemAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    aput-object v4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-array v1, v3, [Lcom/mikepenz/fastadapter/IAdapterExtension;

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mExpandableExtension:Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->with(Ljava/util/Collection;Ljava/util/Collection;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 905
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->withSelectable(Z)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 906
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->withAllowDeselection(Z)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 907
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    iget-boolean v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHasStableIds:Z

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->setHasStableIds(Z)V

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    return-object v0
.end method

.method protected getDrawerItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
    .locals 1

    .line 1856
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    return-object p1
.end method

.method protected getFooterAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 921
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object v0
.end method

.method protected getHeaderAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object v0
.end method

.method protected getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mItemAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object v0
.end method

.method protected handleDrawerNavigation(Landroid/app/Activity;Z)V
    .locals 8

    .line 1416
    new-instance v0, Lcom/mikepenz/materialdrawer/DrawerBuilder$2;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder$2;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 1435
    iput-object p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 1439
    :cond_0
    iget-boolean p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggleEnabled:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz p2, :cond_1

    .line 1440
    new-instance p2, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mToolbar:Landroid/support/v7/widget/Toolbar;

    sget v6, Lcom/mikepenz/materialdrawer/R$string;->material_drawer_open:I

    sget v7, Lcom/mikepenz/materialdrawer/R$string;->material_drawer_close:I

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    iput-object p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 1470
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 1475
    :cond_1
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_2

    .line 1476
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1480
    :cond_2
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz p1, :cond_3

    .line 1481
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V

    .line 1482
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    goto :goto_0

    .line 1484
    :cond_3
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance p2, Lcom/mikepenz/materialdrawer/DrawerBuilder$4;

    invoke-direct {p2, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder$4;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    :goto_0
    return-void
.end method

.method public inflateMenu(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .line 1030
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    .line 1031
    new-instance v1, Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1033
    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x0

    .line 1035
    invoke-direct {p0, v1, p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->addMenuItems(Landroid/view/Menu;Z)V

    return-object p0
.end method

.method protected resetStickyFooterSelection()V
    .locals 3

    .line 1874
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 1875
    :goto_0
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1876
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setActivated(Z)V

    .line 1877
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public withAccountHeader(Lcom/mikepenz/materialdrawer/AccountHeader;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1
    .param p1    # Lcom/mikepenz/materialdrawer/AccountHeader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withAccountHeader(Lcom/mikepenz/materialdrawer/AccountHeader;Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withAccountHeader(Lcom/mikepenz/materialdrawer/AccountHeader;Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # Lcom/mikepenz/materialdrawer/AccountHeader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 480
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    .line 481
    iput-boolean p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeaderSticky:Z

    return-object p0
.end method

.method public withActionBarDrawerToggle(Landroid/support/v7/app/ActionBarDrawerToggle;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1
    .param p1    # Landroid/support/v7/app/ActionBarDrawerToggle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 526
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggleEnabled:Z

    .line 527
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    return-object p0
.end method

.method public withActionBarDrawerToggle(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 512
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggleEnabled:Z

    return-object p0
.end method

.method public withActionBarDrawerToggleAnimated(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 497
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAnimateActionBarDrawerToggle:Z

    return-object p0
.end method

.method public withActivity(Landroid/app/Activity;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x1020002

    .line 114
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    .line 115
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    .line 116
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method public withAdapter(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 2
    .param p1    # Lcom/mikepenz/fastadapter/FastAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;)",
            "Lcom/mikepenz/materialdrawer/DrawerBuilder;"
        }
    .end annotation

    .line 888
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 890
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->addAdapter(ILcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 891
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mItemAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->addAdapter(ILcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 892
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->addAdapter(ILcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 893
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mExpandableExtension:Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;

    invoke-virtual {p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->addExtension(Lcom/mikepenz/fastadapter/IAdapterExtension;)Lcom/mikepenz/fastadapter/FastAdapter;

    return-object p0
.end method

.method public withAdapterWrapper(Landroid/support/v7/widget/RecyclerView$Adapter;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 934
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    if-nez v0, :cond_0

    .line 935
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "this adapter has to be set in conjunction to a normal adapter which is used inside this wrapper adapter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 937
    :cond_0
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapterWrapper:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public withCloseOnClick(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 1093
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCloseOnClick:Z

    return-object p0
.end method

.method public withCustomView(Landroid/view/View;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 297
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method public withDelayDrawerClickEvent(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 1127
    iput p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDelayDrawerClickEvent:I

    return-object p0
.end method

.method public withDelayOnDrawerClose(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 1110
    iput p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDelayOnDrawerClose:I

    return-object p0
.end method

.method public withDisplayBelowStatusBar(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 172
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDisplayBelowStatusBar:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withDrawerGravity(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 452
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    return-object p0
.end method

.method public withDrawerItems(Ljava/util/List;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;)",
            "Lcom/mikepenz/materialdrawer/DrawerBuilder;"
        }
    .end annotation

    .line 963
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IItemAdapter;->set(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object p0
.end method

.method public withDrawerLayout(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 325
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 326
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "please pass an activity first to use this call"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    goto :goto_0

    .line 332
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_2

    .line 333
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_fits_not:I

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    goto :goto_0

    .line 335
    :cond_2
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer:I

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    :goto_0
    return-object p0
.end method

.method public withDrawerLayout(Landroid/support/v4/widget/DrawerLayout;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # Landroid/support/v4/widget/DrawerLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 313
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object p0
.end method

.method public withDrawerWidthDp(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 420
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "please pass an activity first to use this call"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerWidth:I

    return-object p0
.end method

.method public withDrawerWidthPx(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 408
    iput p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerWidth:I

    return-object p0
.end method

.method public withDrawerWidthRes(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 434
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 435
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "please pass an activity first to use this call"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerWidth:I

    return-object p0
.end method

.method public withFireOnInitialOnClick(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 789
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFireInitialOnClick:Z

    return-object p0
.end method

.method public withFooter(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 684
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 685
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "please pass an activity first to use this call"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterView:Landroid/view/View;

    :cond_1
    return-object p0
.end method

.method public withFooter(Landroid/view/View;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 673
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterView:Landroid/view/View;

    return-object p0
.end method

.method public withFooterClickable(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 703
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterClickable:Z

    return-object p0
.end method

.method public withFooterDivider(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 714
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterDivider:Z

    return-object p0
.end method

.method public withFullscreen(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 255
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFullscreen:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 258
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withTranslucentStatusBar(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    const/4 p1, 0x0

    .line 259
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withTranslucentNavigationBar(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    :cond_0
    return-object p0
.end method

.method public withGenerateMiniDrawer(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 1226
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mGenerateMiniDrawer:Z

    return-object p0
.end method

.method public withHasStableIds(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1

    .line 865
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHasStableIds:Z

    .line 866
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->setHasStableIds(Z)V

    :cond_0
    return-object p0
.end method

.method public withHeader(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 570
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 571
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "please pass an activity first to use this call"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderView:Landroid/view/View;

    :cond_1
    return-object p0
.end method

.method public withHeader(Landroid/view/View;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 559
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderView:Landroid/view/View;

    return-object p0
.end method

.method public withHeaderDivider(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 589
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderDivider:Z

    return-object p0
.end method

.method public withHeaderHeight(Lcom/mikepenz/materialdrawer/holder/DimenHolder;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeiderHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withHeaderPadding(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 600
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderPadding:Z

    return-object p0
.end method

.method public withInnerShadow(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mInnerShadow:Z

    return-object p0
.end method

.method public withItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 952
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    return-object p0
.end method

.method public withKeepStickyItemsVisible(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 989
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mKeepStickyItemsVisible:Z

    return-object p0
.end method

.method public withMultiSelect(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 806
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMultiSelect:Z

    return-object p0
.end method

.method public withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1155
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-object p0
.end method

.method public withOnDrawerItemLongClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1169
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    return-object p0
.end method

.method public withOnDrawerListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1141
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;

    return-object p0
.end method

.method public withOnDrawerNavigationListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerNavigationListener;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # Lcom/mikepenz/materialdrawer/Drawer$OnDrawerNavigationListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1183
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerNavigationListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerNavigationListener;

    return-object p0
.end method

.method public withRecyclerView(Landroid/support/v7/widget/RecyclerView;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 849
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method public withRootView(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 142
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 143
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "please pass an activity first to use this call"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withRootView(Landroid/view/ViewGroup;)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withRootView(Landroid/view/ViewGroup;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 127
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 130
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withTranslucentStatusBar(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    return-object p0
.end method

.method public withSavedInstance(Landroid/os/Bundle;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 1242
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    return-object p0
.end method

.method public withScrollToTopAfterClick(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 541
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mScrollToTopAfterClick:Z

    return-object p0
.end method

.method public withSelectedItem(J)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 834
    iput-wide p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemIdentifier:J

    return-object p0
.end method

.method public withSelectedItemByPosition(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 820
    iput p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    return-object p0
.end method

.method public withShowDrawerOnFirstLaunch(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 1197
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mShowDrawerOnFirstLaunch:Z

    return-object p0
.end method

.method public withShowDrawerUntilDraggedOpened(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 1211
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mShowDrawerUntilDraggedOpened:Z

    return-object p0
.end method

.method public withSliderBackgroundColor(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 356
    iput p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColor:I

    return-object p0
.end method

.method public withSliderBackgroundColorRes(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 368
    iput p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColorRes:I

    return-object p0
.end method

.method public withSliderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 381
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public withSliderBackgroundDrawableRes(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 394
    iput p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawableRes:I

    return-object p0
.end method

.method public withStickyDrawerItems(Ljava/util/List;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;)",
            "Lcom/mikepenz/materialdrawer/DrawerBuilder;"
        }
    .end annotation

    .line 1003
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    return-object p0
.end method

.method public withStickyFooter(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 745
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 746
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "please pass an activity first to use this call"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 751
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    :cond_1
    return-object p0
.end method

.method public withStickyFooter(Landroid/view/ViewGroup;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 734
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public withStickyFooterDivider(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 764
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterDivider:Z

    return-object p0
.end method

.method public withStickyFooterShadow(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 775
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterShadow:Z

    return-object p0
.end method

.method public withStickyHeader(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 638
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 639
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "please pass an activity first to use this call"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyHeaderView:Landroid/view/View;

    :cond_1
    return-object p0
.end method

.method public withStickyHeader(Landroid/view/View;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 627
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyHeaderView:Landroid/view/View;

    return-object p0
.end method

.method public withStickyHeaderShadow(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 657
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyHeaderShadow:Z

    return-object p0
.end method

.method public withSystemUIHidden(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 276
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSystemUIHidden:Z

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withFullscreen(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    :cond_0
    return-object p0
.end method

.method public withToolbar(Landroid/support/v7/widget/Toolbar;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0
    .param p1    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 201
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object p0
.end method

.method public withTranslucentNavigationBar(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBar:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 219
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBarProgrammatically:Z

    :cond_0
    return-object p0
.end method

.method public withTranslucentNavigationBarProgrammatically(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBarProgrammatically:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 238
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBar:Z

    :cond_0
    return-object p0
.end method

.method public withTranslucentStatusBar(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentStatusBar:Z

    return-object p0
.end method
