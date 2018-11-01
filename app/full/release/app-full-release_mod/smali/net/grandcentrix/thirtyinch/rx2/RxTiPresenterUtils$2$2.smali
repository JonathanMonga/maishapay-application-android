.class Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2$2;
.super Ljava/lang/Object;
.source "RxTiPresenterUtils.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


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

.field final synthetic val$removable:Lnet/grandcentrix/thirtyinch/Removable;


# direct methods
.method constructor <init>(Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2;Lnet/grandcentrix/thirtyinch/Removable;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2$2;->this$0:Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2;

    iput-object p2, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2$2;->val$removable:Lnet/grandcentrix/thirtyinch/Removable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 127
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2$2;->val$removable:Lnet/grandcentrix/thirtyinch/Removable;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/Removable;->remove()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$2$2;->val$removable:Lnet/grandcentrix/thirtyinch/Removable;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/Removable;->isRemoved()Z

    move-result v0

    return v0
.end method
