.class public Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ConversionActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/activities/ConversionActivity;

.field private view7f090004:Landroid/view/View;

.field private view7f090025:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/activities/ConversionActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 26
    invoke-virtual {p1}, Lcom/maishapay/ui/activities/ConversionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;-><init>(Lcom/maishapay/ui/activities/ConversionActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/maishapay/ui/activities/ConversionActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/ConversionActivity;

    const-string v0, "field \'toolbar\'"

    .line 34
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f090264

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/maishapay/ui/activities/ConversionActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'SP_TypeEnvoi\'"

    .line 35
    const-class v1, Landroid/widget/Spinner;

    const v2, 0x7f090074

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/maishapay/ui/activities/ConversionActivity;->SP_TypeEnvoi:Landroid/widget/Spinner;

    const-string v0, "field \'ET_Montant\' and method \'ET_MontantClicked\'"

    const v1, 0x7f090025

    .line 36
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'ET_Montant\'"

    .line 37
    const-class v3, Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fabiomsr/moneytextview/MoneyTextView;

    iput-object v1, p1, Lcom/maishapay/ui/activities/ConversionActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    .line 38
    iput-object v0, p0, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;->view7f090025:Landroid/view/View;

    .line 39
    new-instance v1, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding$1;-><init>(Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;Lcom/maishapay/ui/activities/ConversionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'TV_Taux\'"

    .line 45
    const-class v1, Lorg/fabiomsr/moneytextview/MoneyTextView;

    const v2, 0x7f090081

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fabiomsr/moneytextview/MoneyTextView;

    iput-object v0, p1, Lcom/maishapay/ui/activities/ConversionActivity;->TV_Taux:Lorg/fabiomsr/moneytextview/MoneyTextView;

    const-string v0, "method \'BTN_ConversionClicked\'"

    const v1, 0x7f090004

    .line 46
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 47
    iput-object p2, p0, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;->view7f090004:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding$2;-><init>(Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;Lcom/maishapay/ui/activities/ConversionActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/ConversionActivity;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/ConversionActivity;

    .line 63
    iput-object v1, v0, Lcom/maishapay/ui/activities/ConversionActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 64
    iput-object v1, v0, Lcom/maishapay/ui/activities/ConversionActivity;->SP_TypeEnvoi:Landroid/widget/Spinner;

    .line 65
    iput-object v1, v0, Lcom/maishapay/ui/activities/ConversionActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    .line 66
    iput-object v1, v0, Lcom/maishapay/ui/activities/ConversionActivity;->TV_Taux:Lorg/fabiomsr/moneytextview/MoneyTextView;

    .line 68
    iget-object v0, p0, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;->view7f090025:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;->view7f090025:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;->view7f090004:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lcom/maishapay/ui/activities/ConversionActivity_ViewBinding;->view7f090004:Landroid/view/View;

    return-void
.end method
