.class public Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RetraitActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/activities/RetraitActivity;

.field private view7f09000a:Landroid/view/View;

.field private view7f090025:Landroid/view/View;

.field private view7f090209:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/activities/RetraitActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/maishapay/ui/activities/RetraitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;-><init>(Lcom/maishapay/ui/activities/RetraitActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/maishapay/ui/activities/RetraitActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/RetraitActivity;

    const-string v0, "field \'toolbar\'"

    .line 37
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f090264

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/maishapay/ui/activities/RetraitActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'SP_TypeEnvoi\'"

    .line 38
    const-class v1, Landroid/widget/Spinner;

    const v2, 0x7f090074

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/maishapay/ui/activities/RetraitActivity;->SP_TypeEnvoi:Landroid/widget/Spinner;

    const-string v0, "field \'ET_Montant\' and method \'ET_MontantClicked\'"

    const v1, 0x7f090025

    .line 39
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'ET_Montant\'"

    .line 40
    const-class v3, Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fabiomsr/moneytextview/MoneyTextView;

    iput-object v1, p1, Lcom/maishapay/ui/activities/RetraitActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    .line 41
    iput-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;->view7f090025:Landroid/view/View;

    .line 42
    new-instance v1, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding$1;-><init>(Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;Lcom/maishapay/ui/activities/RetraitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'ET_Destinataire\'"

    .line 48
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f09001d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/RetraitActivity;->ET_Destinataire:Landroid/widget/EditText;

    const-string v0, "method \'qrCodeClicked\'"

    const v1, 0x7f090209

    .line 49
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;->view7f090209:Landroid/view/View;

    .line 51
    new-instance v1, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding$2;-><init>(Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;Lcom/maishapay/ui/activities/RetraitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'transfertClicked\'"

    const v1, 0x7f09000a

    .line 57
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 58
    iput-object p2, p0, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;->view7f09000a:Landroid/view/View;

    .line 59
    new-instance v0, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding$3;-><init>(Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;Lcom/maishapay/ui/activities/RetraitActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/RetraitActivity;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/RetraitActivity;

    .line 74
    iput-object v1, v0, Lcom/maishapay/ui/activities/RetraitActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 75
    iput-object v1, v0, Lcom/maishapay/ui/activities/RetraitActivity;->SP_TypeEnvoi:Landroid/widget/Spinner;

    .line 76
    iput-object v1, v0, Lcom/maishapay/ui/activities/RetraitActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    .line 77
    iput-object v1, v0, Lcom/maishapay/ui/activities/RetraitActivity;->ET_Destinataire:Landroid/widget/EditText;

    .line 79
    iget-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;->view7f090025:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v1, p0, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;->view7f090025:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;->view7f090209:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iput-object v1, p0, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;->view7f090209:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;->view7f09000a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iput-object v1, p0, Lcom/maishapay/ui/activities/RetraitActivity_ViewBinding;->view7f09000a:Landroid/view/View;

    return-void
.end method
