.class public interface abstract Lcom/mikepenz/materialdrawer/model/interfaces/Nameable;
.super Ljava/lang/Object;
.source "Nameable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getName()Lcom/mikepenz/materialdrawer/holder/StringHolder;
.end method

.method public abstract withName(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract withName(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/holder/StringHolder;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withName(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
