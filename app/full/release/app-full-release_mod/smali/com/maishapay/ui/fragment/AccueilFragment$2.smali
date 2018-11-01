.class Lcom/maishapay/ui/fragment/AccueilFragment$2;
.super Ljava/lang/Object;
.source "AccueilFragment.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/fragment/AccueilFragment;->transfertClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/fragment/AccueilFragment;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/fragment/AccueilFragment;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment$2;->this$0:Lcom/maishapay/ui/fragment/AccueilFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    packed-switch p3, :pswitch_data_0

    .line 261
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment$2;->this$0:Lcom/maishapay/ui/fragment/AccueilFragment;

    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p3

    const-class p4, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/maishapay/ui/fragment/AccueilFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 256
    :pswitch_0
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment$2;->this$0:Lcom/maishapay/ui/fragment/AccueilFragment;

    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p3

    const-class p4, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/maishapay/ui/fragment/AccueilFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment$2;->this$0:Lcom/maishapay/ui/fragment/AccueilFragment;

    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p3

    const-class p4, Lcom/maishapay/ui/activities/TransfertCompteActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/maishapay/ui/fragment/AccueilFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
