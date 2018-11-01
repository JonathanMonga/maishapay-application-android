.class public abstract Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;
.super Lcom/mikepenz/fastadapter/items/ModelAbstractItem;
.source "ModelAbstractExpandableItem.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IExpandable;
.implements Lcom/mikepenz/fastadapter/ISubItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Parent:",
        "Lcom/mikepenz/fastadapter/items/ModelAbstractItem<",
        "TModel;TParent;TVH;>;:",
        "Lcom/mikepenz/fastadapter/IExpandable;",
        ":",
        "Lcom/mikepenz/fastadapter/ISubItem;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "SubItem::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ":",
        "Lcom/mikepenz/fastadapter/ISubItem;",
        ">",
        "Lcom/mikepenz/fastadapter/items/ModelAbstractItem<",
        "TModel;TParent;TVH;>;",
        "Lcom/mikepenz/fastadapter/IExpandable<",
        "Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;",
        "TSubItem;>;",
        "Lcom/mikepenz/fastadapter/ISubItem<",
        "Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;",
        "TParent;>;"
    }
.end annotation


# instance fields
.field private mExpanded:Z

.field private mParent:Lcom/mikepenz/fastadapter/items/ModelAbstractItem;
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
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lcom/mikepenz/fastadapter/items/ModelAbstractItem;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;->mExpanded:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic getParent()Lcom/mikepenz/fastadapter/IItem;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;->getParent()Lcom/mikepenz/fastadapter/items/ModelAbstractItem;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/mikepenz/fastadapter/items/ModelAbstractItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TParent;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;->mParent:Lcom/mikepenz/fastadapter/items/ModelAbstractItem;

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

    .line 35
    iget-object v0, p0, Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;->mSubItems:Ljava/util/List;

    return-object v0
.end method

.method public isAutoExpanding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;->mExpanded:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;->getSubItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public withIsExpanded(Z)Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem<",
            "TModel;TParent;TVH;TSubItem;>;"
        }
    .end annotation

    .line 29
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;->mExpanded:Z

    return-object p0
.end method

.method public bridge synthetic withIsExpanded(Z)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;->withIsExpanded(Z)Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;

    move-result-object p1

    return-object p1
.end method

.method public withParent(Lcom/mikepenz/fastadapter/items/ModelAbstractItem;)Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParent;)",
            "Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem<",
            "TModel;TParent;TVH;TSubItem;>;"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;->mParent:Lcom/mikepenz/fastadapter/items/ModelAbstractItem;

    return-object p0
.end method

.method public bridge synthetic withParent(Lcom/mikepenz/fastadapter/IItem;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lcom/mikepenz/fastadapter/items/ModelAbstractItem;

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;->withParent(Lcom/mikepenz/fastadapter/items/ModelAbstractItem;)Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;

    move-result-object p1

    return-object p1
.end method

.method public withSubItems(Ljava/util/List;)Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TSubItem;>;)",
            "Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem<",
            "TModel;TParent;TVH;TSubItem;>;"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;->mSubItems:Ljava/util/List;

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    .line 47
    check-cast v0, Lcom/mikepenz/fastadapter/ISubItem;

    invoke-interface {v0, p0}, Lcom/mikepenz/fastadapter/ISubItem;->withParent(Lcom/mikepenz/fastadapter/IItem;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic withSubItems(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;->withSubItems(Ljava/util/List;)Lcom/mikepenz/fastadapter/expandable/items/ModelAbstractExpandableItem;

    move-result-object p1

    return-object p1
.end method
