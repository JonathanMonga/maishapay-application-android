.class Lcom/maishapay/presenter/RetraitConfirmationPresenter$2;
.super Ljava/lang/Object;
.source "RetraitConfirmationPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/RetraitConfirmationPresenter;->retrait(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/RetraitConfirmationPresenter;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$2;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/RetraitConfirmationPresenter$2;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object p1, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$2;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/RetraitView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/maishapay/view/RetraitView;->enabledControls(Z)V

    .line 75
    iget-object p1, p0, Lcom/maishapay/presenter/RetraitConfirmationPresenter$2;->this$0:Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/RetraitView;

    invoke-interface {p1}, Lcom/maishapay/view/RetraitView;->showNetworkError()V

    return-void
.end method
