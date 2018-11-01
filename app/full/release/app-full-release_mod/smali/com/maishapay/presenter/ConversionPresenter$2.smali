.class Lcom/maishapay/presenter/ConversionPresenter$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/presenter/ConversionPresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/ConversionPresenter;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/maishapay/presenter/ConversionPresenter$2;->this$0:Lcom/maishapay/presenter/ConversionPresenter;

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

    .line 65
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/ConversionPresenter$2;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    iget-object p1, p0, Lcom/maishapay/presenter/ConversionPresenter$2;->this$0:Lcom/maishapay/presenter/ConversionPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/ConversionPresenter;->isViewAttached()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/maishapay/presenter/ConversionPresenter$2;->this$0:Lcom/maishapay/presenter/ConversionPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/ConversionPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/ConversionView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/maishapay/view/ConversionView;->enabledControls(Z)V

    .line 70
    iget-object p1, p0, Lcom/maishapay/presenter/ConversionPresenter$2;->this$0:Lcom/maishapay/presenter/ConversionPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/ConversionPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/ConversionView;

    invoke-interface {p1}, Lcom/maishapay/view/ConversionView;->showNetworkError()V

    :cond_0
    return-void
.end method
