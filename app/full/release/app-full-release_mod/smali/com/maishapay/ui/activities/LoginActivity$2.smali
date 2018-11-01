.class Lcom/maishapay/ui/activities/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/LoginActivity;->showNetworkLoginError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/LoginActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/LoginActivity;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/maishapay/ui/activities/LoginActivity$2;->this$0:Lcom/maishapay/ui/activities/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 239
    iget-object p1, p0, Lcom/maishapay/ui/activities/LoginActivity$2;->this$0:Lcom/maishapay/ui/activities/LoginActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maishapay/ui/activities/LoginActivity;->enabledControls(Z)V

    .line 240
    iget-object p1, p0, Lcom/maishapay/ui/activities/LoginActivity$2;->this$0:Lcom/maishapay/ui/activities/LoginActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/LoginActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    check-cast p1, Lcom/maishapay/presenter/LoginPresenter;

    invoke-static {}, Lcom/maishapay/ui/activities/LoginActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/maishapay/ui/activities/LoginActivity$2;->this$0:Lcom/maishapay/ui/activities/LoginActivity;

    iget-object v1, v1, Lcom/maishapay/ui/activities/LoginActivity;->codePinEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/maishapay/presenter/LoginPresenter;->login(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
