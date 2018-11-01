.class public Lcom/maishapay/presenter/RetraitConfirmationPresenter;
.super Lnet/grandcentrix/thirtyinch/TiPresenter;
.source "RetraitConfirmationPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/grandcentrix/thirtyinch/TiPresenter<",
        "Lcom/maishapay/view/RetraitView;",
        ">;"
    }
.end annotation


# instance fields
.field private disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

.field private maishapayClient:Lcom/maishapay/model/client/MaishapayClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;-><init>()V

    .line 34
    new-instance v0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    invoke-direct {v0, p0}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;-><init>(Lnet/grandcentrix/thirtyinch/TiPresenter;)V

    iput-object v0, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    return-void
.end method


# virtual methods
.method public confirmRetrait(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 81
    iget-object v0, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    iget-object v1, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/maishapay/model/client/MaishapayClient;->confirm_retrait(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 82
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 83
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/maishapay/presenter/RetraitConfirmationPresenter$3;

    invoke-direct {p2, p0}, Lcom/maishapay/presenter/RetraitConfirmationPresenter$3;-><init>(Lcom/maishapay/presenter/RetraitConfirmationPresenter;)V

    new-instance p3, Lcom/maishapay/presenter/RetraitConfirmationPresenter$4;

    invoke-direct {p3, p0}, Lcom/maishapay/presenter/RetraitConfirmationPresenter$4;-><init>(Lcom/maishapay/presenter/RetraitConfirmationPresenter;)V

    .line 84
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->manageDisposable(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected onCreate()V
    .locals 1

    .line 39
    invoke-super {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->onCreate()V

    .line 41
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayClient()Lcom/maishapay/model/client/MaishapayClient;

    move-result-object v0

    iput-object v0, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    return-void
.end method

.method public retrait(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    iget-object v1, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/maishapay/model/client/MaishapayClient;->retrait(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 46
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 47
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/maishapay/presenter/RetraitConfirmationPresenter$1;

    invoke-direct {p2, p0}, Lcom/maishapay/presenter/RetraitConfirmationPresenter$1;-><init>(Lcom/maishapay/presenter/RetraitConfirmationPresenter;)V

    new-instance p3, Lcom/maishapay/presenter/RetraitConfirmationPresenter$2;

    invoke-direct {p3, p0}, Lcom/maishapay/presenter/RetraitConfirmationPresenter$2;-><init>(Lcom/maishapay/presenter/RetraitConfirmationPresenter;)V

    .line 48
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->manageDisposable(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
