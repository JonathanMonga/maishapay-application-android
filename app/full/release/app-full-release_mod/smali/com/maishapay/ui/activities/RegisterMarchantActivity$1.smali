.class Lcom/maishapay/ui/activities/RegisterMarchantActivity$1;
.super Ljava/lang/Object;
.source "RegisterMarchantActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/RegisterMarchantActivity;->showNetworkError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/RegisterMarchantActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/RegisterMarchantActivity;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/maishapay/ui/activities/RegisterMarchantActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterMarchantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 193
    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterMarchantActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterMarchantActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maishapay/ui/activities/RegisterMarchantActivity;->enabledControls(Z)V

    .line 194
    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterMarchantActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterMarchantActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/RegisterMarchantActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/maishapay/presenter/RegisterMarchantPresenter;

    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterMarchantActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterMarchantActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/RegisterMarchantActivity;->nomEditText:Landroid/widget/EditText;

    .line 195
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterMarchantActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterMarchantActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/RegisterMarchantActivity;->prenomEditText:Landroid/widget/EditText;

    .line 196
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterMarchantActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterMarchantActivity;

    .line 197
    invoke-static {p1}, Lcom/maishapay/ui/activities/RegisterMarchantActivity;->access$000(Lcom/maishapay/ui/activities/RegisterMarchantActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterMarchantActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterMarchantActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/RegisterMarchantActivity;->emailditText:Landroid/widget/EditText;

    .line 198
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterMarchantActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterMarchantActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/RegisterMarchantActivity;->villeEditText:Landroid/widget/EditText;

    .line 199
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterMarchantActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterMarchantActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/RegisterMarchantActivity;->adresseEditText:Landroid/widget/EditText;

    .line 200
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterMarchantActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterMarchantActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/RegisterMarchantActivity;->codePin1EditText:Landroid/widget/EditText;

    .line 201
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 194
    invoke-virtual/range {v0 .. v7}, Lcom/maishapay/presenter/RegisterMarchantPresenter;->inscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
