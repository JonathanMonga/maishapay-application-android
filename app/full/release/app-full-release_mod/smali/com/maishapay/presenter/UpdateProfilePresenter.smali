.class public Lcom/maishapay/presenter/UpdateProfilePresenter;
.super Lnet/grandcentrix/thirtyinch/TiPresenter;
.source "UpdateProfilePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/grandcentrix/thirtyinch/TiPresenter<",
        "Lcom/maishapay/view/UpdateProfileView;",
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

    iput-object v0, p0, Lcom/maishapay/presenter/UpdateProfilePresenter;->disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    return-void
.end method


# virtual methods
.method protected onCreate()V
    .locals 1

    .line 41
    invoke-super {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->onCreate()V

    .line 43
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayClient()Lcom/maishapay/model/client/MaishapayClient;

    move-result-object v0

    iput-object v0, p0, Lcom/maishapay/presenter/UpdateProfilePresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    return-void
.end method

.method public updateProfile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    .line 47
    new-instance v1, Lcom/maishapay/model/client/response/UserResponse;

    invoke-direct {v1}, Lcom/maishapay/model/client/response/UserResponse;-><init>()V

    move-object v3, p2

    .line 48
    invoke-virtual {v1, v3}, Lcom/maishapay/model/client/response/UserResponse;->setNom(Ljava/lang/String;)V

    move-object v4, p3

    .line 49
    invoke-virtual {v1, v4}, Lcom/maishapay/model/client/response/UserResponse;->setPrenom(Ljava/lang/String;)V

    move-object v5, p4

    .line 50
    invoke-virtual {v1, v5}, Lcom/maishapay/model/client/response/UserResponse;->setTelephone(Ljava/lang/String;)V

    move-object/from16 v6, p5

    .line 51
    invoke-virtual {v1, v6}, Lcom/maishapay/model/client/response/UserResponse;->setEmail(Ljava/lang/String;)V

    move-object/from16 v7, p6

    .line 52
    invoke-virtual {v1, v7}, Lcom/maishapay/model/client/response/UserResponse;->setAdresse(Ljava/lang/String;)V

    move-object/from16 v8, p7

    .line 53
    invoke-virtual {v1, v8}, Lcom/maishapay/model/client/response/UserResponse;->setVille(Ljava/lang/String;)V

    .line 55
    iget-object v10, v0, Lcom/maishapay/presenter/UpdateProfilePresenter;->disposableHandler:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    iget-object v2, v0, Lcom/maishapay/presenter/UpdateProfilePresenter;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcom/maishapay/model/client/MaishapayClient;->update_profil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v2

    .line 56
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 57
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/maishapay/presenter/UpdateProfilePresenter$1;

    move-object v4, p1

    invoke-direct {v3, v0, v4, v1}, Lcom/maishapay/presenter/UpdateProfilePresenter$1;-><init>(Lcom/maishapay/presenter/UpdateProfilePresenter;Landroid/app/Activity;Lcom/maishapay/model/client/response/UserResponse;)V

    new-instance v1, Lcom/maishapay/presenter/UpdateProfilePresenter$2;

    invoke-direct {v1, v0}, Lcom/maishapay/presenter/UpdateProfilePresenter$2;-><init>(Lcom/maishapay/presenter/UpdateProfilePresenter;)V

    .line 58
    invoke-virtual {v2, v3, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 55
    invoke-virtual {v10, v1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->manageDisposable(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
