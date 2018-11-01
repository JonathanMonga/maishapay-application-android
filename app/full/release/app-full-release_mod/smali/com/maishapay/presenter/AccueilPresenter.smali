.class public Lcom/maishapay/presenter/AccueilPresenter;
.super Lnet/grandcentrix/thirtyinch/TiPresenter;
.source "AccueilPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/grandcentrix/thirtyinch/TiPresenter<",
        "Lcom/maishapay/view/AccueilView;",
        ">;"
    }
.end annotation


# instance fields
.field private disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

.field private maishapayClient:Lcom/maishapay/model/client/MaishapayClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;-><init>()V

    .line 38
    new-instance v0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    invoke-direct {v0, p0}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;-><init>(Lnet/grandcentrix/thirtyinch/TiPresenter;)V

    iput-object v0, p0, Lcom/maishapay/presenter/AccueilPresenter;->disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    return-void
.end method


# virtual methods
.method protected onCreate()V
    .locals 1

    .line 43
    invoke-super {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->onCreate()V

    .line 45
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayClient()Lcom/maishapay/model/client/MaishapayClient;

    move-result-object v0

    iput-object v0, p0, Lcom/maishapay/presenter/AccueilPresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    return-void
.end method

.method public solde(Ljava/lang/String;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/maishapay/presenter/AccueilPresenter;->disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    iget-object v1, p0, Lcom/maishapay/presenter/AccueilPresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    invoke-virtual {v1, p1}, Lcom/maishapay/model/client/MaishapayClient;->solde(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    iget-object v2, p0, Lcom/maishapay/presenter/AccueilPresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    invoke-virtual {v2, p1}, Lcom/maishapay/model/client/MaishapayClient;->rapport(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v2, Lcom/maishapay/presenter/AccueilPresenter$3;

    invoke-direct {v2, p0}, Lcom/maishapay/presenter/AccueilPresenter$3;-><init>(Lcom/maishapay/presenter/AccueilPresenter;)V

    invoke-virtual {v1, p1, v2}, Lio/reactivex/Single;->zipWith(Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Single;

    move-result-object p1

    .line 97
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 98
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/maishapay/presenter/AccueilPresenter$1;

    invoke-direct {v1, p0}, Lcom/maishapay/presenter/AccueilPresenter$1;-><init>(Lcom/maishapay/presenter/AccueilPresenter;)V

    new-instance v2, Lcom/maishapay/presenter/AccueilPresenter$2;

    invoke-direct {v2, p0}, Lcom/maishapay/presenter/AccueilPresenter$2;-><init>(Lcom/maishapay/presenter/AccueilPresenter;)V

    .line 99
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->manageDisposable(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public taux()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/maishapay/presenter/AccueilPresenter;->disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    iget-object v1, p0, Lcom/maishapay/presenter/AccueilPresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    invoke-virtual {v1}, Lcom/maishapay/model/client/MaishapayClient;->taux_du_jour()Lio/reactivex/Single;

    move-result-object v1

    .line 120
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 121
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/maishapay/presenter/AccueilPresenter$4;

    invoke-direct {v2, p0}, Lcom/maishapay/presenter/AccueilPresenter$4;-><init>(Lcom/maishapay/presenter/AccueilPresenter;)V

    new-instance v3, Lcom/maishapay/presenter/AccueilPresenter$5;

    invoke-direct {v3, p0}, Lcom/maishapay/presenter/AccueilPresenter$5;-><init>(Lcom/maishapay/presenter/AccueilPresenter;)V

    .line 122
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->manageDisposable(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
