.class public Lcom/mikepenz/materialdrawer/AccountHeader;
.super Ljava/lang/Object;
.source "AccountHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderSelectionViewClickListener;,
        Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderProfileImageListener;,
        Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderItemLongClickListener;,
        Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderListener;
    }
.end annotation


# static fields
.field protected static final BUNDLE_SELECTION_HEADER:Ljava/lang/String; = "bundle_selection_header"

.field protected static final NAVIGATION_DRAWER_ACCOUNT_ASPECT_RATIO:D = 0.5625


# instance fields
.field protected final mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;


# direct methods
.method protected constructor <init>(Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    return-void
.end method

.method private getPositionByIdentifier(J)I
    .locals 4

    .line 350
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const/4 v0, 0x0

    .line 351
    :goto_0
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-interface {v1}, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;->getIdentifier()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public addProfile(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;I)V
    .locals 2
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 285
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 290
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->updateHeaderAndList()V

    return-void
.end method

.method public varargs addProfiles([Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;)V
    .locals 2
    .param p1    # [Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 269
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 275
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->updateHeaderAndList()V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    .line 336
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->calculateProfiles()V

    .line 339
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->buildProfiles()V

    return-void
.end method

.method protected getAccountHeaderBuilder()Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    return-object v0
.end method

.method public getActiveProfile()Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mCurrentProfile:Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    return-object v0
.end method

.method public getHeaderBackgroundView()Landroid/widget/ImageView;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    return-object v0
.end method

.method public isSelectionListShown()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-boolean v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionListShown:Z

    return v0
.end method

.method public removeProfile(I)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->updateHeaderAndList()V

    return-void
.end method

.method public removeProfile(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;)V
    .locals 2
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 326
    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/materialdrawer/AccountHeader;->removeProfileByIdentifier(J)V

    return-void
.end method

.method public removeProfileByIdentifier(J)V
    .locals 0

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/mikepenz/materialdrawer/AccountHeader;->getPositionByIdentifier(J)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    .line 314
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object p2, p2, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->updateHeaderAndList()V

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "bundle_selection_header"

    .line 371
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {v1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->getCurrentSelection()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object p1
.end method

.method public setActiveProfile(J)V
    .locals 1

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, p1, p2, v0}, Lcom/mikepenz/materialdrawer/AccountHeader;->setActiveProfile(JZ)V

    return-void
.end method

.method public setActiveProfile(JZ)V
    .locals 5

    .line 217
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    if-eqz v1, :cond_0

    .line 220
    invoke-interface {v1}, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;->getIdentifier()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    .line 221
    invoke-virtual {p0, v1, p3}, Lcom/mikepenz/materialdrawer/AccountHeader;->setActiveProfile(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;Z)V

    return-void

    :cond_1
    return-void
.end method

.method public setActiveProfile(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/materialdrawer/AccountHeader;->setActiveProfile(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;Z)V

    return-void
.end method

.method public setActiveProfile(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;Z)V
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->switchProfiles(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;)Z

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/AccountHeader;->isSelectionListShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;->getIdentifier()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mikepenz/materialdrawer/Drawer;->setSelection(JZ)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 197
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object p2, p2, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderListener;

    if-eqz p2, :cond_1

    .line 198
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object p2, p2, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderListener;

    const/4 v1, 0x0

    invoke-interface {p2, v1, p1, v0}, Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderListener;->onProfileChanged(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;Z)Z

    :cond_1
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 93
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setDrawer(Lcom/mikepenz/materialdrawer/Drawer;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iput-object p1, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    return-void
.end method

.method public setHeaderBackground(Lcom/mikepenz/materialdrawer/holder/ImageHolder;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderBackground:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/mikepenz/materialdrawer/holder/ImageHolder;->applyTo(Lcom/mikepenz/materialize/holder/ImageHolder;Landroid/widget/ImageView;)Z

    return-void
.end method

.method public setProfiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;",
            ">;)V"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iput-object p1, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    .line 173
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->updateHeaderAndList()V

    return-void
.end method

.method public setSelectionFirstLine(Ljava/lang/String;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iput-object p1, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionFirstLine:Ljava/lang/String;

    .line 143
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->updateHeaderAndList()V

    return-void
.end method

.method public setSelectionFirstLineShown(Z)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iput-boolean p1, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionFirstLineShown:Z

    .line 122
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->updateHeaderAndList()V

    return-void
.end method

.method public setSelectionSecondLine(Ljava/lang/String;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iput-object p1, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionSecondLine:Ljava/lang/String;

    .line 154
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->updateHeaderAndList()V

    return-void
.end method

.method public setSelectionSecondLineShown(Z)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iput-boolean p1, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionSecondLineShown:Z

    .line 132
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->updateHeaderAndList()V

    return-void
.end method

.method public toggleSelectionList(Landroid/content/Context;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->toggleSelectionList(Landroid/content/Context;)V

    return-void
.end method

.method public updateProfile(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;)V
    .locals 0
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 245
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/AccountHeader;->updateProfileByIdentifier(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;)V

    return-void
.end method

.method public updateProfileByIdentifier(Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;)V
    .locals 2
    .param p1    # Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;->getIdentifier()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/mikepenz/materialdrawer/AccountHeader;->getPositionByIdentifier(J)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mProfiles:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->updateHeaderAndList()V

    :cond_0
    return-void
.end method
