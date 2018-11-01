.class public interface abstract Lcom/mikepenz/fastadapter/listeners/EventHook;
.super Ljava/lang/Object;
.source "EventHook.java"


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
.method public abstract onBind(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract onBindMany(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
