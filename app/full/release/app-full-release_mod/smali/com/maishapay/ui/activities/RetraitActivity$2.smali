.class Lcom/maishapay/ui/activities/RetraitActivity$2;
.super Ljava/lang/Object;
.source "RetraitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/RetraitActivity;->showNetworkError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/RetraitActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/RetraitActivity;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/maishapay/ui/activities/RetraitActivity$2;->this$0:Lcom/maishapay/ui/activities/RetraitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 172
    iget-object p1, p0, Lcom/maishapay/ui/activities/RetraitActivity$2;->this$0:Lcom/maishapay/ui/activities/RetraitActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maishapay/ui/activities/RetraitActivity;->enabledControls(Z)V

    .line 173
    iget-object p1, p0, Lcom/maishapay/ui/activities/RetraitActivity$2;->this$0:Lcom/maishapay/ui/activities/RetraitActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/RetraitActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    check-cast p1, Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    iget-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity$2;->this$0:Lcom/maishapay/ui/activities/RetraitActivity;

    invoke-static {v0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/maishapay/ui/activities/RetraitActivity$2;->this$0:Lcom/maishapay/ui/activities/RetraitActivity;

    iget-object v1, v1, Lcom/maishapay/ui/activities/RetraitActivity;->ET_Destinataire:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/maishapay/ui/activities/RetraitActivity$2;->this$0:Lcom/maishapay/ui/activities/RetraitActivity;

    iget-object v2, v2, Lcom/maishapay/ui/activities/RetraitActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {v2}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/maishapay/ui/activities/RetraitActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->retrait(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
