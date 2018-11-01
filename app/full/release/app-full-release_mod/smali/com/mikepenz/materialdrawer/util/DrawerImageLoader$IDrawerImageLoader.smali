.class public interface abstract Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;
.super Ljava/lang/Object;
.source "DrawerImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDrawerImageLoader"
.end annotation


# virtual methods
.method public abstract cancel(Landroid/widget/ImageView;)V
.end method

.method public abstract placeholder(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract placeholder(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract set(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract set(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
.end method
