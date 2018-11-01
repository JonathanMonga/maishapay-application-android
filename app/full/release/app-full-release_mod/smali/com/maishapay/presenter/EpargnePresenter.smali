.class public Lcom/maishapay/presenter/EpargnePresenter;
.super Lnet/grandcentrix/thirtyinch/TiPresenter;
.source "EpargnePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/grandcentrix/thirtyinch/TiPresenter<",
        "Lcom/maishapay/view/EpargneView;",
        ">;"
    }
.end annotation


# instance fields
.field private disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

.field private maishapayClient:Lcom/maishapay/model/client/MaishapayClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;-><init>()V

    .line 35
    new-instance v0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    invoke-direct {v0, p0}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;-><init>(Lnet/grandcentrix/thirtyinch/TiPresenter;)V

    iput-object v0, p0, Lcom/maishapay/presenter/EpargnePresenter;->disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    return-void
.end method


# virtual methods
.method protected onCreate()V
    .locals 1

    .line 40
    invoke-super {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->onCreate()V

    .line 42
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayClient()Lcom/maishapay/model/client/MaishapayClient;

    move-result-object v0

    iput-object v0, p0, Lcom/maishapay/presenter/EpargnePresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    return-void
.end method

.method public soldeEpargne(Ljava/lang/String;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/maishapay/presenter/EpargnePresenter;->disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    iget-object v1, p0, Lcom/maishapay/presenter/EpargnePresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    invoke-virtual {v1, p1}, Lcom/maishapay/model/client/MaishapayClient;->solde_epargne_perso(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 47
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 48
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/maishapay/presenter/EpargnePresenter$1;

    invoke-direct {v1, p0}, Lcom/maishapay/presenter/EpargnePresenter$1;-><init>(Lcom/maishapay/presenter/EpargnePresenter;)V

    new-instance v2, Lcom/maishapay/presenter/EpargnePresenter$2;

    invoke-direct {v2, p0}, Lcom/maishapay/presenter/EpargnePresenter$2;-><init>(Lcom/maishapay/presenter/EpargnePresenter;)V

    .line 49
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->manageDisposable(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
