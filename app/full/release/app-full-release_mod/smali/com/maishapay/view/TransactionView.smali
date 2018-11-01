.class public interface abstract Lcom/maishapay/view/TransactionView;
.super Ljava/lang/Object;
.source "TransactionView.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/TiView;


# virtual methods
.method public abstract enabledControls(Z)V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract finishToLoadStatisics(Lcom/maishapay/model/domain/SoldeAndRapport;)V
.end method

.method public abstract finishToLoadTransactions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maishapay/model/client/response/TransactionResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method

.method public abstract showNetworkError()V
    .annotation runtime Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;
    .end annotation
.end method
