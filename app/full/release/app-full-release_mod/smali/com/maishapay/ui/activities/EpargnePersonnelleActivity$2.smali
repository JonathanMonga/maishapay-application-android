.class Lcom/maishapay/ui/activities/EpargnePersonnelleActivity$2;
.super Ljava/lang/Object;
.source "EpargnePersonnelleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->showNetworkError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity$2;->this$0:Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 167
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity$2;->this$0:Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->enabledControls(Z)V

    .line 168
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity$2;->this$0:Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    check-cast p1, Lcom/maishapay/presenter/EpargnePersonellePresenter;

    const-string v0, ""

    iget-object v1, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity$2;->this$0:Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;

    invoke-static {v1}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity$2;->this$0:Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;

    iget-object v3, v3, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {v3}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/maishapay/presenter/EpargnePersonellePresenter;->transfertEpargnePersonelle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
