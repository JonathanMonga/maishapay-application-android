.class public interface abstract Lcom/mikepenz/fastadapter/IClickable;
.super Ljava/lang/Object;
.source "IClickable.java"


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
.method public abstract getOnItemClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "TItem;>;"
        }
    .end annotation
.end method

.method public abstract getOnPreItemClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "TItem;>;"
        }
    .end annotation
.end method

.method public abstract withOnItemClickListener(Lcom/mikepenz/fastadapter/listeners/OnClickListener;)Lcom/mikepenz/fastadapter/IItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "TItem;>;)TItem;"
        }
    .end annotation
.end method

.method public abstract withOnItemPreClickListener(Lcom/mikepenz/fastadapter/listeners/OnClickListener;)Lcom/mikepenz/fastadapter/IItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener<",
            "TItem;>;)TItem;"
        }
    .end annotation
.end method
