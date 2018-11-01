.class public Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;
.super Ljava/lang/Object;
.source "RxTiPresenterDisposableHandler.java"


# instance fields
.field private mPresenterDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private mUiDisposables:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>(Lnet/grandcentrix/thirtyinch/TiPresenter;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->mPresenterDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 32
    new-instance v0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler$1;

    invoke-direct {v0, p0}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler$1;-><init>(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;)V

    invoke-virtual {p1, v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->addLifecycleObserver(Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;)Lnet/grandcentrix/thirtyinch/Removable;

    return-void
.end method

.method static synthetic access$000(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 0

    .line 25
    iget-object p0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->mUiDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method static synthetic access$002(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;Lio/reactivex/disposables/CompositeDisposable;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 0

    .line 25
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->mUiDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-object p1
.end method

.method static synthetic access$100(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 0

    .line 25
    iget-object p0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->mPresenterDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method static synthetic access$102(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;Lio/reactivex/disposables/CompositeDisposable;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 0

    .line 25
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->mPresenterDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-object p1
.end method


# virtual methods
.method public manageDisposable(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->mPresenterDisposables:Lio/reactivex/disposables/CompositeDisposable;

    if-nez v0, :cond_0

    .line 66
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "disposable handling doesn\'t work when the presenter has reached the DESTROYED state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_0
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->mPresenterDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-object p1
.end method

.method public varargs manageDisposables([Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1    # [Lio/reactivex/disposables/Disposable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 83
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 84
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->manageDisposable(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public manageViewDisposable(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 96
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->mUiDisposables:Lio/reactivex/disposables/CompositeDisposable;

    if-nez v0, :cond_0

    .line 97
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "view disposable can\'t be handled when there is no view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_0
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->mUiDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-object p1
.end method

.method public varargs manageViewDisposables([Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1    # [Lio/reactivex/disposables/Disposable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 113
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 114
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->manageViewDisposable(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
