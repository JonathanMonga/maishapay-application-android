.class public interface abstract Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;
.super Ljava/lang/Object;
.source "IProfile.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IIdentifyable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IIdentifyable<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getEmail()Lcom/mikepenz/materialdrawer/holder/StringHolder;
.end method

.method public abstract getIcon()Lcom/mikepenz/materialdrawer/holder/ImageHolder;
.end method

.method public abstract getName()Lcom/mikepenz/materialdrawer/holder/StringHolder;
.end method

.method public abstract isSelectable()Z
.end method

.method public abstract withEmail(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withIcon(I)Ljava/lang/Object;
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract withIcon(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")TT;"
        }
    .end annotation
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

.method public abstract withIcon(Landroid/net/Uri;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
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

.method public abstract withIcon(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

.method public abstract withSelectable(Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation
.end method
