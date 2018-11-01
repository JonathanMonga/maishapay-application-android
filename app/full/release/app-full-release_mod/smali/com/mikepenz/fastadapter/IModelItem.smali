.class public interface abstract Lcom/mikepenz/fastadapter/IModelItem;
.super Ljava/lang/Object;
.source "IModelItem.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Item::",
        "Lcom/mikepenz/fastadapter/IModelItem<",
        "***>;VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IItem<",
        "TItem;TVH;>;"
    }
.end annotation


# virtual methods
.method public abstract getModel()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TModel;"
        }
    .end annotation
.end method

.method public abstract withModel(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IModelItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)",
            "Lcom/mikepenz/fastadapter/IModelItem<",
            "***>;"
        }
    .end annotation
.end method
