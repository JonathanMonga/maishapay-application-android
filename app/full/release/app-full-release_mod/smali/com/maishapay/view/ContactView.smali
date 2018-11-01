.class public interface abstract Lcom/maishapay/view/ContactView;
.super Ljava/lang/Object;
.source "ContactView.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/TiView;


# virtual methods
.method public abstract enabledControls(Z)V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract finishToSend()V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract showContactSendError(I)V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract showNetworkError()V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method
