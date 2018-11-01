.class Lcom/maishapay/ui/activities/PaiementActivity$1$1;
.super Ljava/lang/Object;
.source "PaiementActivity.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/PaiementActivity$1;->clicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maishapay/ui/activities/PaiementActivity$1;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/PaiementActivity$1;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/maishapay/ui/activities/PaiementActivity$1$1;->this$1:Lcom/maishapay/ui/activities/PaiementActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 66
    iget-object p1, p0, Lcom/maishapay/ui/activities/PaiementActivity$1$1;->this$1:Lcom/maishapay/ui/activities/PaiementActivity$1;

    iget-object p1, p1, Lcom/maishapay/ui/activities/PaiementActivity$1;->this$0:Lcom/maishapay/ui/activities/PaiementActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/maishapay/ui/activities/PaiementActivity$1$1;->this$1:Lcom/maishapay/ui/activities/PaiementActivity$1;

    iget-object p3, p3, Lcom/maishapay/ui/activities/PaiementActivity$1;->this$0:Lcom/maishapay/ui/activities/PaiementActivity;

    const-class p4, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/maishapay/ui/activities/PaiementActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/maishapay/ui/activities/PaiementActivity$1$1;->this$1:Lcom/maishapay/ui/activities/PaiementActivity$1;

    iget-object p1, p1, Lcom/maishapay/ui/activities/PaiementActivity$1;->this$0:Lcom/maishapay/ui/activities/PaiementActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/maishapay/ui/activities/PaiementActivity$1$1;->this$1:Lcom/maishapay/ui/activities/PaiementActivity$1;

    iget-object p3, p3, Lcom/maishapay/ui/activities/PaiementActivity$1;->this$0:Lcom/maishapay/ui/activities/PaiementActivity;

    const-class p4, Lcom/maishapay/ui/activities/TransfertCompteActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/maishapay/ui/activities/PaiementActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
