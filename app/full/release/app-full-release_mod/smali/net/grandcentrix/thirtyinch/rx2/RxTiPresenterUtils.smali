.class public Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils;
.super Ljava/lang/Object;
.source "RxTiPresenterUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deliverLatestToView(Lnet/grandcentrix/thirtyinch/TiPresenter;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/grandcentrix/thirtyinch/TiPresenter;",
            ")",
            "Lio/reactivex/ObservableTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 65
    new-instance v0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1;

    invoke-direct {v0, p0}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1;-><init>(Lnet/grandcentrix/thirtyinch/TiPresenter;)V

    return-object v0
.end method

.method public static isViewReady(Lnet/grandcentrix/thirtyinch/TiPresenter;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/grandcentrix/thirtyinch/TiPresenter;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2;

    invoke-direct {v0, p0}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2;-><init>(Lnet/grandcentrix/thirtyinch/TiPresenter;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
