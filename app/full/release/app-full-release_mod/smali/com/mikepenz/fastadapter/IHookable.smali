.class public interface abstract Lcom/mikepenz/fastadapter/IHookable;
.super Ljava/lang/Object;
.source "IHookable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getEventHooks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mikepenz/fastadapter/listeners/EventHook<",
            "TItem;>;>;"
        }
    .end annotation
.end method
