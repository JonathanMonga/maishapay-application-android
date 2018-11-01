.class Lcom/maishapay/ui/activities/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/LoginActivity;->clickCriarConta()V
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

    .line 114
    iput-object p1, p0, Lcom/maishapay/ui/activities/LoginActivity$1;->this$0:Lcom/maishapay/ui/activities/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 124
    iget-object p1, p0, Lcom/maishapay/ui/activities/LoginActivity$1;->this$0:Lcom/maishapay/ui/activities/LoginActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/maishapay/ui/activities/LoginActivity$1;->this$0:Lcom/maishapay/ui/activities/LoginActivity;

    const-class p4, Lcom/maishapay/ui/activities/RegisterMarchantActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Lcom/maishapay/ui/activities/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/maishapay/ui/activities/LoginActivity$1;->this$0:Lcom/maishapay/ui/activities/LoginActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/maishapay/ui/activities/LoginActivity$1;->this$0:Lcom/maishapay/ui/activities/LoginActivity;

    const-class p4, Lcom/maishapay/ui/activities/RegisterNormalActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/maishapay/ui/activities/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
