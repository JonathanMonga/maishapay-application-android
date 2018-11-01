.class Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$2;
.super Ljava/lang/Object;
.source "OuvrirEpargnePersonnelleActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 132
    iput-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$2;->this$0:Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$2;->this$0:Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->BTN_Valider:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
