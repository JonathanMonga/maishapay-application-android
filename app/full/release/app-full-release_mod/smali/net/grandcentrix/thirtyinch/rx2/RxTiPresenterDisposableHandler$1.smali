.class Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler$1;
.super Ljava/lang/Object;
.source "RxTiPresenterDisposableHandler.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;-><init>(Lnet/grandcentrix/thirtyinch/TiPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;


# direct methods
.method constructor <init>(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler$1;->this$0:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lnet/grandcentrix/thirtyinch/TiPresenter$State;Z)V
    .locals 3

    .line 36
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_DETACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 39
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler$1;->this$0:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    invoke-static {v0}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->access$000(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler$1;->this$0:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    invoke-static {v0}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->access$000(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 41
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler$1;->this$0:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->access$002(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;Lio/reactivex/disposables/CompositeDisposable;)Lio/reactivex/disposables/CompositeDisposable;

    .line 45
    :cond_0
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_ATTACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 46
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler$1;->this$0:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    new-instance v2, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v2}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    invoke-static {v0, v2}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->access$002(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;Lio/reactivex/disposables/CompositeDisposable;)Lio/reactivex/disposables/CompositeDisposable;

    .line 49
    :cond_1
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->DESTROYED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_2

    .line 50
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler$1;->this$0:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    invoke-static {p1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->access$100(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 51
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler$1;->this$0:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;

    invoke-static {p1, v1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;->access$102(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterDisposableHandler;Lio/reactivex/disposables/CompositeDisposable;)Lio/reactivex/disposables/CompositeDisposable;

    :cond_2
    return-void
.end method
