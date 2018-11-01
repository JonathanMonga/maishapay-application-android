.class Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$3;
.super Ljava/lang/Object;
.source "OuvrirEpargnePersonnelleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->showNetworkError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$3;->this$0:Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 210
    iget-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$3;->this$0:Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->enabledControls(Z)V

    .line 211
    iget-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$3;->this$0:Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;

    invoke-virtual {p1, v0}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->enabledControls(Z)V

    .line 212
    iget-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$3;->this$0:Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    check-cast p1, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;

    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$3;->this$0:Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;

    invoke-static {v1}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->access$600(Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$3;->this$0:Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;

    invoke-static {v2}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->access$100(Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$3;->this$0:Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;

    iget-object v3, v3, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->ET_CodeSecret:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;->ouvrirEpargne(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
