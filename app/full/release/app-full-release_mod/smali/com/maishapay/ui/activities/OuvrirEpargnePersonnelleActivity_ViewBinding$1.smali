.class Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "OuvrirEpargnePersonnelleActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity_ViewBinding;-><init>(Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity_ViewBinding;

.field final synthetic val$target:Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity_ViewBinding;Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity_ViewBinding$1;->this$0:Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity_ViewBinding;

    iput-object p2, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity_ViewBinding$1;->val$target:Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity_ViewBinding$1;->val$target:Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->ET_DateClicked()V

    return-void
.end method
