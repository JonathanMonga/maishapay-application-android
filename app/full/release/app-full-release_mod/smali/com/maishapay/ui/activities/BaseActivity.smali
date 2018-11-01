.class public abstract Lcom/maishapay/ui/activities/BaseActivity;
.super Lnet/grandcentrix/thirtyinch/TiActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lnet/grandcentrix/thirtyinch/TiPresenter<",
        "TV;>;V::",
        "Lnet/grandcentrix/thirtyinch/TiView;",
        ">",
        "Lnet/grandcentrix/thirtyinch/TiActivity<",
        "TP;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/TiActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/grandcentrix/thirtyinch/TiActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method
