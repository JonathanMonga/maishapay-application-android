.class public interface abstract Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;
.super Ljava/lang/Object;
.source "TiPresenterSavior.java"


# virtual methods
.method public abstract free(Ljava/lang/String;Ljava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract recover(Ljava/lang/String;Ljava/lang/Object;)Lnet/grandcentrix/thirtyinch/TiPresenter;
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract save(Lnet/grandcentrix/thirtyinch/TiPresenter;Ljava/lang/Object;)Ljava/lang/String;
    .param p1    # Lnet/grandcentrix/thirtyinch/TiPresenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
