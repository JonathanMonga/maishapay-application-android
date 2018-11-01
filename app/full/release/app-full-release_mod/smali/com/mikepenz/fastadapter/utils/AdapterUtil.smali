.class public Lcom/mikepenz/fastadapter/utils/AdapterUtil;
.super Ljava/lang/Object;
.source "AdapterUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAllSubItems(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TItem;",
            "Ljava/util/List<",
            "TItem;>;)V"
        }
    .end annotation

    .line 78
    instance-of v0, p0, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 81
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 82
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    .line 83
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {v2, p1}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->addAllSubItems(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static findSubItemSelections(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TItem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    instance-of v0, p0, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 43
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 44
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    .line 45
    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    invoke-static {v2, p1}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->findSubItemSelections(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getAllItems(Lcom/mikepenz/fastadapter/FastAdapter;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;)",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v0

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 64
    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v3

    .line 65
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static {v3, v1}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->addAllSubItems(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static restoreSubItemSelectionStatesForAlternativeStateManagement(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TItem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    instance-of v0, p0, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 22
    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 23
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 24
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    .line 25
    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    .line 26
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 27
    invoke-interface {v2, v3}, Lcom/mikepenz/fastadapter/IItem;->withSetSelected(Z)Ljava/lang/Object;

    .line 29
    :cond_0
    invoke-static {v2, p1}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->restoreSubItemSelectionStatesForAlternativeStateManagement(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
