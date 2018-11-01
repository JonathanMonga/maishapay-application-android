.class Lcom/maishapay/ui/activities/UpdateProfilActivity$1;
.super Ljava/lang/Object;
.source "UpdateProfilActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/UpdateProfilActivity;->showNetworkError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/UpdateProfilActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/UpdateProfilActivity;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity$1;->this$0:Lcom/maishapay/ui/activities/UpdateProfilActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 166
    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity$1;->this$0:Lcom/maishapay/ui/activities/UpdateProfilActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->enabledControls(Z)V

    .line 167
    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity$1;->this$0:Lcom/maishapay/ui/activities/UpdateProfilActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/maishapay/presenter/UpdateProfilePresenter;

    iget-object v1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity$1;->this$0:Lcom/maishapay/ui/activities/UpdateProfilActivity;

    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity$1;->this$0:Lcom/maishapay/ui/activities/UpdateProfilActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/UpdateProfilActivity;->nomEditText:Landroid/widget/EditText;

    .line 169
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity$1;->this$0:Lcom/maishapay/ui/activities/UpdateProfilActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/UpdateProfilActivity;->prenomEditText:Landroid/widget/EditText;

    .line 170
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity$1;->this$0:Lcom/maishapay/ui/activities/UpdateProfilActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/UpdateProfilActivity;->phoneEditText:Landroid/widget/EditText;

    .line 171
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity$1;->this$0:Lcom/maishapay/ui/activities/UpdateProfilActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/UpdateProfilActivity;->emailEditText:Landroid/widget/EditText;

    .line 172
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity$1;->this$0:Lcom/maishapay/ui/activities/UpdateProfilActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/UpdateProfilActivity;->adresseEditText:Landroid/widget/EditText;

    .line 173
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity$1;->this$0:Lcom/maishapay/ui/activities/UpdateProfilActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/UpdateProfilActivity;->villeEditText:Landroid/widget/EditText;

    .line 174
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-static {}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->access$000()Ljava/lang/String;

    move-result-object v8

    .line 167
    invoke-virtual/range {v0 .. v8}, Lcom/maishapay/presenter/UpdateProfilePresenter;->updateProfile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
