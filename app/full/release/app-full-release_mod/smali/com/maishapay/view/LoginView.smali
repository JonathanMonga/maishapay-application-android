.class public interface abstract Lcom/maishapay/view/LoginView;
.super Ljava/lang/Object;
.source "LoginView.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/TiView;


# virtual methods
.method public abstract enabledControls(Z)V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract finishToForgot()V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract finishToLogin(Lcom/maishapay/model/client/response/UserResponse;)V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract showForgotError(I)V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract showLoginError(I)V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract showNetworkForgotError()V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract showNetworkLoginError()V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method
