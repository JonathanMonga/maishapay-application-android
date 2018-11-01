.class Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1$2;
.super Ljava/lang/Object;
.source "RxTiPresenterUtils.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


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
        "Lio/reactivex/functions/BiFunction<",
        "Ljava/lang/Boolean;",
        "TT;",
        "Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1;


# direct methods
.method constructor <init>(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1$2;->this$0:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$1$2;->apply(Ljava/lang/Boolean;Ljava/lang/Object;)Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Boolean;Ljava/lang/Object;)Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "TT;)",
            "Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    new-instance v0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue;

    invoke-direct {v0, p2, p1}, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object v0
.end method
