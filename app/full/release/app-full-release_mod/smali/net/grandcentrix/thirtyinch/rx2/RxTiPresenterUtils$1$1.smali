.class Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1$1;
.super Ljava/lang/Object;
.source "RxTiPresenterUtils.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue<",
        "TT;>;",
        "Lio/reactivex/ObservableSource<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1;


# direct methods
.method constructor <init>(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1$1;->this$0:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue<",
            "TT;>;)",
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    iget-boolean v0, p1, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue;->viewReady:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object p1, p1, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue;->value:Ljava/lang/Object;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 91
    :cond_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    check-cast p1, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue;

    invoke-virtual {p0, p1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1$1;->apply(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
