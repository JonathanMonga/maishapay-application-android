.class public Lcom/mikepenz/materialdrawer/Drawer;
.super Ljava/lang/Object;
.source "Drawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemSelectedListener;,
        Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;,
        Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;,
        Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;,
        Lcom/mikepenz/materialdrawer/Drawer$OnDrawerNavigationListener;
    }
.end annotation


# static fields
.field protected static final BUNDLE_DRAWER_CONTENT_SWITCHED:Ljava/lang/String; = "bundle_drawer_content_switched"

.field protected static final BUNDLE_DRAWER_CONTENT_SWITCHED_APPENDED:Ljava/lang/String; = "bundle_drawer_content_switched_appended"

.field protected static final BUNDLE_SELECTION:Ljava/lang/String; = "_selection"

.field protected static final BUNDLE_SELECTION_APPENDED:Ljava/lang/String; = "_selection_appended"

.field protected static final BUNDLE_STICKY_FOOTER_SELECTION:Ljava/lang/String; = "bundle_sticky_footer_selection"

.field protected static final BUNDLE_STICKY_FOOTER_SELECTION_APPENDED:Ljava/lang/String; = "bundle_sticky_footer_selection_appended"

.field protected static final PREF_USER_LEARNED_DRAWER:Ljava/lang/String; = "navigation_drawer_learned"

.field protected static final PREF_USER_OPENED_DRAWER_BY_DRAGGING:Ljava/lang/String; = "navigation_drawer_dragged_open"


# instance fields
.field private mContentView:Landroid/widget/FrameLayout;

.field protected final mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

.field private originalDrawerItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private originalDrawerState:Landroid/os/Bundle;

.field private originalOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

.field private originalOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;


# direct methods
.method protected constructor <init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    return-void
.end method

.method private getStickyFooterShadow()Landroid/view/View;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterShadowView:Landroid/view/View;

    return-object v0
.end method

