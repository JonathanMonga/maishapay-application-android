.class final Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1;
.super Ljava/lang/Object;
.source "RxTiPresenterUtils.java"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils;->deliverLatestToView(Lnet/grandcentrix/thirtyinch/TiPresenter;)Lio/reactivex/ObservableTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$presenter:Lnet/grandcentrix/thirtyinch/TiPresenter;


# direct methods
.method constructor <init>(Lnet/grandcentrix/thirtyinch/TiPresenter;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1;->val$presenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;)",
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lio/reactivex/Observable;->never()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->concatWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1;->val$presenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    .line 76
    invoke-static {v0}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils;->isViewReady(Lnet/grandcentrix/thirtyinch/TiPresenter;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1$2;

    invoke-direct {v1, p0}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1$2;-><init>(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1;)V

    invoke-static {v0, p1, v1}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1$1;

    invoke-direct {v0, p0}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1$1;-><init>(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1;)V

    .line 84
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
