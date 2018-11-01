.class public interface abstract Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;
.super Ljava/lang/Object;
.source "ItemFilterListener.java"


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
.method public abstract itemsFiltered(Ljava/lang/CharSequence;Ljava/util/List;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "TItem;>;)V"
        }
    .end annotation
.end method

.method public abstract onReset()V
.end method
