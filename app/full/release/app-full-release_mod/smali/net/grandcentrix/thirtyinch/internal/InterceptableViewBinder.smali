.class public interface abstract Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder;
.super Ljava/lang/Object;
.source "InterceptableViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder$Filter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lnet/grandcentrix/thirtyinch/TiView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addBindViewInterceptor(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/Removable;
    .param p1    # Lnet/grandcentrix/thirtyinch/BindViewInterceptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getInterceptedViewOf(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/TiView;
    .param p1    # Lnet/grandcentrix/thirtyinch/BindViewInterceptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/grandcentrix/thirtyinch/BindViewInterceptor;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract getInterceptors(Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder$Filter;)Ljava/util/List;
    .param p1    # Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder$Filter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder$Filter<",
            "Lnet/grandcentrix/thirtyinch/BindViewInterceptor;",
            ">;)",
            "Ljava/util/List<",
            "Lnet/grandcentrix/thirtyinch/BindViewInterceptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract invalidateView()V
.end method
