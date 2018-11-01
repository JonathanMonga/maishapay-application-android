.class public abstract Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;
.super Ljava/lang/Object;
.source "DefaultIdDistributor.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IIdDistributor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Identifiable::",
        "Lcom/mikepenz/fastadapter/IIdentifyable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IIdDistributor<",
        "TIdentifiable;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIdentifiable;)TIdentifiable;"
        }
    .end annotation

    .line 49
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IIdentifyable;->getIdentifier()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;->nextId(Lcom/mikepenz/fastadapter/IIdentifyable;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/mikepenz/fastadapter/IIdentifyable;->withIdentifier(J)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public checkIds(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TIdentifiable;>;)",
            "Ljava/util/List<",
            "TIdentifiable;>;"
        }
    .end annotation

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 22
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IIdentifyable;

    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;->checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public varargs checkIds([Lcom/mikepenz/fastadapter/IIdentifyable;)[Lcom/mikepenz/fastadapter/IIdentifyable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TIdentifiable;)[TIdentifiable;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 36
    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;->checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
