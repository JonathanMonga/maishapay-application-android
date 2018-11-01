.class public interface abstract Lcom/mikepenz/fastadapter/ISelectionListener;
.super Ljava/lang/Object;
.source "ISelectionListener.java"


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
.method public abstract onSelectionChanged(Lcom/mikepenz/fastadapter/IItem;Z)V
    .param p1    # Lcom/mikepenz/fastadapter/IItem;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;Z)V"
        }
    .end annotation
.end method
