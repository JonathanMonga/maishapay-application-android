.class public Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
.super Ljava/lang/Object;
.source "AccountHeaderBuilder.java"


# instance fields
.field protected mAccountHeader:Landroid/view/View;

.field protected mAccountHeaderBackground:Landroid/widget/ImageView;

.field protected mAccountHeaderContainer:Landroid/view/View;

.field protected mAccountHeaderTextSection:Landroid/view/View;

.field protected mAccountHeaderTextSectionBackgroundResource:I

.field protected mAccountSwitcherArrow:Landroid/widget/ImageView;

.field protected mActivity:Landroid/app/Activity;

.field protected mAlternativeProfileHeaderSwitching:Z

.field protected mCloseDrawerOnProfileListClick:Ljava/lang/Boolean;

.field protected mCompactStyle:Z

.field protected mCurrentHiddenInList:Z

.field protected mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

.field protected mCurrentProfileEmail:Landroid/widget/TextView;

.field protected mCurrentProfileName:Landroid/widget/TextView;

.field protected mCurrentProfileView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

.field protected mDividerBelowHeader:Z

.field protected mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

.field protected mEmailTypeface:Landroid/graphics/Typeface;

.field protected mHeaderBackground:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

.field protected mHeaderBackgroundScaleType:Landroid/widget/ImageView$ScaleType;

.field protected mHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field protected mNameTypeface:Landroid/graphics/Typeface;

.field protected mOnAccountHeaderItemLongClickListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderItemLongClickListener;

.field protected mOnAccountHeaderListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderListener;

.field protected mOnAccountHeaderProfileImageListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderProfileImageListener;

.field protected mOnAccountHeaderSelectionViewClickListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderSelectionViewClickListener;

.field protected mOnProfileClickDrawerCloseDelay:I

.field protected mOnlyMainProfileImageVisible:Z

.field protected mOnlySmallProfileImagesVisible:Z

.field protected mPaddingBelowHeader:Z

.field protected mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

.field protected mProfileFirstView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

.field protected mProfileImagesClickable:Z

.field protected mProfileImagesVisible:Z

.field protected mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

.field protected mProfileSecondView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

.field protected mProfileThird:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

.field protected mProfileThirdView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

.field protected mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;",
            ">;"
        }
    .end annotation
.end field

.field protected mResetDrawerOnProfileListClick:Z

.field protected mSavedInstance:Landroid/os/Bundle;

.field protected mSelectionFirstLine:Ljava/lang/String;

.field protected mSelectionFirstLineShown:Z

.field protected mSelectionListEnabled:Z

.field protected mSelectionListEnabledForSingleProfile:Z

.field protected mSelectionListShown:Z

.field protected mSelectionSecondLine:Ljava/lang/String;

.field protected mSelectionSecondLineShown:Z

.field protected mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field protected mThreeSmallProfileImages:Z

.field protected mTranslucentStatusBar:Z

.field protected mTypeface:Landroid/graphics/Typeface;

.field private onCurrentProfileClickListener:Landroid/view/View$OnClickListener;

.field private onCurrentProfileLongClickListener:Landroid/view/View$OnLongClickListener;

.field private onDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

.field private onDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

.field private onProfileClickListener:Landroid/view/View$OnClickListener;

.field private onProfileLongClickListener:Landroid/view/View$OnLongClickListener;

