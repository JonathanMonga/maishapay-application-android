.class Lcom/maishapay/presenter/EpargnePersonellePresenter$2;
.super Ljava/lang/Object;
.source "EpargnePersonellePresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/EpargnePersonellePresenter;->transfertEpargnePersonelle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/maishapay/presenter/EpargnePersonellePresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/EpargnePersonellePresenter;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/maishapay/presenter/EpargnePersonellePresenter$2;->this$0:Lcom/maishapay/presenter/EpargnePersonellePresenter;

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

    .line 76
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/EpargnePersonellePresenter$2;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    iget-object p1, p0, Lcom/maishapay/presenter/EpargnePersonellePresenter$2;->this$0:Lcom/maishapay/presenter/EpargnePersonellePresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/EpargnePersonellePresenter;->isViewAttached()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/maishapay/presenter/EpargnePersonellePresenter$2;->this$0:Lcom/maishapay/presenter/EpargnePersonellePresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/EpargnePersonellePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/EpargnePersonelleView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/maishapay/view/EpargnePersonelleView;->enabledControls(Z)V

    .line 81
    iget-object p1, p0, Lcom/maishapay/presenter/EpargnePersonellePresenter$2;->this$0:Lcom/maishapay/presenter/EpargnePersonellePresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/EpargnePersonellePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/EpargnePersonelleView;

    invoke-interface {p1}, Lcom/maishapay/view/EpargnePersonelleView;->showNetworkError()V

    :cond_0
    return-void
.end method
