.class Lcom/maishapay/presenter/ContactPresenter$2;
.super Ljava/lang/Object;
.source "ContactPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/presenter/ContactPresenter;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/maishapay/presenter/ContactPresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/ContactPresenter;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/maishapay/presenter/ContactPresenter$2;->this$0:Lcom/maishapay/presenter/ContactPresenter;

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

    .line 67
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/ContactPresenter$2;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    iget-object p1, p0, Lcom/maishapay/presenter/ContactPresenter$2;->this$0:Lcom/maishapay/presenter/ContactPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/ContactPresenter;->isViewAttached()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/maishapay/presenter/ContactPresenter$2;->this$0:Lcom/maishapay/presenter/ContactPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/ContactPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/ContactView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/maishapay/view/ContactView;->enabledControls(Z)V

    .line 72
    iget-object p1, p0, Lcom/maishapay/presenter/ContactPresenter$2;->this$0:Lcom/maishapay/presenter/ContactPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/ContactPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/ContactView;

    invoke-interface {p1}, Lcom/maishapay/view/ContactView;->showNetworkError()V

    :cond_0
    return-void
.end method