.field private onSelectionClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionListShown:Z

    const/4 v1, -0x1

    .line 69
    iput v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSectionBackgroundResource:I

    .line 86
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCompactStyle:Z

    .line 208
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentHiddenInList:Z

    const/4 v1, 0x1

    .line 222
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionFirstLineShown:Z

    .line 223
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionSecondLineShown:Z

    .line 290
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mPaddingBelowHeader:Z

    .line 304
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDividerBelowHeader:Z

    .line 318
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mTranslucentStatusBar:Z

    const/4 v2, 0x0

    .line 368
    iput-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mHeaderBackgroundScaleType:Landroid/widget/ImageView$ScaleType;

    .line 382
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileImagesVisible:Z

    .line 396
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnlyMainProfileImageVisible:Z

    .line 410
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnlySmallProfileImagesVisible:Z

    .line 424
    iput-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCloseDrawerOnProfileListClick:Ljava/lang/Boolean;

    .line 438
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mResetDrawerOnProfileListClick:Z

    .line 452
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileImagesClickable:Z

    .line 466
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAlternativeProfileHeaderSwitching:Z

    .line 480
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mThreeSmallProfileImages:Z

    const/16 v0, 0x64

    .line 494
    iput v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnProfileClickDrawerCloseDelay:I

    .line 539
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionListEnabledForSingleProfile:Z

    .line 553
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionListEnabled:Z

    .line 1211
    new-instance v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$1;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$1;-><init>(Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onCurrentProfileClickListener:Landroid/view/View$OnClickListener;

    .line 1221
    new-instance v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$2;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$2;-><init>(Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onProfileClickListener:Landroid/view/View$OnClickListener;

    .line 1251
    new-instance v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$3;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$3;-><init>(Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onCurrentProfileLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1265
    new-instance v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$4;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$4;-><init>(Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onProfileLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1333
    new-instance v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$6;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$6;-><init>(Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onSelectionClickListener:Landroid/view/View$OnClickListener;

    .line 1400
    new-instance v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$7;-><init>(Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    .line 1450
    new-instance v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$8;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$8;-><init>(Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;Landroid/view/View;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onProfileImageClick(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->resetDrawerContent(Landroid/content/Context;)V

    return-void
.end method

.method private handleSelectionView(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;Z)V
    .locals 2

    const/16 v0, 0x15

    if-eqz p2, :cond_1

    .line 732
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v0, :cond_0

    .line 733
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    check-cast p2, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSectionBackgroundResource:I

    invoke-static {v0, v1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 734
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onSelectionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_profile_header:I

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 737
    :cond_0
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    iget v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSectionBackgroundResource:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 738
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onSelectionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_profile_header:I

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 742
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x0

    if-lt p1, v0, :cond_2

    .line 743
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 744
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 746
    :cond_2
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/mikepenz/materialize/util/UIUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 747
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private onProfileImageClick(Landroid/view/View;Z)V
    .locals 2

    .line 1235
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_profile_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1238
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderProfileImageListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderProfileImageListener;

    if-eqz v1, :cond_0

    .line 1239
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderProfileImageListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderProfileImageListener;

    invoke-interface {v1, p1, v0, p2}, Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderProfileImageListener;->onProfileImageClick(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1244
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onProfileClick(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method private resetDrawerContent(Landroid/content/Context;)V
    .locals 1

    .line 1470
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz p1, :cond_0

    .line 1471
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/Drawer;->resetDrawerContent()V

    .line 1474
    :cond_0
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountSwitcherArrow:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1475
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountSwitcherArrow:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotation(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private setHeaderHeight(I)V
    .locals 2

    .line 702
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 703
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 705
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 706
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    sget v1, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_account_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 711
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 712
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 713
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    sget v1, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_account_header_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 718
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 719
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 720
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private setImageOrPlaceholder(Landroid/widget/ImageView;Lcom/mikepenz/materialdrawer/holder/ImageHolder;)V
    .locals 3

    .line 1201
    invoke-static {}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->getInstance()Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->cancelImage(Landroid/widget/ImageView;)V

    .line 1203
    invoke-static {}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->getInstance()Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->getImageLoader()Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;->PROFILE:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    invoke-virtual {v2}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;->placeholder(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1205
    sget-object v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;->PROFILE:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->applyTo(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/widget/ImageView;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public varargs addProfiles([Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 1
    .param p1    # [Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 628
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->idDistributor:Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;->checkIds([Lcom/mikepenz/fastadapter/IIdentifyable;)[Lcom/mikepenz/fastadapter/IIdentifyable;

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/mikepenz/materialdrawer/AccountHeader;
    .locals 10

    .line 759
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 760
    invoke-virtual {p0, v1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->withAccountHeader(I)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    sget v2, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_account_header:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeader:Landroid/view/View;

    .line 767
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/mikepenz/materialdrawer/R$dimen;->material_drawer_account_header_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 768
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mikepenz/materialize/util/UIUtils;->getStatusBarHeight(Landroid/content/Context;Z)I

    move-result v2

    .line 772
    iget-object v4, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    if-eqz v4, :cond_1

    .line 773
    iget-object v4, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->asPixel(Landroid/content/Context;)I

    move-result v4

    goto :goto_0

    .line 775
    :cond_1
    iget-boolean v4, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCompactStyle:Z

    if-eqz v4, :cond_2

    .line 776
    iget-object v4, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/mikepenz/materialdrawer/R$dimen;->material_drawer_account_header_height_compact:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0

    .line 779
    :cond_2
    iget-object v4, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;->getOptimalDrawerWidth(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe2000000000000L    # 0.5625

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 783
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_3

    sub-int v5, v4, v2

    int-to-float v6, v5

    int-to-float v7, v0

    const/high16 v8, 0x41000000    # 8.0f

    .line 788
    iget-object v9, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v8, v9}, Lcom/mikepenz/materialize/util/UIUtils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v8

    sub-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    move v4, v5

    .line 796
    :cond_3
    :goto_0
    iget-boolean v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mTranslucentStatusBar:Z

    if-eqz v5, :cond_5

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_5

    .line 797
    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeader:Landroid/view/View;

    iget-object v6, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeader:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v2

    iget-object v8, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeader:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 799
    iget-boolean v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCompactStyle:Z

    if-eqz v5, :cond_4

    add-int/2addr v4, v2

    goto :goto_1

    :cond_4
    sub-int v5, v4, v2

    if-gt v5, v0, :cond_5

    add-int v4, v0, v2

    .line 808
    :cond_5
    :goto_1
    invoke-direct {p0, v4}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->setHeaderHeight(I)V

    .line 811
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    sget v2, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_account_header_background:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderBackground:Landroid/widget/ImageView;

    .line 813
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mHeaderBackground:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderBackground:Landroid/widget/ImageView;

    sget-object v4, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;->ACCOUNT_HEADER:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    invoke-virtual {v4}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->applyTo(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/widget/ImageView;Ljava/lang/String;)Z

    .line 815
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mHeaderBackgroundScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_6

    .line 816
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderBackground:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mHeaderBackgroundScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 820
    :cond_6
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mActivity:Landroid/app/Activity;

    sget v4, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_header_selection_text:I

    sget v5, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_header_selection_text:I

    invoke-static {v0, v2, v4, v5}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;II)I

    move-result v0

    .line 823
    iget-boolean v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCompactStyle:Z

    if-eqz v2, :cond_7

    .line 824
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeader:Landroid/view/View;

    iput-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    goto :goto_2

    .line 826
    :cond_7
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    sget v4, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_account_header_text_section:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    .line 829
    :goto_2
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/mikepenz/materialize/util/UIUtils;->getSelectableBackgroundRes(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSectionBackgroundResource:I

    .line 830
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-direct {p0, v2, v3}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->handleSelectionView(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;Z)V

    .line 833
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    sget v3, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_account_header_text_switcher:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountSwitcherArrow:Landroid/widget/ImageView;

    .line 834
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountSwitcherArrow:Landroid/widget/ImageView;

    new-instance v3, Lcom/mikepenz/iconics/IconicsDrawable;

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_arrow_drop_down:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    invoke-direct {v3, v4, v5}, Lcom/mikepenz/iconics/IconicsDrawable;-><init>(Landroid/content/Context;Lcom/mikepenz/iconics/typeface/IIcon;)V

    sget v4, Lcom/mikepenz/materialdrawer/R$dimen;->material_drawer_account_header_dropdown:I

    invoke-virtual {v3, v4}, Lcom/mikepenz/iconics/IconicsDrawable;->sizeRes(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v3

    sget v4, Lcom/mikepenz/materialdrawer/R$dimen;->material_drawer_account_header_dropdown_padding:I

    invoke-virtual {v3, v4}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingRes(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->color(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 837
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeader:Landroid/view/View;

    sget v3, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_account_header_current:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/view/BezelImageView;

    iput-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    .line 838
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeader:Landroid/view/View;

    sget v3, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_account_header_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileName:Landroid/widget/TextView;

    .line 839
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeader:Landroid/view/View;

    sget v3, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_account_header_email:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileEmail:Landroid/widget/TextView;

    .line 842
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mNameTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_8

    .line 843
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mNameTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    .line 844
    :cond_8
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_9

    .line 845
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 848
    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mEmailTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_a

    .line 849
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileEmail:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mEmailTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_4

    .line 850
    :cond_a
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_b

    .line 851
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileEmail:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 854
    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 855
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileEmail:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 857
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeader:Landroid/view/View;

    sget v2, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_account_header_small_first:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/view/BezelImageView;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirstView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    .line 858
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeader:Landroid/view/View;

    sget v2, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_account_header_small_second:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/view/BezelImageView;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecondView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    .line 859
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeader:Landroid/view/View;

    sget v2, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_account_header_small_third:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/view/BezelImageView;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThirdView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    .line 862
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->calculateProfiles()V

    .line 865
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->buildProfiles()V

    .line 868
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSavedInstance:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    .line 869
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSavedInstance:Landroid/os/Bundle;

    const-string v2, "bundle_selection_header"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_c

    .line 872
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    if-eqz v2, :cond_c

    if-le v0, v1, :cond_c

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 873
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->switchProfiles(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;)Z

    .line 879
    :cond_c
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v0, :cond_d

    .line 880
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    iget-boolean v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mPaddingBelowHeader:Z

    iget-boolean v3, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDividerBelowHeader:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/mikepenz/materialdrawer/Drawer;->setHeader(Landroid/view/View;ZZ)V

    :cond_d
    const/4 v0, 0x0

    .line 884
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mActivity:Landroid/app/Activity;

    .line 886
    new-instance v0, Lcom/mikepenz/materialdrawer/AccountHeader;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/AccountHeader;-><init>(Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;)V

    return-object v0
.end method

.method protected buildDrawerSelectionList()V
    .locals 7

    .line 1377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1378
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    .line 1379
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1380
    iget-object v6, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-ne v5, v6, :cond_1

    .line 1381
    iget-boolean v6, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentHiddenInList:Z

    if-eqz v6, :cond_0

    goto :goto_0

    .line 1384
    :cond_0
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    iget-object v2, v2, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v2}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/mikepenz/fastadapter/IItemAdapter;->getGlobalPosition(I)I

    move-result v2

    .line 1387
    :cond_1
    instance-of v6, v5, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    if-eqz v6, :cond_2

    .line 1388
    check-cast v5, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-interface {v5, v3}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->withSetSelected(Z)Ljava/lang/Object;

    .line 1389
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1394
    :cond_3
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/mikepenz/materialdrawer/Drawer;->switchDrawerContent(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;Ljava/util/List;I)V

    return-void
.end method

.method protected buildProfiles()V
    .locals 7

    .line 1066
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setVisibility(I)V

    .line 1067
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountSwitcherArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1069
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirstView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setVisibility(I)V

    .line 1070
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirstView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1071
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecondView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setVisibility(I)V

    .line 1072
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecondView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v2}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1073
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThirdView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setVisibility(I)V

    .line 1074
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThirdView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v2}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileEmail:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCompactStyle:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    const/high16 v4, 0x42600000    # 56.0f

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mikepenz/materialize/util/UIUtils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v3, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->handleSelectionView(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;Z)V

    .line 1085
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-eqz v0, :cond_a

    .line 1086
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileImagesVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnlyMainProfileImageVisible:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnlySmallProfileImagesVisible:Z

    if-nez v0, :cond_3

    .line 1087
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-interface {v5}, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;->getIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->setImageOrPlaceholder(Landroid/widget/ImageView;Lcom/mikepenz/materialdrawer/holder/ImageHolder;)V

    .line 1088
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileImagesClickable:Z

    if-eqz v0, :cond_2

    .line 1089
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onCurrentProfileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onCurrentProfileLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v5}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1091
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v3}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->disableTouchFeedback(Z)V

    goto :goto_0

    .line 1093
    :cond_2
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v4}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->disableTouchFeedback(Z)V

    .line 1095
    :goto_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v3}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setVisibility(I)V

    .line 1097
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->invalidate()V

    goto :goto_1

    .line 1098
    :cond_3
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCompactStyle:Z

    if-eqz v0, :cond_4

    .line 1099
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setVisibility(I)V

    .line 1102
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-direct {p0, v0, v4}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->handleSelectionView(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;Z)V

    .line 1104
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountSwitcherArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    sget v5, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_profile_header:I

    iget-object v6, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-virtual {v0, v5, v6}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setTag(ILjava/lang/Object;)V

    .line 1107
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-interface {v0}, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;->getName()Lcom/mikepenz/materialdrawer/holder/StringHolder;

    move-result-object v0

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileName:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/mikepenz/materialdrawer/holder/StringHolder;->applyTo(Lcom/mikepenz/materialize/holder/StringHolder;Landroid/widget/TextView;)V

    .line 1108
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-interface {v0}, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;->getEmail()Lcom/mikepenz/materialdrawer/holder/StringHolder;

    move-result-object v0

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileEmail:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/mikepenz/materialdrawer/holder/StringHolder;->applyTo(Lcom/mikepenz/materialize/holder/StringHolder;Landroid/widget/TextView;)V

    .line 1110
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileImagesVisible:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnlyMainProfileImageVisible:Z

    if-nez v0, :cond_6

    .line 1111
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirstView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-interface {v5}, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;->getIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->setImageOrPlaceholder(Landroid/widget/ImageView;Lcom/mikepenz/materialdrawer/holder/ImageHolder;)V

    .line 1112
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirstView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    sget v5, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_profile_header:I

    iget-object v6, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-virtual {v0, v5, v6}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setTag(ILjava/lang/Object;)V

    .line 1113
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileImagesClickable:Z

    if-eqz v0, :cond_5

    .line 1114
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirstView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onProfileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirstView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onProfileLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v5}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1116
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirstView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v3}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->disableTouchFeedback(Z)V

    goto :goto_2

    .line 1118
    :cond_5
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirstView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v4}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->disableTouchFeedback(Z)V

    .line 1120
    :goto_2
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirstView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v3}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setVisibility(I)V

    .line 1121
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirstView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->invalidate()V

    .line 1123
    :cond_6
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileImagesVisible:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnlyMainProfileImageVisible:Z

    if-nez v0, :cond_8

    .line 1124
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecondView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-interface {v5}, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;->getIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->setImageOrPlaceholder(Landroid/widget/ImageView;Lcom/mikepenz/materialdrawer/holder/ImageHolder;)V

    .line 1125
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecondView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    sget v5, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_profile_header:I

    iget-object v6, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-virtual {v0, v5, v6}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setTag(ILjava/lang/Object;)V

    .line 1126
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileImagesClickable:Z

    if-eqz v0, :cond_7

    .line 1127
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecondView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onProfileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecondView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onProfileLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v5}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1129
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecondView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v3}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->disableTouchFeedback(Z)V

    goto :goto_3

    .line 1131
    :cond_7
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecondView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v4}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->disableTouchFeedback(Z)V

    .line 1133
    :goto_3
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecondView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v3}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecondView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->invalidate()V

    .line 1136
    :cond_8
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThird:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mThreeSmallProfileImages:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileImagesVisible:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnlyMainProfileImageVisible:Z

    if-nez v0, :cond_b

    .line 1137
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThirdView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThird:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-interface {v5}, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;->getIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->setImageOrPlaceholder(Landroid/widget/ImageView;Lcom/mikepenz/materialdrawer/holder/ImageHolder;)V

    .line 1138
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThirdView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    sget v5, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_profile_header:I

    iget-object v6, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThird:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-virtual {v0, v5, v6}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setTag(ILjava/lang/Object;)V

    .line 1139
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileImagesClickable:Z

    if-eqz v0, :cond_9

    .line 1140
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThirdView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onProfileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1141
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThirdView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->onProfileLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v5}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1142
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThirdView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v3}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->disableTouchFeedback(Z)V

    goto :goto_4

    .line 1144
    :cond_9
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThirdView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v4}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->disableTouchFeedback(Z)V

    .line 1146
    :goto_4
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThirdView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0, v3}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->setVisibility(I)V

    .line 1147
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThirdView:Lcom/mikepenz/materialdrawer/view/BezelImageView;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/view/BezelImageView;->invalidate()V

    goto :goto_5

    .line 1149
    :cond_a
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1150
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1151
    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    sget v6, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_profile_header:I

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1152
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-direct {p0, v0, v4}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->handleSelectionView(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;Z)V

    .line 1154
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountSwitcherArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1155
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-eqz v0, :cond_b

    .line 1156
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-interface {v0}, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;->getName()Lcom/mikepenz/materialdrawer/holder/StringHolder;

    move-result-object v0

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileName:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/mikepenz/materialdrawer/holder/StringHolder;->applyTo(Lcom/mikepenz/materialize/holder/StringHolder;Landroid/widget/TextView;)V

    .line 1157
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-interface {v0}, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;->getEmail()Lcom/mikepenz/materialdrawer/holder/StringHolder;

    move-result-object v0

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileEmail:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/mikepenz/materialdrawer/holder/StringHolder;->applyTo(Lcom/mikepenz/materialize/holder/StringHolder;Landroid/widget/TextView;)V

    .line 1161
    :cond_b
    :goto_5
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionFirstLineShown:Z

    if-nez v0, :cond_c

    .line 1162
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1164
    :cond_c
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionFirstLine:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1165
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionFirstLine:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1168
    :cond_d
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionSecondLineShown:Z

    if-nez v0, :cond_e

    .line 1169
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1171
    :cond_e
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionSecondLine:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1172
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfileEmail:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionSecondLine:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    :cond_f
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionListEnabled:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionListEnabledForSingleProfile:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_11

    .line 1178
    :cond_10
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountSwitcherArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1179
    invoke-direct {p0, v2, v3}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->handleSelectionView(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;Z)V

    .line 1182
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCompactStyle:Z

    if-nez v0, :cond_11

    .line 1183
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    const/high16 v1, 0x41800000    # 16.0f

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderTextSection:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mikepenz/materialize/util/UIUtils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1188
    :cond_11
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderSelectionViewClickListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderSelectionViewClickListener;

    if-eqz v0, :cond_12

    .line 1189
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-direct {p0, v0, v4}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->handleSelectionView(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;Z)V

    :cond_12
    return-void
.end method

.method protected calculateProfiles()V
    .locals 10

    .line 893
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 894
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_7

    move v0, v3

    .line 899
    :goto_0
    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 900
    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_5

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-interface {v5}, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;->isSelectable()Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v0, :cond_1

    .line 901
    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-nez v5, :cond_1

    .line 902
    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    goto :goto_1

    :cond_1
    if-ne v0, v4, :cond_2

    .line 903
    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-nez v5, :cond_2

    .line 904
    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    .line 905
    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-nez v5, :cond_3

    .line 906
    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    .line 907
    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThird:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-nez v5, :cond_4

    .line 908
    iget-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object v5, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThird:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-void

    :cond_7
    const/4 v0, 0x4

    .line 917
    new-array v5, v0, [Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iget-object v6, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThird:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    aput-object v2, v5, v1

    .line 924
    new-array v1, v0, [Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 925
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    move v6, v3

    .line 928
    :goto_2
    iget-object v7, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 929
    iget-object v7, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 930
    invoke-interface {v7}, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;->isSelectable()Z

    move-result v8

    if-eqz v8, :cond_a

    move v8, v3

    :goto_3
    if-ge v8, v0, :cond_9

    .line 933
    aget-object v9, v5, v8

    if-ne v9, v7, :cond_8

    .line 934
    aput-object v7, v1, v8

    move v8, v4

    goto :goto_4

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    move v8, v3

    :goto_4
    if-nez v8, :cond_a

    .line 940
    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 945
    :cond_b
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    :goto_5
    if-ge v3, v0, :cond_e

    .line 948
    aget-object v5, v1, v3

    if-eqz v5, :cond_c

    .line 949
    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 950
    :cond_c
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 951
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 955
    :cond_e
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 956
    :goto_7
    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 957
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 961
    :cond_f
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 962
    iput-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    goto :goto_8

    .line 964
    :cond_10
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 966
    :goto_8
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 967
    iput-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    goto :goto_9

    .line 969
    :cond_11
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 971
    :goto_9
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 972
    iput-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    goto :goto_a

    .line 974
    :cond_12
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 976
    :goto_a
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 977
    iput-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThird:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    goto :goto_b

    .line 979
    :cond_13
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThird:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    :goto_b
    return-void
.end method

.method protected getCurrentSelection()I
    .locals 4

    .line 1318
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1320
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1321
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method protected onProfileClick(Landroid/view/View;Z)V
    .locals 3

    .line 1277
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_profile_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1278
    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->switchProfiles(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;)Z

    .line 1281
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->resetDrawerContent(Landroid/content/Context;)V

    .line 1284
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v1}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerBuilder()Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v1}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerBuilder()Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v1

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMiniDrawer:Lcom/mikepenz/materialdrawer/MiniDrawer;

    if-eqz v1, :cond_0

    .line 1285
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v1}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerBuilder()Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v1

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMiniDrawer:Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-virtual {v1}, Lcom/mikepenz/materialdrawer/MiniDrawer;->onProfileClick()V

    :cond_0
    const/4 v1, 0x0

    .line 1290
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderListener;

    if-eqz v2, :cond_1

    .line 1291
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderListener;

    invoke-interface {v1, p1, v0, p2}, Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderListener;->onProfileChanged(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;Z)Z

    move-result v1

    :cond_1
    if-nez v1, :cond_3

    .line 1295
    iget p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnProfileClickDrawerCloseDelay:I

    if-lez p1, :cond_2

    .line 1296
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$5;

    invoke-direct {p2, p0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$5;-><init>(Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;)V

    iget v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnProfileClickDrawerCloseDelay:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1305
    :cond_2
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz p1, :cond_3

    .line 1306
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/Drawer;->closeDrawer()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected switchProfiles(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 993
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    const/4 v2, 0x1

    if-ne v1, p1, :cond_1

    return v2

    .line 997
    :cond_1
    iget-boolean v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAlternativeProfileHeaderSwitching:Z

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v1, :cond_7

    .line 999
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-ne v1, p1, :cond_2

    move v3, v2

    goto :goto_0

    .line 1001
    :cond_2
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-ne v1, p1, :cond_3

    move v3, v5

    goto :goto_0

    .line 1003
    :cond_3
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThird:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-ne v1, p1, :cond_4

    move v3, v4

    .line 1007
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1008
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-ne v3, v2, :cond_5

    .line 1011
    iput-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    goto/16 :goto_3

    :cond_5
    if-ne v3, v5, :cond_6

    .line 1013
    iput-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    goto/16 :goto_3

    :cond_6
    if-ne v3, v4, :cond_b

    .line 1015
    iput-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThird:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    goto :goto_3

    .line 1018
    :cond_7
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    if-eqz v1, :cond_b

    .line 1019
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x4

    new-array v7, v6, [Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iget-object v8, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    aput-object v8, v7, v0

    iget-object v8, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    aput-object v8, v7, v2

    iget-object v8, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThird:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    aput-object v8, v7, v4

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1021
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_9

    .line 1025
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, p1, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    move v7, v3

    :goto_2
    if-eq v7, v3, :cond_b

    .line 1032
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1033
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1035
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1036
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1037
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1038
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThird:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    goto :goto_3

    .line 1041
    :cond_a
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThird:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1042
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1043
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1044
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1050
    :cond_b
    :goto_3
    iget-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnlySmallProfileImagesVisible:Z

    if-eqz p1, :cond_c

    .line 1051
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileThird:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1052
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileSecond:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1053
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileFirst:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1057
    :cond_c
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->buildProfiles()V

    return v0
.end method

.method protected toggleSelectionList(Landroid/content/Context;)V
    .locals 1

    .line 1353
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v0, :cond_1

    .line 1355
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->switchedDrawerContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    invoke-direct {p0, p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->resetDrawerContent(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1357
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionListShown:Z

    goto :goto_0

    .line 1360
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->buildDrawerSelectionList()V

    .line 1363
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountSwitcherArrow:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1364
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountSwitcherArrow:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotation(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    const/4 p1, 0x1

    .line 1366
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionListShown:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateHeaderAndList()V
    .locals 1

    .line 1484
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->calculateProfiles()V

    .line 1486
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->buildProfiles()V

    .line 1488
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionListShown:Z

    if-eqz v0, :cond_0

    .line 1489
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->buildDrawerSelectionList()V

    :cond_0
    return-void
.end method

.method public withAccountHeader(I)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 587
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 588
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "please pass an activity first to use this call"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    goto :goto_0

    .line 594
    :cond_1
    iget-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCompactStyle:Z

    if-eqz p1, :cond_2

    .line 595
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_compact_header:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    goto :goto_0

    .line 597
    :cond_2
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_header:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    :goto_0
    return-object p0
.end method

.method public withAccountHeader(Landroid/view/View;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 576
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    return-object p0
.end method

.method public withActivity(Landroid/app/Activity;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public withAlternativeProfileHeaderSwitching(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 475
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAlternativeProfileHeaderSwitching:Z

    return-object p0
.end method

.method public withCloseDrawerOnProfileListClick(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 433
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCloseDrawerOnProfileListClick:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withCompactStyle(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCompactStyle:Z

    return-object p0
.end method

.method public withCurrentProfileHiddenInList(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 217
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentHiddenInList:Z

    return-object p0
.end method

.method public withDividerBelowHeader(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 313
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDividerBelowHeader:Z

    return-object p0
.end method

.method public withDrawer(Lcom/mikepenz/materialdrawer/Drawer;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 4
    .param p1    # Lcom/mikepenz/materialdrawer/Drawer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 675
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    .line 678
    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/Drawer;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/Drawer;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/Drawer;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/Drawer;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    return-object p0
.end method

.method public withEmailTypeface(Landroid/graphics/Typeface;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 141
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mEmailTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public withHeaderBackground(I)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 352
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mHeaderBackground:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withHeaderBackground(Landroid/graphics/drawable/Drawable;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 1

    .line 341
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mHeaderBackground:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withHeaderBackground(Lcom/mikepenz/materialdrawer/holder/ImageHolder;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mHeaderBackground:Lcom/mikepenz/materialdrawer/holder/ImageHolder;

    return-object p0
.end method

.method public withHeaderBackgroundScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mHeaderBackgroundScaleType:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public withHeightDp(I)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 167
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withHeightPx(I)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 155
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromPixel(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withHeightRes(I)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 178
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromResource(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object p0
.end method

.method public withNameTypeface(Landroid/graphics/Typeface;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 128
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mNameTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public withOnAccountHeaderItemLongClickListener(Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderItemLongClickListener;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderItemLongClickListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderItemLongClickListener;

    return-object p0
.end method

.method public withOnAccountHeaderListener(Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderListener;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderListener;

    return-object p0
.end method

.method public withOnAccountHeaderProfileImageListener(Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderProfileImageListener;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderProfileImageListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderProfileImageListener;

    return-object p0
.end method

.method public withOnAccountHeaderSelectionViewClickListener(Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderSelectionViewClickListener;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderSelectionViewClickListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderSelectionViewClickListener;

    return-object p0
.end method

.method public withOnProfileClickDrawerCloseDelay(I)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 506
    iput p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnProfileClickDrawerCloseDelay:I

    return-object p0
.end method

.method public withOnlyMainProfileImageVisible(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 405
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnlyMainProfileImageVisible:Z

    return-object p0
.end method

.method public withOnlySmallProfileImagesVisible(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 419
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnlySmallProfileImagesVisible:Z

    return-object p0
.end method

.method public withPaddingBelowHeader(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 299
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mPaddingBelowHeader:Z

    return-object p0
.end method

.method public withProfileImagesClickable(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 461
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileImagesClickable:Z

    return-object p0
.end method

.method public withProfileImagesVisible(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 391
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfileImagesVisible:Z

    return-object p0
.end method

.method public withProfiles(Ljava/util/List;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;",
            ">;)",
            "Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->idDistributor:Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 617
    :cond_0
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    return-object p0
.end method

.method public withResetDrawerOnProfileListClick(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 447
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mResetDrawerOnProfileListClick:Z

    return-object p0
.end method

.method public withSavedInstance(Landroid/os/Bundle;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSavedInstance:Landroid/os/Bundle;

    return-object p0
.end method

.method public withSelectionFirstLine(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionFirstLine:Ljava/lang/String;

    return-object p0
.end method

.method public withSelectionFirstLineShown(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionFirstLineShown:Z

    return-object p0
.end method

.method public withSelectionFistLineShown(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionFirstLineShown:Z

    return-object p0
.end method

.method public withSelectionListEnabled(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 562
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionListEnabled:Z

    return-object p0
.end method

.method public withSelectionListEnabledForSingleProfile(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 548
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionListEnabledForSingleProfile:Z

    return-object p0
.end method

.method public withSelectionSecondLine(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionSecondLine:Ljava/lang/String;

    return-object p0
.end method

.method public withSelectionSecondLineShown(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionSecondLineShown:Z

    return-object p0
.end method

.method public withTextColor(I)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 192
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withTextColorRes(I)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 203
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withThreeSmallProfileImages(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 489
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mThreeSmallProfileImages:Z

    return-object p0
.end method

.method public withTranslucentStatusBar(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0

    .line 327
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mTranslucentStatusBar:Z

    return-object p0
.end method

.method public withTypeface(Landroid/graphics/Typeface;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 115
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method
