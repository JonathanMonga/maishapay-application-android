.class Lcom/maishapay/presenter/ContactPresenter$1;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/presenter/ContactPresenter;


# direct methods
.method constructor <init>(Lcom/maishapay/presenter/ContactPresenter;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/maishapay/presenter/ContactPresenter$1;->this$0:Lcom/maishapay/presenter/ContactPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 2

    .line 49
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/maishapay/presenter/ContactPresenter$1;->this$0:Lcom/maishapay/presenter/ContactPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/ContactPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/maishapay/presenter/ContactPresenter$1;->this$0:Lcom/maishapay/presenter/ContactPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/ContactPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/ContactView;

    invoke-interface {v0, v1}, Lcom/maishapay/view/ContactView;->enabledControls(Z)V

    .line 53
    iget-object v0, p0, Lcom/maishapay/presenter/ContactPresenter$1;->this$0:Lcom/maishapay/presenter/ContactPresenter;

    invoke-virtual {v0}, Lcom/maishapay/presenter/ContactPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    check-cast v0, Lcom/maishapay/view/ContactView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/maishapay/view/ContactView;->showContactSendError(I)V

    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/maishapay/presenter/ContactPresenter$1;->this$0:Lcom/maishapay/presenter/ContactPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/ContactPresenter;->isViewAttached()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 60
    iget-object p1, p0, Lcom/maishapay/presenter/ContactPresenter$1;->this$0:Lcom/maishapay/presenter/ContactPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/ContactPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/ContactView;

    invoke-interface {p1, v1}, Lcom/maishapay/view/ContactView;->enabledControls(Z)V

    .line 61
    iget-object p1, p0, Lcom/maishapay/presenter/ContactPresenter$1;->this$0:Lcom/maishapay/presenter/ContactPresenter;

    invoke-virtual {p1}, Lcom/maishapay/presenter/ContactPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    check-cast p1, Lcom/maishapay/view/ContactView;

    invoke-interface {p1}, Lcom/maishapay/view/ContactView;->finishToSend()V

    :cond_2
    :goto_1
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

    invoke-virtual {p0, p1}, Lcom/maishapay/presenter/ContactPresenter$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
