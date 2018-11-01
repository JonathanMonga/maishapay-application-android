.class final Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2;
.super Ljava/lang/Object;
.source "RxTiPresenterUtils.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils;->isViewReady(Lnet/grandcentrix/thirtyinch/TiPresenter;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$presenter:Lnet/grandcentrix/thirtyinch/TiPresenter;


# direct methods
.method constructor <init>(Lnet/grandcentrix/thirtyinch/TiPresenter;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2;->val$presenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2;->val$presenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getState()Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    move-result-object v0

    sget-object v1, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_ATTACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 112
    :cond_1
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2;->val$presenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    new-instance v1, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2$1;

    invoke-direct {v1, p0, p1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2$1;-><init>(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2;Lio/reactivex/ObservableEmitter;)V

    .line 113
    invoke-virtual {v0, v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->addLifecycleObserver(Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;)Lnet/grandcentrix/thirtyinch/Removable;

    move-result-object v0

    .line 124
    new-instance v1, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2$2;

    invoke-direct {v1, p0, v0}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2$2;-><init>(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2;Lnet/grandcentrix/thirtyinch/Removable;)V

    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
