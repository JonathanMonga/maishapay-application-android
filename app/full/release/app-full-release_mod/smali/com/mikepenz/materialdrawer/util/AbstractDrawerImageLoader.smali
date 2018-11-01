.class public abstract Lcom/mikepenz/materialdrawer/util/AbstractDrawerImageLoader;
.super Ljava/lang/Object;
.source "AbstractDrawerImageLoader.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Landroid/widget/ImageView;)V
    .locals 0

    return-void
.end method

.method public placeholder(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 27
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;->getPlaceHolder(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/util/AbstractDrawerImageLoader;->placeholder(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public set(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/mikepenz/materialdrawer/util/AbstractDrawerImageLoader;->set(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V

    const-string p1, "MaterialDrawer"

    const-string p2, "You have not specified a ImageLoader implementation through the DrawerImageLoader.init() method, or you are still overriding the deprecated method set(ImageView iv, Uri u, Drawable d) instead of set(ImageView iv, Uri u, Drawable d, String tag)"

    .line 19
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
