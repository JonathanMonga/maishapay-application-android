.class public interface abstract Lcom/maishapay/view/TransfertView;
.super Ljava/lang/Object;
.source "TransfertView.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/TiView;


# virtual methods
.method public abstract enabledControls(Z)V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract finishToConfirm()V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract finishToTranfert(Lcom/maishapay/model/client/response/TransfertResponse;)V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract showConfimationError(I)V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract showNetworkError()V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract showTranfertError(I)V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method
