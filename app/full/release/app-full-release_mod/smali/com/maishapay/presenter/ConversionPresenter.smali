.class public Lcom/maishapay/presenter/ConversionPresenter;
.super Lnet/grandcentrix/thirtyinch/TiPresenter;
.source "ConversionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/grandcentrix/thirtyinch/TiPresenter<",
        "Lcom/maishapay/view/ConversionView;",
        ">;"
    }
.end annotation


# instance fields
.field private disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

.field private maishapayClient:Lcom/maishapay/model/client/MaishapayClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;-><init>()V

    .line 36
    new-instance v0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    invoke-direct {v0, p0}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;-><init>(Lnet/grandcentrix/thirtyinch/TiPresenter;)V

    iput-object v0, p0, Lcom/maishapay/presenter/ConversionPresenter;->disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    return-void
.end method


# virtual methods
.method public conversion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/maishapay/presenter/ConversionPresenter;->disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    iget-object v1, p0, Lcom/maishapay/presenter/ConversionPresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    invoke-virtual {v1}, Lcom/maishapay/model/client/MaishapayClient;->taux_du_jour()Lio/reactivex/Single;

    move-result-object v1

    .line 48
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 49
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/maishapay/presenter/ConversionPresenter$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/maishapay/presenter/ConversionPresenter$1;-><init>(Lcom/maishapay/presenter/ConversionPresenter;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/maishapay/presenter/ConversionPresenter$2;

    invoke-direct {p1, p0}, Lcom/maishapay/presenter/ConversionPresenter$2;-><init>(Lcom/maishapay/presenter/ConversionPresenter;)V

    .line 50
    invoke-virtual {v1, v2, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->manageDisposable(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected onCreate()V
    .locals 1

    .line 41
    invoke-super {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->onCreate()V

    .line 43
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayClient()Lcom/maishapay/model/client/MaishapayClient;

    move-result-object v0

    iput-object v0, p0, Lcom/maishapay/presenter/ConversionPresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    return-void
.end method

.method public taux()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/maishapay/presenter/ConversionPresenter;->disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    iget-object v1, p0, Lcom/maishapay/presenter/ConversionPresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    invoke-virtual {v1}, Lcom/maishapay/model/client/MaishapayClient;->taux_du_jour()Lio/reactivex/Single;

    move-result-object v1

    .line 79
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 80
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/maishapay/presenter/ConversionPresenter$3;

    invoke-direct {v2, p0}, Lcom/maishapay/presenter/ConversionPresenter$3;-><init>(Lcom/maishapay/presenter/ConversionPresenter;)V

    new-instance v3, Lcom/maishapay/presenter/ConversionPresenter$4;

    invoke-direct {v3, p0}, Lcom/maishapay/presenter/ConversionPresenter$4;-><init>(Lcom/maishapay/presenter/ConversionPresenter;)V

    .line 81
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->manageDisposable(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