.method private setItems(Ljava/util/List;Z)V
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
            ">;Z)V"
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerItems:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 792
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerItems:Ljava/util/List;

    .line 794
    :cond_0
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {p2}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mikepenz/fastadapter/IItemAdapter;->setNewList(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;

    return-void
.end method


# virtual methods
.method public addItem(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V
    .locals 3
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 689
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/mikepenz/fastadapter/IItemAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;

    return-void
.end method

.method public addItemAtPosition(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;I)V
    .locals 3
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 699
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, p2, v1}, Lcom/mikepenz/fastadapter/IItemAdapter;->add(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;

    return-void
.end method

.method public varargs addItems([Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V
    .locals 1
    .param p1    # [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 761
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IItemAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;

    return-void
.end method

.method public varargs addItemsAtPosition(I[Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V
    .locals 1
    .param p2    # [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 771
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mikepenz/fastadapter/IItemAdapter;->add(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;

    return-void
.end method

.method public addStickyFooterItem(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V
    .locals 2
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 828
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->rebuildStickyFooterView(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    return-void
.end method

.method public addStickyFooterItemAtPosition(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;I)V
    .locals 2
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 843
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 848
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->rebuildStickyFooterView(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    return-void
.end method

.method public closeDrawer()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    :cond_0
    return-void
.end method

.method public deselect()V
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect()V

    return-void
.end method

.method public deselect(J)V
    .locals 1

    .line 495
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer;->getPosition(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect(I)V

    return-void
.end method

.method public getActionBarDrawerToggle()Landroid/support/v7/app/ActionBarDrawerToggle;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

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

    .line 229
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    return-object v0
.end method

.method public getContent()Landroid/widget/FrameLayout;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mContentView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    sget v1, Lcom/mikepenz/materialdrawer/R$id;->content_layout:I

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mContentView:Landroid/widget/FrameLayout;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mContentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCurrentSelectedPosition()I
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getSelections()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getSelections()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentSelection()J
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getCurrentSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getDrawerItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    invoke-interface {v0}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getIdentifier()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentStickyFooterSelectedPosition()I
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCurrentStickyFooterSelection:I

    return v0
.end method

.method protected getDrawerBuilder()Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    return-object v0
.end method

.method public getDrawerItem(J)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
    .locals 1

    .line 418
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer;->getPosition(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    return-object p1
.end method

.method public getDrawerItem(Ljava/lang/Object;)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->getDrawerItem(Ljava/util/List;Ljava/lang/Object;)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public getDrawerItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItemAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method public getFooter()Landroid/view/View;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method public getFooterAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;
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

    .line 256
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object v0
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getHeaderAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;
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

    .line 238
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object v0
.end method

.method public getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;
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

    .line 247
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mItemAdapter:Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object v0
.end method

.method public getMaterialize()Lcom/mikepenz/materialize/Materialize;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMaterialize:Lcom/mikepenz/materialize/Materialize;

    return-object v0
.end method

.method public getMiniDrawer()Lcom/mikepenz/materialdrawer/MiniDrawer;
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMiniDrawer:Lcom/mikepenz/materialdrawer/MiniDrawer;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    new-instance v1, Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-direct {v1}, Lcom/mikepenz/materialdrawer/MiniDrawer;-><init>()V

    invoke-virtual {v1, p0}, Lcom/mikepenz/materialdrawer/MiniDrawer;->withDrawer(Lcom/mikepenz/materialdrawer/Drawer;)Lcom/mikepenz/materialdrawer/MiniDrawer;

    move-result-object v1

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v2, v2, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    invoke-virtual {v1, v2}, Lcom/mikepenz/materialdrawer/MiniDrawer;->withAccountHeader(Lcom/mikepenz/materialdrawer/AccountHeader;)Lcom/mikepenz/materialdrawer/MiniDrawer;

    move-result-object v1

    iput-object v1, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMiniDrawer:Lcom/mikepenz/materialdrawer/MiniDrawer;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMiniDrawer:Lcom/mikepenz/materialdrawer/MiniDrawer;

    return-object v0
.end method

.method public getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-object v0
.end method

.method public getOnDrawerItemLongClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    return-object v0
.end method

.method public getOnDrawerNavigationListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerNavigationListener;
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerNavigationListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerNavigationListener;

    return-object v0
.end method

.method public getOriginalDrawerItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerItems:Ljava/util/List;

    return-object v0
.end method

.method public getPosition(J)I
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-static {v0, p1, p2}, Lcom/mikepenz/materialdrawer/DrawerUtils;->getPositionByIdentifier(Lcom/mikepenz/materialdrawer/DrawerBuilder;J)I

    move-result p1

    return p1
.end method

.method public getPosition(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)I
    .locals 2
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 398
    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/materialdrawer/Drawer;->getPosition(J)I

    move-result p1

    return p1
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getSlider()Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    return-object v0
.end method

.method public getStickyFooter()Landroid/view/View;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getStickyFooterPosition(J)I
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-static {v0, p1, p2}, Lcom/mikepenz/materialdrawer/DrawerUtils;->getStickyFooterPositionByIdentifier(Lcom/mikepenz/materialdrawer/DrawerBuilder;J)I

    move-result p1

    return p1
.end method

.method public getStickyFooterPosition(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)I
    .locals 2
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 438
    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooterPosition(J)I

    move-result p1

    return p1
.end method

.method public getStickyHeader()Landroid/view/View;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public isDrawerOpen()Z
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public openDrawer()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    :cond_0
    return-void
.end method

.method public removeAllItems()V
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItemAdapter;->clear()Lcom/mikepenz/fastadapter/IItemAdapter;

    return-void
.end method

.method public removeAllStickyFooterItems()V
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 887
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public removeHeader()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getHeaderAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItemAdapter;->clear()Lcom/mikepenz/fastadapter/IItemAdapter;

    return-void
.end method

.method public removeItem(J)V
    .locals 1

    .line 729
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer;->getPosition(J)I

    move-result p1

    .line 730
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->checkDrawerItem(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 731
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {p2}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mikepenz/fastadapter/IItemAdapter;->remove(I)Lcom/mikepenz/fastadapter/IItemAdapter;

    :cond_0
    return-void
.end method

.method public removeItemByPosition(I)V
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->checkDrawerItem(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IItemAdapter;->remove(I)Lcom/mikepenz/fastadapter/IItemAdapter;

    :cond_0
    return-void
.end method

.method public varargs removeItems([J)V
    .locals 4

    if-eqz p1, :cond_0

    .line 742
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    .line 743
    invoke-virtual {p0, v2, v3}, Lcom/mikepenz/materialdrawer/Drawer;->removeItem(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeStickyFooterItemAtPosition(I)V
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 873
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 876
    :cond_0
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->rebuildStickyFooterView(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    return-void
.end method

.method public resetDrawerContent()V
    .locals 2

    .line 1003
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->switchedDrawerContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1005
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/Drawer;->setOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)V

    .line 1006
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/Drawer;->setOnDrawerItemLongClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;)V

    .line 1007
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerItems:Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mikepenz/materialdrawer/Drawer;->setItems(Ljava/util/List;Z)V

    .line 1008
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->withSavedInstanceState(Landroid/os/Bundle;)Lcom/mikepenz/fastadapter/FastAdapter;

    const/4 v0, 0x0

    .line 1010
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    .line 1011
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    .line 1012
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerItems:Ljava/util/List;

    .line 1013
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerState:Landroid/os/Bundle;

    .line 1016
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1019
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooter()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1020
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooter()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    :cond_0
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooterShadow()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1023
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooterShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    if-eqz v0, :cond_2

    .line 1028
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iput-boolean v1, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionListShown:Z

    :cond_2
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-eqz p1, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-boolean v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAppended:Z

    if-nez v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    const-string v1, "_selection"

    invoke-virtual {v0, p1, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bundle_sticky_footer_selection"

    .line 1043
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCurrentStickyFooterSelection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "bundle_drawer_content_switched"

    .line 1044
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->switchedDrawerContent()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    const-string v1, "_selection_appended"

    invoke-virtual {v0, p1, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bundle_sticky_footer_selection_appended"

    .line 1047
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCurrentStickyFooterSelection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "bundle_drawer_content_switched_appended"

    .line 1048
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->switchedDrawerContent()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public setActionBarDrawerToggle(Landroid/support/v7/app/ActionBarDrawerToggle;)V
    .locals 2
    .param p1    # Landroid/support/v7/app/ActionBarDrawerToggle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 121
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggleEnabled:Z

    .line 122
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iput-object p1, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 123
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->handleDrawerNavigation(Landroid/app/Activity;Z)V

    return-void
.end method

.method public setFullscreen(Z)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMaterialize:Lcom/mikepenz/materialize/Materialize;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMaterialize:Lcom/mikepenz/materialize/Materialize;

    invoke-virtual {v0, p1}, Lcom/mikepenz/materialize/Materialize;->setFullscreen(Z)V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 2

    .line 385
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getSlider()Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 386
    iput p1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 387
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getSlider()Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    return-void
.end method

.method public setHeader(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 292
    invoke-virtual {p0, p1, v0, v0}, Lcom/mikepenz/materialdrawer/Drawer;->setHeader(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setHeader(Landroid/view/View;Z)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 302
    invoke-virtual {p0, p1, v0, p2}, Lcom/mikepenz/materialdrawer/Drawer;->setHeader(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setHeader(Landroid/view/View;ZZ)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mikepenz/materialdrawer/Drawer;->setHeader(Landroid/view/View;ZZLcom/mikepenz/materialdrawer/holder/DimenHolder;)V

    return-void
.end method

.method public setHeader(Landroid/view/View;ZZLcom/mikepenz/materialdrawer/holder/DimenHolder;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 325
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getHeaderAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItemAdapter;->clear()Lcom/mikepenz/fastadapter/IItemAdapter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 327
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {p2}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getHeaderAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object p2

    new-array v0, v0, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    new-instance v2, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;-><init>()V

    invoke-virtual {v2, p1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withView(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withDivider(Z)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withHeight(Lcom/mikepenz/materialdrawer/holder/DimenHolder;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object p1

    sget-object p3, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;->TOP:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    invoke-virtual {p1, p3}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withViewPosition(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/mikepenz/fastadapter/IItemAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;

    goto :goto_0

    .line 329
    :cond_0
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {p2}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getHeaderAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object p2

    new-array v0, v0, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    new-instance v2, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;-><init>()V

    invoke-virtual {v2, p1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withView(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withDivider(Z)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withHeight(Lcom/mikepenz/materialdrawer/holder/DimenHolder;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object p1

    sget-object p3, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;->NONE:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    invoke-virtual {p1, p3}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withViewPosition(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/mikepenz/fastadapter/IItemAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;

    .line 332
    :goto_0
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object p1, p1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object p2, p2, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result p2

    iget-object p3, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object p3, p3, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result p3

    iget-object p4, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object p4, p4, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result p4

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    return-void
.end method

.method public setItemAtPosition(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;I)V
    .locals 3
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 709
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, p2, v1}, Lcom/mikepenz/fastadapter/IItemAdapter;->add(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
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
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 780
    invoke-direct {p0, p1, v0}, Lcom/mikepenz/materialdrawer/Drawer;->setItems(Ljava/util/List;Z)V

    return-void
.end method

.method public setOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)V
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iput-object p1, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-void
.end method

.method public setOnDrawerItemLongClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;)V
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iput-object p1, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    return-void
.end method

.method public setOnDrawerNavigationListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerNavigationListener;)V
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iput-object p1, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerNavigationListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerNavigationListener;

    return-void
.end method

.method public setSelection(J)Z
    .locals 0

    .line 505
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer;->getPosition(J)I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer;->setSelectionAtPosition(IZ)Z

    move-result p1

    return p1
.end method

.method public setSelection(JZ)Z
    .locals 0

    .line 516
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer;->getPosition(J)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/mikepenz/materialdrawer/Drawer;->setSelectionAtPosition(IZ)Z

    move-result p1

    return p1
.end method

.method public setSelection(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 1
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 537
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/Drawer;->getPosition(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/materialdrawer/Drawer;->setSelectionAtPosition(IZ)Z

    move-result p1

    return p1
.end method

.method public setSelection(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Z)Z
    .locals 0
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 548
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/Drawer;->getPosition(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer;->setSelectionAtPosition(IZ)Z

    move-result p1

    return p1
.end method

.method public setSelectionAtPosition(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 558
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/materialdrawer/Drawer;->setSelectionAtPosition(IZ)Z

    move-result p1

    return p1
.end method

.method public setSelectionAtPosition(IZ)Z
    .locals 4

    .line 571
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 572
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect()V

    .line 573
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p1, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->select(IZ)V

    if-eqz p2, :cond_1

    if-ltz p1, :cond_1

    .line 575
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object p2, p2, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {p2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p2

    check-cast p2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    .line 577
    instance-of v0, p2, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 578
    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    move-result-object v0

    invoke-interface {v0, v2, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    invoke-interface {v0, v2, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z

    .line 587
    :cond_1
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->resetStickyFooterSelection()V

    :cond_2
    return v1
.end method

.method public setStickyFooterItemAtPosition(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;I)V
    .locals 1
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 858
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 859
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 862
    :cond_0
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->rebuildStickyFooterView(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    return-void
.end method

.method public setStickyFooterSelection(JZ)V
    .locals 0

    .line 527
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooterPosition(J)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/mikepenz/materialdrawer/Drawer;->setStickyFooterSelectionAtPosition(IZ)V

    return-void
.end method

.method public setStickyFooterSelectionAtPosition(I)V
    .locals 1

    const/4 v0, 0x1

    .line 599
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/materialdrawer/Drawer;->setStickyFooterSelectionAtPosition(IZ)V

    return-void
.end method

.method public setStickyFooterSelectionAtPosition(IZ)V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/mikepenz/materialdrawer/DrawerUtils;->setStickyFooterSelection(Lcom/mikepenz/materialdrawer/DrawerBuilder;ILjava/lang/Boolean;)V

    return-void
.end method

.method public setToolbar(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, p1, p2, v0}, Lcom/mikepenz/materialdrawer/Drawer;->setToolbar(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Z)V

    return-void
.end method

.method public setToolbar(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Z)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iput-object p2, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 112
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {p2, p1, p3}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->handleDrawerNavigation(Landroid/app/Activity;Z)V

    return-void
.end method

.method public switchDrawerContent(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;Ljava/util/List;I)V
    .locals 3
    .param p1    # Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;",
            "Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;I)V"
        }
    .end annotation

    .line 973
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->switchedDrawerContent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 975
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    .line 976
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getOnDrawerItemLongClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    .line 977
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->saveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerState:Landroid/os/Bundle;

    .line 978
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mExpandableExtension:Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/expandable/ExpandableExtension;->collapse(Z)V

    .line 979
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerItems:Ljava/util/List;

    .line 983
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/Drawer;->setOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)V

    .line 984
    invoke-virtual {p0, p2}, Lcom/mikepenz/materialdrawer/Drawer;->setOnDrawerItemLongClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;)V

    const/4 p1, 0x1

    .line 985
    invoke-direct {p0, p3, p1}, Lcom/mikepenz/materialdrawer/Drawer;->setItems(Ljava/util/List;Z)V

    .line 986
    invoke-virtual {p0, p4, v1}, Lcom/mikepenz/materialdrawer/Drawer;->setSelectionAtPosition(IZ)Z

    .line 988
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-boolean p1, p1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mKeepStickyItemsVisible:Z

    if-nez p1, :cond_2

    .line 990
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooter()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    if-eqz p1, :cond_1

    .line 991
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooter()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 993
    :cond_1
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooterShadow()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 994
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooterShadow()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public switchedDrawerContent()Z
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerItems:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public updateBadge(JLcom/mikepenz/materialdrawer/holder/StringHolder;)V
    .locals 0

    .line 631
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerItem(J)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object p1

    .line 632
    instance-of p2, p1, Lcom/mikepenz/materialdrawer/model/interfaces/Badgeable;

    if-eqz p2, :cond_0

    .line 633
    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/Badgeable;

    .line 634
    invoke-interface {p1, p3}, Lcom/mikepenz/materialdrawer/model/interfaces/Badgeable;->withBadge(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Ljava/lang/Object;

    .line 635
    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/Drawer;->updateItem(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V

    :cond_0
    return-void
.end method

.method public updateIcon(JLcom/mikepenz/materialdrawer/holder/ImageHolder;)V
    .locals 0

    .line 663
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerItem(J)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object p1

    .line 664
    instance-of p2, p1, Lcom/mikepenz/materialdrawer/model/interfaces/Iconable;

    if-eqz p2, :cond_0

    .line 665
    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/Iconable;

    .line 666
    invoke-interface {p1, p3}, Lcom/mikepenz/materialdrawer/model/interfaces/Iconable;->withIcon(Lcom/mikepenz/materialdrawer/holder/ImageHolder;)Ljava/lang/Object;

    .line 667
    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/Drawer;->updateItem(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V

    :cond_0
    return-void
.end method

.method public updateItem(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V
    .locals 1
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 620
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/Drawer;->getPosition(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/materialdrawer/Drawer;->updateItemAtPosition(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;I)V

    return-void
.end method

.method public updateItemAtPosition(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;I)V
    .locals 2
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 678
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->checkDrawerItem(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/mikepenz/fastadapter/IItemAdapter;->set(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;

    :cond_0
    return-void
.end method

.method public updateName(JLcom/mikepenz/materialdrawer/holder/StringHolder;)V
    .locals 0

    .line 647
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerItem(J)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object p1

    .line 648
    instance-of p2, p1, Lcom/mikepenz/materialdrawer/model/interfaces/Nameable;

    if-eqz p2, :cond_0

    .line 649
    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/Nameable;

    .line 650
    invoke-interface {p1, p3}, Lcom/mikepenz/materialdrawer/model/interfaces/Nameable;->withName(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Ljava/lang/Object;

    .line 651
    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/Drawer;->updateItem(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V

    :cond_0
    return-void
.end method

.method public updateStickyFooterItem(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V
    .locals 1
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 804
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooterPosition(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/materialdrawer/Drawer;->updateStickyFooterItemAtPosition(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;I)V

    return-void
.end method

.method public updateStickyFooterItemAtPosition(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;I)V
    .locals 1
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 814
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 815
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 818
    :cond_0
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->rebuildStickyFooterView(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    return-void
.end method
