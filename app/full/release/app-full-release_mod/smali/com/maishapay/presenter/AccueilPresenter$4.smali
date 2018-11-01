.class Lcom/maishapay/presenter/AccueilPresenter$4;
.super Ljava/lang/Object;
.source "AccueilPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/AccueilPresenter;->taux()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/presenter/AccueilPresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/AccueilPresenter;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/maishapay/presenter/AccueilPresenter$4;->this$0:Lcom/maishapay/presenter/AccueilPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Double;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/maishapay/presenter/AccueilPresenter$4;->this$0:Lcom/maishapay/presenter/AccueilPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/AccueilPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/maishapay/presenter/AccueilPresenter$4;->this$0:Lcom/maishapay/presenter/AccueilPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/AccueilPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/AccueilView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/maishapay/view/AccueilView;->enabledControls(Z)V

    .line 127
    iget-object v0, p0, Lcom/maishapay/presenter/AccueilPresenter$4;->this$0:Lcom/maishapay/presenter/AccueilPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/AccueilPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/AccueilView;

    invoke-interface {v0, p1}, Lcom/maishapay/view/AccueilView;->finishToLoadTaux(Ljava/lang/Double;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/AccueilPresenter$4;->accept(Ljava/lang/Double;)V

    return-void
.end method
