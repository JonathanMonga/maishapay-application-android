.class Lcom/maishapay/presenter/ConversionPresenter$3;
.super Ljava/lang/Object;
.source "ConversionPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/ConversionPresenter;->taux()V
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
.field final synthetic this$0:Lcom/maishapay/presenter/ConversionPresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/ConversionPresenter;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/maishapay/presenter/ConversionPresenter$3;->this$0:Lcom/maishapay/presenter/ConversionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Double;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/maishapay/presenter/ConversionPresenter$3;->this$0:Lcom/maishapay/presenter/ConversionPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/ConversionPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/maishapay/presenter/ConversionPresenter$3;->this$0:Lcom/maishapay/presenter/ConversionPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/ConversionPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/ConversionView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/maishapay/view/ConversionView;->enabledControls(Z)V

    .line 86
    iget-object v0, p0, Lcom/maishapay/presenter/ConversionPresenter$3;->this$0:Lcom/maishapay/presenter/ConversionPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/ConversionPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/ConversionView;

    invoke-interface {v0, p1}, Lcom/maishapay/view/ConversionView;->finishToLoadTaux(Ljava/lang/Double;)V

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

    .line 81
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/ConversionPresenter$3;->accept(Ljava/lang/Double;)V

    return-void
.end method
