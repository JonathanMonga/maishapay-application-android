.class public interface abstract Lcom/mikepenz/materialdrawer/model/interfaces/ColorfulBadgeable;
.super Ljava/lang/Object;
.source "ColorfulBadgeable.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/model/interfaces/Badgeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/Badgeable<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getBadgeStyle()Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
.end method

.method public abstract withBadgeStyle(Lcom/mikepenz/materialdrawer/holder/BadgeStyle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/holder/BadgeStyle;",
            ")TT;"
        }
    .end annotation
.end method
