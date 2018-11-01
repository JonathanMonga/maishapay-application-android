.class Lcom/maishapay/ui/fragment/ContactFragment$1;
.super Ljava/lang/Object;
.source "ContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/fragment/ContactFragment;->showNetworkError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/fragment/ContactFragment;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/fragment/ContactFragment;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/maishapay/ui/fragment/ContactFragment$1;->this$0:Lcom/maishapay/ui/fragment/ContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 57
    iget-object p1, p0, Lcom/maishapay/ui/fragment/ContactFragment$1;->this$0:Lcom/maishapay/ui/fragment/ContactFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maishapay/ui/fragment/ContactFragment;->enabledControls(Z)V

    .line 58
    iget-object p1, p0, Lcom/maishapay/ui/fragment/ContactFragment$1;->this$0:Lcom/maishapay/ui/fragment/ContactFragment;

    invoke-virtual {p1}, Lcom/maishapay/ui/fragment/ContactFragment;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    check-cast p1, Lcom/maishapay/presenter/ContactPresenter;

    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/maishapay/ui/fragment/ContactFragment$1;->this$0:Lcom/maishapay/ui/fragment/ContactFragment;

    iget-object v1, v1, Lcom/maishapay/ui/fragment/ContactFragment;->ET_Assunto:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/maishapay/ui/fragment/ContactFragment$1;->this$0:Lcom/maishapay/ui/fragment/ContactFragment;

    iget-object v2, v2, Lcom/maishapay/ui/fragment/ContactFragment;->ET_Mensagem:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/maishapay/presenter/ContactPresenter;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
