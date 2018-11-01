.class public interface abstract Lcom/mikepenz/fastadapter/IItemAdapter;
.super Ljava/lang/Object;
.source "IItemAdapter.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IAdapter<",
        "TItem;>;"
    }
.end annotation


# virtual methods
.method public abstract add(ILjava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TModel;>;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public varargs abstract add(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TModel;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract add(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TModel;>;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public varargs abstract add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TModel;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract clear()Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract remove(I)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract removeRange(II)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract set(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITModel;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract set(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TModel;>;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract setNewList(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TModel;>;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method
