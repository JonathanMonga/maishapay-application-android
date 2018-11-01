.class public abstract Lcom/maishapay/ui/fragment/BaseFragment;
.super Lnet/grandcentrix/thirtyinch/TiFragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lnet/grandcentrix/thirtyinch/TiPresenter<",
        "TV;>;V::",
        "Lnet/grandcentrix/thirtyinch/TiView;",
        ">",
        "Lnet/grandcentrix/thirtyinch/TiFragment<",
        "TP;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/TiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-super {p0, p1}, Lnet/grandcentrix/thirtyinch/TiFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
