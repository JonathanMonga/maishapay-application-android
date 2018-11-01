.class public interface abstract Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;
.super Ljava/lang/Object;
.source "IItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/IItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Predicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract filter(Lcom/mikepenz/fastadapter/IItem;Ljava/lang/CharSequence;)Z
    .param p2    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Ljava/lang/CharSequence;",
            ")Z"
        }
    .end annotation
.end method
