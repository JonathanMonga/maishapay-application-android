.class Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter$1;
.super Ljava/lang/Object;
.source "OuvrirEpargnePersonellePresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;->ouvrirEpargne(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter$1;->this$0:Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 2

    .line 49
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter$1;->this$0:Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter$1;->this$0:Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/OuvrirEpargnePersonelleView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/maishapay/view/OuvrirEpargnePersonelleView;->showOuvrirEpargnePersonelleError(I)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter$1;->this$0:Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter$1;->this$0:Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/OuvrirEpargnePersonelleView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/maishapay/view/OuvrirEpargnePersonelleView;->enabledControls(Z)V

    .line 56
    iget-object v0, p0, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter$1;->this$0:Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/OuvrirEpargnePersonelleView;

    invoke-interface {v0, p1}, Lcom/maishapay/view/OuvrirEpargnePersonelleView;->finishToOuvrir(Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
