.class Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2$1;
.super Ljava/lang/Object;
.source "RxTiPresenterUtils.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2;

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2$1;->this$0:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2;

    iput-object p2, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lnet/grandcentrix/thirtyinch/TiPresenter$State;Z)V
    .locals 2

    .line 117
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    sget-object v1, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_ATTACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
