.class public interface abstract Lcom/mikepenz/materialdrawer/model/interfaces/Iconable;
.super Ljava/lang/Object;
.source "Iconable.java"


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
.method public abstract getIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;
.end method

.method public abstract withIcon(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/iconics/typeface/IIcon;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withIcon(Lcom/mikepenz/materialdrawer/holder/ImageHolder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/holder/ImageHolder;",
            ")TT;"
        }
    .end annotation
.end method
