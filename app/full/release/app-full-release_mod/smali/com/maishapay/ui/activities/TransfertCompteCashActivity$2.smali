.class Lcom/maishapay/ui/activities/TransfertCompteCashActivity$2;
.super Ljava/lang/Object;
.source "TransfertCompteCashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->showNetworkError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/TransfertCompteCashActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/TransfertCompteCashActivity;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity$2;->this$0:Lcom/maishapay/ui/activities/TransfertCompteCashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 177
    iget-object p1, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity$2;->this$0:Lcom/maishapay/ui/activities/TransfertCompteCashActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->enabledControls(Z)V

    .line 178
    iget-object p1, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity$2;->this$0:Lcom/maishapay/ui/activities/TransfertCompteCashActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    check-cast p1, Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    iget-object v0, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity$2;->this$0:Lcom/maishapay/ui/activities/TransfertCompteCashActivity;

    invoke-static {v0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity$2;->this$0:Lcom/maishapay/ui/activities/TransfertCompteCashActivity;

    iget-object v1, v1, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->ET_Destinataire:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity$2;->this$0:Lcom/maishapay/ui/activities/TransfertCompteCashActivity;

    iget-object v3, v3, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {v3}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->transfert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
