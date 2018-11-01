.class Lcom/maishapay/presenter/ConversionPresenter$1;
.super Ljava/lang/Object;
.source "ConversionPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/ConversionPresenter;->conversion(Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic val$monnaie:Ljava/lang/String;

.field final synthetic val$montant:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/ConversionPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/maishapay/presenter/ConversionPresenter$1;->this$0:Lcom/maishapay/presenter/ConversionPresenter;

    iput-object p2, p0, Lcom/maishapay/presenter/ConversionPresenter$1;->val$monnaie:Ljava/lang/String;

    iput-object p3, p0, Lcom/maishapay/presenter/ConversionPresenter$1;->val$montant:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Double;)V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/maishapay/presenter/ConversionPresenter$1;->val$monnaie:Ljava/lang/String;

    const-string v1, "USD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/maishapay/presenter/ConversionPresenter$1;->this$0:Lcom/maishapay/presenter/ConversionPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/ConversionPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/maishapay/presenter/ConversionPresenter$1;->this$0:Lcom/maishapay/presenter/ConversionPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/ConversionPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/ConversionView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/ConversionView;->enabledControls(Z)V

    .line 56
    iget-object v0, p0, Lcom/maishapay/presenter/ConversionPresenter$1;->this$0:Lcom/maishapay/presenter/ConversionPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/ConversionPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/ConversionView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    iget-object v2, p0, Lcom/maishapay/presenter/ConversionPresenter$1;->val$montant:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " FC"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/maishapay/view/ConversionView;->finishToConversion(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/maishapay/presenter/ConversionPresenter$1;->this$0:Lcom/maishapay/presenter/ConversionPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/ConversionPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/maishapay/presenter/ConversionPresenter$1;->this$0:Lcom/maishapay/presenter/ConversionPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/ConversionPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/ConversionView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/ConversionView;->enabledControls(Z)V

    .line 61
    iget-object v0, p0, Lcom/maishapay/presenter/ConversionPresenter$1;->this$0:Lcom/maishapay/presenter/ConversionPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/ConversionPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/ConversionView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/maishapay/presenter/ConversionPresenter$1;->val$montant:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " USD"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/maishapay/view/ConversionView;->finishToConversion(Ljava/lang/String;)V

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

    .line 50
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/ConversionPresenter$1;->accept(Ljava/lang/Double;)V

    return-void
.end method
