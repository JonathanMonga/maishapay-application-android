.class public abstract Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;
.super Lcom/mikepenz/fastadapter/items/AbstractItem;
.source "AbstractExpandableItem.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IExpandable;
.implements Lcom/mikepenz/fastadapter/ISubItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Parent::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ":",
        "Lcom/mikepenz/fastadapter/IExpandable;",
        ":",
        "Lcom/mikepenz/fastadapter/ISubItem;",
        ":",
        "Lcom/mikepenz/fastadapter/IClickable;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "SubItem::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ":",
        "Lcom/mikepenz/fastadapter/ISubItem;",
        ">",
        "Lcom/mikepenz/fastadapter/items/AbstractItem<",
        "TParent;TVH;>;",
        "Lcom/mikepenz/fastadapter/IExpandable<",
        "Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;",
        "TSubItem;>;",
        "Lcom/mikepenz/fastadapter/ISubItem<",
        "Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;",
        "TParent;>;"
    }
.end annotation


# instance fields
.field private mExpanded:Z

.field private mParent:Lcom/mikepenz/fastadapter/IItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TParent;"
        }
    .end annotation
.end field

.field private mSubItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TSubItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;->mExpanded:Z

    return-void
.end method


# virtual methods
.method public getParent()Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TParent;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;->mParent:Lcom/mikepenz/fastadapter/IItem;

    return-object v0
.end method

.method public getSubItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TSubItem;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    return-object v0
.end method

.method public isAutoExpanding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;->mExpanded:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;->getSubItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public withIsExpanded(Z)Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem<",
            "TParent;TVH;TSubItem;>;"
        }
    .end annotation

    .line 28
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;->mExpanded:Z

    return-object p0
.end method

.method public bridge synthetic withIsExpanded(Z)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;->withIsExpanded(Z)Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;

    move-result-object p1

    return-object p1
.end method

.method public withParent(Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParent;)",
            "Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem<",
            "TParent;TVH;TSubItem;>;"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;->mParent:Lcom/mikepenz/fastadapter/IItem;

    return-object p0
.end method

.method public bridge synthetic withParent(Lcom/mikepenz/fastadapter/IItem;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;->withParent(Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;

    move-result-object p1

    return-object p1
.end method

.method public withSubItems(Ljava/util/List;)Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TSubItem;>;)",
            "Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem<",
            "TParent;TVH;TSubItem;>;"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    .line 46
    check-cast v0, Lcom/mikepenz/fastadapter/ISubItem;

    invoke-interface {v0, p0}, Lcom/mikepenz/fastadapter/ISubItem;->withParent(Lcom/mikepenz/fastadapter/IItem;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic withSubItems(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;->withSubItems(Ljava/util/List;)Lcom/mikepenz/fastadapter/expandable/items/AbstractExpandableItem;

    move-result-object p1

    return-object p1
.end method
