.class public interface abstract Lcom/maishapay/view/RetraitView;
.super Ljava/lang/Object;
.source "RetraitView.java"

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

.method public abstract finishToRetrait(Lcom/maishapay/model/client/response/RetraitResponse;)V
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

.method public abstract showRetraitError(I)V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method
