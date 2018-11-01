.class public abstract Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;
.super Ljava/lang/Object;
.source "AbstractDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
.implements Lcom/mikepenz/materialdrawer/model/interfaces/Selectable;
.implements Lcom/mikepenz/materialdrawer/model/interfaces/Tagable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem<",
        "TT;TVH;>;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/Selectable<",
        "TT;>;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/Tagable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mEnabled:Z

.field private mExpanded:Z

.field protected mIdentifier:J

.field public mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

.field protected mOnPostBindViewListener:Lcom/mikepenz/materialdrawer/model/interfaces/OnPostBindViewListener;

.field private mParent:Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

.field protected mSelectable:Z

.field protected mSelected:Z

.field protected mSelectedBackgroundAnimated:Z

.field protected mSubItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mIdentifier:J

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mEnabled:Z

    const/4 v1, 0x0

    .line 94
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSelected:Z

    .line 117
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSelectable:Z

    .line 140
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSelectedBackgroundAnimated:Z

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    .line 179
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mOnPostBindViewListener:Lcom/mikepenz/materialdrawer/model/interfaces/OnPostBindViewListener;

    .line 270
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mExpanded:Z

    return-void
.end method


# virtual methods
.method public attachToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 331
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public detachFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public equals(I)Z
    .locals 4

    int-to-long v0, p1

    .line 407
    iget-wide v2, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mIdentifier:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(J)Z
    .locals 3

    .line 403
    iget-wide v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mIdentifier:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 419
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 420
    :cond_1
    check-cast p1, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;

    .line 421
    iget-wide v2, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mIdentifier:J

    iget-wide v4, p1, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mIdentifier:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public failedToRecycle(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public generateView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 309
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getLayoutRes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 311
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p1
.end method

.method public generateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 323
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getLayoutRes()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 324
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 325
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p1
.end method

.method public getIdentifier()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mIdentifier:J

    return-wide v0
.end method

.method public getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-object v0
.end method

.method public getOnPostBindViewListener()Lcom/mikepenz/materialdrawer/model/interfaces/OnPostBindViewListener;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mOnPostBindViewListener:Lcom/mikepenz/materialdrawer/model/interfaces/OnPostBindViewListener;

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/mikepenz/fastadapter/IItem;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getParent()Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mParent:Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    return-object v0
.end method

.method public getSubItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSubItems:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TVH;"
        }
    .end annotation
.end method

.method public getViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation

    .line 384
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getLayoutRes()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 431
    iget-wide v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mIdentifier:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAutoExpanding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mEnabled:Z

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mExpanded:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSelectable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSelected:Z

    return v0
.end method

.method public isSelectedBackgroundAnimated()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSelectedBackgroundAnimated:Z

    return v0
.end method

.method public onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mOnPostBindViewListener:Lcom/mikepenz/materialdrawer/model/interfaces/OnPostBindViewListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mOnPostBindViewListener:Lcom/mikepenz/materialdrawer/model/interfaces/OnPostBindViewListener;

    invoke-interface {v0, p1, p2}, Lcom/mikepenz/materialdrawer/model/interfaces/OnPostBindViewListener;->onBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public unbindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public withEnabled(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 81
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mEnabled:Z

    return-object p0
.end method

.method public withIdentifier(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 34
    iput-wide p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mIdentifier:J

    return-object p0
.end method

.method public withIsExpanded(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 278
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mExpanded:Z

    return-object p0
.end method

.method public withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;",
            ")TT;"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-object p0
.end method

.method public withParent(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mParent:Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    return-object p0
.end method

.method public bridge synthetic withParent(Lcom/mikepenz/fastadapter/IItem;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->withParent(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public withPostOnBindViewListener(Lcom/mikepenz/materialdrawer/model/interfaces/OnPostBindViewListener;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/model/interfaces/OnPostBindViewListener;",
            ")TT;"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mOnPostBindViewListener:Lcom/mikepenz/materialdrawer/model/interfaces/OnPostBindViewListener;

    return-object p0
.end method

.method public withSelectable(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 127
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSelectable:Z

    return-object p0
.end method

.method public withSelectedBackgroundAnimated(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 149
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSelectedBackgroundAnimated:Z

    return-object p0
.end method

.method public withSetSelected(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 104
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSelected:Z

    return-object p0
.end method

.method public withSubItems(Ljava/util/List;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;)TT;"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSubItems:Ljava/util/List;

    return-object p0
.end method

.method public varargs withSubItems([Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ")TT;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSubItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSubItems:Ljava/util/List;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mSubItems:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withTag(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->mTag:Ljava/lang/Object;

    return-object p0
.end method
