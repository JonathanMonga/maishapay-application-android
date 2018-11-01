.class public interface abstract Lcom/mikepenz/materialdrawer/model/interfaces/Badgeable;
.super Ljava/lang/Object;
.source "Badgeable.java"


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
.method public abstract getBadge()Lcom/mikepenz/materialdrawer/holder/StringHolder;
.end method

.method public abstract withBadge(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract withBadge(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/holder/StringHolder;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withBadge(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
