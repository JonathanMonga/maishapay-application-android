.class public interface abstract Lcom/maishapay/view/AccueilView;
.super Ljava/lang/Object;
.source "AccueilView.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/TiView;


# virtual methods
.method public abstract enabledControls(Z)V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract finishToLoadSoldeAndRappot(Lcom/maishapay/model/domain/SoldeAndRapport;)V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract finishToLoadTaux(Ljava/lang/Double;)V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract showNetworkError()V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method
