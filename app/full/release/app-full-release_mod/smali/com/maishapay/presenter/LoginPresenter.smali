.class public Lcom/maishapay/presenter/LoginPresenter;
.super Lnet/grandcentrix/thirtyinch/TiPresenter;
.source "LoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/grandcentrix/thirtyinch/TiPresenter<",
        "Lcom/maishapay/view/LoginView;",
        ">;"
    }
.end annotation


# instance fields
.field private disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

.field private maishapayClient:Lcom/maishapay/model/client/MaishapayClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;-><init>()V

    .line 33
    new-instance v0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    invoke-direct {v0, p0}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;-><init>(Lnet/grandcentrix/thirtyinch/TiPresenter;)V

    iput-object v0, p0, Lcom/maishapay/presenter/LoginPresenter;->disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    return-void
.end method


# virtual methods
.method public forgot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/maishapay/presenter/LoginPresenter;->disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    iget-object v1, p0, Lcom/maishapay/presenter/LoginPresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    invoke-virtual {v1, p1, p2}, Lcom/maishapay/model/client/MaishapayClient;->pin_perdu(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 81
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 82
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/maishapay/presenter/LoginPresenter$3;

    invoke-direct {p2, p0}, Lcom/maishapay/presenter/LoginPresenter$3;-><init>(Lcom/maishapay/presenter/LoginPresenter;)V

    new-instance v1, Lcom/maishapay/presenter/LoginPresenter$4;

    invoke-direct {v1, p0}, Lcom/maishapay/presenter/LoginPresenter$4;-><init>(Lcom/maishapay/presenter/LoginPresenter;)V

    .line 83
    invoke-virtual {p1, p2, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 80
    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->manageDisposable(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/maishapay/presenter/LoginPresenter;->disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    iget-object v1, p0, Lcom/maishapay/presenter/LoginPresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    invoke-virtual {v1, p1, p2}, Lcom/maishapay/model/client/MaishapayClient;->login(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 45
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 46
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/maishapay/presenter/LoginPresenter$1;

    invoke-direct {p2, p0}, Lcom/maishapay/presenter/LoginPresenter$1;-><init>(Lcom/maishapay/presenter/LoginPresenter;)V

    new-instance v1, Lcom/maishapay/presenter/LoginPresenter$2;

    invoke-direct {v1, p0}, Lcom/maishapay/presenter/LoginPresenter$2;-><init>(Lcom/maishapay/presenter/LoginPresenter;)V

    .line 47
    invoke-virtual {p1, p2, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->manageDisposable(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected onCreate()V
    .locals 1

    .line 38
    invoke-super {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->onCreate()V

    .line 40
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayClient()Lcom/maishapay/model/client/MaishapayClient;

    move-result-object v0

    iput-object v0, p0, Lcom/maishapay/presenter/LoginPresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    return-void
.end method
