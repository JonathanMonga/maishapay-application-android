.class public Lcom/mikepenz/materialize/MaterializeBuilder;
.super Ljava/lang/Object;
.source "MaterializeBuilder.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mContainer:Landroid/view/ViewGroup;

.field protected mContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mContentRoot:Landroid/view/ViewGroup;

.field protected mFullscreen:Z

.field protected mNavigationBarPadding:Z

.field protected mRootView:Landroid/view/ViewGroup;

.field protected mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

.field protected mStatusBarColor:I

.field protected mStatusBarColorRes:I

.field protected mStatusBarPadding:Z

.field protected mSystemUIHidden:Z

.field protected mTintNavigationBar:Z

.field protected mTintStatusBar:Z

.field protected mTranslucentNavigationBarProgrammatically:Z

.field protected mTranslucentStatusBarProgrammatically:Z

.field protected mTransparentNavigationBar:Z

.field protected mTransparentStatusBar:Z

.field protected mUseScrimInsetsLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mUseScrimInsetsLayout:Z

    const/4 v1, 0x0

    .line 99
    iput v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColor:I

    const/4 v2, -0x1

    .line 100
    iput v2, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColorRes:I

    .line 125
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTransparentStatusBar:Z

    .line 137
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentStatusBarProgrammatically:Z

    .line 152
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarPadding:Z

    .line 164
    iput-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTintStatusBar:Z

    .line 179
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentNavigationBarProgrammatically:Z

    .line 194
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTransparentNavigationBar:Z

    .line 206
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mNavigationBarPadding:Z

    .line 218
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTintNavigationBar:Z

    .line 237
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mFullscreen:Z

    .line 260
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mSystemUIHidden:Z

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainer:Landroid/view/ViewGroup;

    .line 294
    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mUseScrimInsetsLayout:Z

    const/4 v1, 0x0

    .line 99
    iput v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColor:I

    const/4 v2, -0x1

    .line 100
    iput v2, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColorRes:I

    .line 125
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTransparentStatusBar:Z

    .line 137
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentStatusBarProgrammatically:Z

    .line 152
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarPadding:Z

    .line 164
    iput-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTintStatusBar:Z

    .line 179
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentNavigationBarProgrammatically:Z

    .line 194
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTransparentNavigationBar:Z

    .line 206
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mNavigationBarPadding:Z

    .line 218
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTintNavigationBar:Z

    .line 237
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mFullscreen:Z

    .line 260
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mSystemUIHidden:Z

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainer:Landroid/view/ViewGroup;

    .line 294
    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    const v0, 0x1020002

    .line 42
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    .line 43
    iput-object p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public build()Lcom/mikepenz/materialize/Materialize;
    .locals 8

    .line 322
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please pass an activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    iget-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mUseScrimInsetsLayout:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    .line 328
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lcom/mikepenz/materialize/R$layout;->materialize:I

    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;

    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    .line 331
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/mikepenz/materialize/R$id;->materialize_root:I

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v3

    .line 341
    :goto_0
    iget v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColor:I

    if-nez v5, :cond_3

    iget v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColorRes:I

    if-eq v5, v2, :cond_3

    .line 342
    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    iget v6, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColorRes:I

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColor:I

    goto :goto_1

    .line 343
    :cond_3
    iget v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColor:I

    if-nez v5, :cond_4

    .line 344
    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/mikepenz/materialize/R$attr;->colorPrimaryDark:I

    sget v7, Lcom/mikepenz/materialize/R$color;->materialize_primary_dark:I

    invoke-static {v5, v6, v7}, Lcom/mikepenz/materialize/util/UIUtils;->getThemeColorFromAttrOrRes(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColor:I

    .line 348
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    iget v6, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColor:I

    invoke-interface {v5, v6}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->setInsetForeground(I)V

    .line 349
    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    iget-boolean v6, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTintStatusBar:Z

    invoke-interface {v5, v6}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->setTintStatusBar(Z)V

    .line 350
    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    iget-boolean v6, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTintNavigationBar:Z

    invoke-interface {v5, v6}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->setTintNavigationBar(Z)V

    .line 353
    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    iget-boolean v6, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mFullscreen:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mSystemUIHidden:Z

    if-nez v6, :cond_5

    move v6, v1

    goto :goto_2

    :cond_5
    move v6, v3

    :goto_2
    invoke-interface {v5, v6}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->setSystemUIVisible(Z)V

    if-nez v4, :cond_6

    .line 358
    iget-object v4, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 361
    :cond_6
    iget-object v4, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 365
    :goto_3
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 371
    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    invoke-interface {v5}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    invoke-interface {v0}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContentRoot:Landroid/view/ViewGroup;

    .line 375
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 376
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContentRoot:Landroid/view/ViewGroup;

    .line 377
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    invoke-interface {v4}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    :cond_7
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContentRoot:Landroid/view/ViewGroup;

    sget v4, Lcom/mikepenz/materialize/R$id;->materialize_root:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 387
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_8

    .line 388
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 394
    :cond_8
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 332
    :cond_9
    :goto_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You have to set your layout for this activity with setContentView() first. Or you build the drawer on your own with .buildView()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_a
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 398
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please pass a container"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_b
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 404
    iget-object v4, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 407
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 411
    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_c

    .line 415
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 421
    :cond_c
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    :goto_5
    iget-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mSystemUIHidden:Z

    if-eqz v0, :cond_d

    .line 426
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_d

    .line 427
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x1706

    .line 428
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 439
    :cond_d
    iget-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentStatusBarProgrammatically:Z

    const/16 v2, 0x15

    if-eqz v0, :cond_e

    .line 440
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_e

    .line 442
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/mikepenz/materialize/util/UIUtils;->setTranslucentStatusFlag(Landroid/app/Activity;Z)V

    .line 447
    :cond_e
    iget-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentNavigationBarProgrammatically:Z

    if-eqz v0, :cond_f

    .line 448
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_f

    .line 450
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/mikepenz/materialize/util/UIUtils;->setTranslucentNavigationFlag(Landroid/app/Activity;Z)V

    .line 454
    :cond_f
    iget-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTransparentStatusBar:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTransparentNavigationBar:Z

    if-eqz v0, :cond_11

    .line 456
    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_11

    .line 457
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 462
    :cond_11
    iget-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTransparentStatusBar:Z

    if-eqz v0, :cond_12

    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_12

    .line 465
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/mikepenz/materialize/util/UIUtils;->setTranslucentStatusFlag(Landroid/app/Activity;Z)V

    .line 466
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 470
    :cond_12
    iget-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTransparentNavigationBar:Z

    if-eqz v0, :cond_13

    .line 472
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_13

    .line 473
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/mikepenz/materialize/util/UIUtils;->setTranslucentNavigationFlag(Landroid/app/Activity;Z)V

    .line 474
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 481
    :cond_13
    iget-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarPadding:Z

    if-eqz v0, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_14

    .line 482
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mikepenz/materialize/util/UIUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_6

    :cond_14
    move v0, v3

    .line 485
    :goto_6
    iget-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mNavigationBarPadding:Z

    if-eqz v1, :cond_15

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_15

    .line 486
    iget-object v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/mikepenz/materialize/util/UIUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    goto :goto_7

    :cond_15
    move v1, v3

    .line 488
    :goto_7
    iget-boolean v4, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarPadding:Z

    if-nez v4, :cond_16

    iget-boolean v4, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mNavigationBarPadding:Z

    if-eqz v4, :cond_17

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_17

    .line 489
    :cond_16
    iget-object v2, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    invoke-interface {v2}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_17
    const/4 v0, 0x0

    .line 493
    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    .line 496
    new-instance v0, Lcom/mikepenz/materialize/Materialize;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialize/Materialize;-><init>(Lcom/mikepenz/materialize/MaterializeBuilder;)V

    return-object v0
.end method

.method public withActivity(Landroid/app/Activity;)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 1

    const v0, 0x1020002

    .line 54
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    .line 55
    iput-object p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public withContainer(Landroid/view/ViewGroup;)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public withContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainer:Landroid/view/ViewGroup;

    .line 316
    iput-object p2, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object p0
.end method

.method public withContainerLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object p0
.end method

.method public withFullscreen(Z)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 247
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mFullscreen:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 250
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialize/MaterializeBuilder;->withTranslucentNavigationBarProgrammatically(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    const/4 p1, 0x0

    .line 251
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialize/MaterializeBuilder;->withTintedStatusBar(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    .line 252
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialize/MaterializeBuilder;->withTintedNavigationBar(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    :cond_0
    return-object p0
.end method

.method public withNavigationBarPadding(Z)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mNavigationBarPadding:Z

    return-object p0
.end method

.method public withRootView(I)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 77
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 78
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "please pass an activity first to use this call"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/mikepenz/materialize/MaterializeBuilder;->withRootView(Landroid/view/ViewGroup;)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withRootView(Landroid/view/ViewGroup;)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public withStatusBarColor(I)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 109
    iput p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColor:I

    return-object p0
.end method

.method public withStatusBarColorRes(I)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 120
    iput p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColorRes:I

    return-object p0
.end method

.method public withStatusBarPadding(Z)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarPadding:Z

    return-object p0
.end method

.method public withSystemUIHidden(Z)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 270
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mSystemUIHidden:Z

    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialize/MaterializeBuilder;->withFullscreen(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    :cond_0
    return-object p0
.end method

.method public withTintedNavigationBar(Z)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTintNavigationBar:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 230
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialize/MaterializeBuilder;->withTranslucentNavigationBarProgrammatically(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    :cond_0
    return-object p0
.end method

.method public withTintedStatusBar(Z)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 173
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTintStatusBar:Z

    return-object p0
.end method

.method public withTranslucentNavigationBarProgrammatically(Z)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentNavigationBarProgrammatically:Z

    return-object p0
.end method

.method public withTranslucentStatusBarProgrammatically(Z)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentStatusBarProgrammatically:Z

    return-object p0
.end method

.method public withTransparentNavigationBar(Z)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTransparentNavigationBar:Z

    return-object p0
.end method

.method public withTransparentStatusBar(Z)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTransparentStatusBar:Z

    return-object p0
.end method

.method public withUseScrimInsetsLayout(Z)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mUseScrimInsetsLayout:Z

    return-object p0
.end method
