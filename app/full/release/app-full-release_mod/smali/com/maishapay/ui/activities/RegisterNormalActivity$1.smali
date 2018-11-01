.class Lcom/maishapay/ui/activities/RegisterNormalActivity$1;
.super Ljava/lang/Object;
.source "RegisterNormalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/RegisterNormalActivity;->showNetworkError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/RegisterNormalActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/RegisterNormalActivity;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterNormalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 193
    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterNormalActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->enabledControls(Z)V

    .line 194
    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterNormalActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/maishapay/presenter/RegisterNormalPresenter;

    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterNormalActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/RegisterNormalActivity;->nomEditText:Landroid/widget/EditText;

    .line 195
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterNormalActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/RegisterNormalActivity;->prenomEditText:Landroid/widget/EditText;

    .line 196
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterNormalActivity;

    .line 197
    invoke-static {p1}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->access$000(Lcom/maishapay/ui/activities/RegisterNormalActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterNormalActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/RegisterNormalActivity;->emailditText:Landroid/widget/EditText;

    .line 198
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterNormalActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/RegisterNormalActivity;->adresseEditText:Landroid/widget/EditText;

    .line 199
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterNormalActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/RegisterNormalActivity;->villeEditText:Landroid/widget/EditText;

    .line 200
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity$1;->this$0:Lcom/maishapay/ui/activities/RegisterNormalActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/RegisterNormalActivity;->codePin1EditText:Landroid/widget/EditText;

    .line 201
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 194
    invoke-virtual/range {v0 .. v7}, Lcom/maishapay/presenter/RegisterNormalPresenter;->inscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
