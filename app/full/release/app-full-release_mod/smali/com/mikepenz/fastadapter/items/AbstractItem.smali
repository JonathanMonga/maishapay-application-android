.class public abstract Lcom/mikepenz/fastadapter/items/AbstractItem;
.super Ljava/lang/Object;
.source "AbstractItem.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IItem;
.implements Lcom/mikepenz/fastadapter/IClickable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ":",
        "Lcom/mikepenz/fastadapter/IClickable;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IItem<",
        "TItem;TVH;>;",
        "Lcom/mikepenz/fastadapter/IClickable<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field protected mEnabled:Z

.field protected mIdentifier:J

.field protected mOnItemClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "TItem;>;"
        }
    .end annotation
.end field

.field protected mOnItemPreClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "TItem;>;"
        }
    .end annotation
.end field

.field protected mSelectable:Z

.field protected mSelected:Z

.field protected mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 26
    iput-wide v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mIdentifier:J

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mEnabled:Z

    const/4 v1, 0x0

    .line 92
    iput-boolean v1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mSelected:Z

    .line 115
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mSelectable:Z

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

    .line 193
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public createView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 247
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getLayoutRes()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
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

    .line 312
    iget-wide v2, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mIdentifier:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

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

    .line 324
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 325
    :cond_1
    check-cast p1, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 326
    iget-wide v2, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mIdentifier:J

    iget-wide v4, p1, Lcom/mikepenz/fastadapter/items/AbstractItem;->mIdentifier:J

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
    .locals 1

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/items/AbstractItem;->createView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 261
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/items/AbstractItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 264
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p1
.end method

.method public generateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/items/AbstractItem;->createView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 279
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/items/AbstractItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 281
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p1
.end method

.method public getIdentifier()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mIdentifier:J

    return-wide v0
.end method

.method public getOnItemClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "TItem;>;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mOnItemClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    return-object v0
.end method

.method public getOnPreItemClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "TItem;>;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mOnItemPreClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mTag:Ljava/lang/Object;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation

    .line 292
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->createView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 336
    iget-wide v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mIdentifier:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mEnabled:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mSelectable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mSelected:Z

    return v0
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

.method public withEnabled(Z)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    .line 79
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mEnabled:Z

    return-object p0
.end method

.method public bridge synthetic withEnabled(Z)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->withEnabled(Z)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    return-object p1
.end method

.method public withIdentifier(J)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TItem;"
        }
    .end annotation

    .line 35
    iput-wide p1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mIdentifier:J

    return-object p0
.end method

.method public bridge synthetic withIdentifier(J)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/items/AbstractItem;->withIdentifier(J)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    return-object p1
.end method

.method public withOnItemClickListener(Lcom/mikepenz/fastadapter/listeners/OnClickListener;)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "TItem;>;)TItem;"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mOnItemClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    return-object p0
.end method

.method public withOnItemPreClickListener(Lcom/mikepenz/fastadapter/listeners/OnClickListener;)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "TItem;>;)TItem;"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mOnItemPreClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    return-object p0
.end method

.method public withSelectable(Z)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    .line 125
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mSelectable:Z

    return-object p0
.end method

.method public bridge synthetic withSelectable(Z)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->withSelectable(Z)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    return-object p1
.end method

.method public withSetSelected(Z)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    .line 102
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mSelected:Z

    return-object p0
.end method

.method public bridge synthetic withSetSelected(Z)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->withSetSelected(Z)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    return-object p1
.end method

.method public withTag(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TItem;"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic withTag(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->withTag(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    return-object p1
.end method
