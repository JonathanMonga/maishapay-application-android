.class public Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LoginActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/activities/LoginActivity;

.field private view7f090005:Landroid/view/View;

.field private view7f090007:Landroid/view/View;

.field private view7f090008:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/activities/LoginActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/maishapay/ui/activities/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;-><init>(Lcom/maishapay/ui/activities/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/maishapay/ui/activities/LoginActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/LoginActivity;

    const-string v0, "field \'textInputTelephone\'"

    .line 37
    const-class v1, Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f09025e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p1, Lcom/maishapay/ui/activities/LoginActivity;->textInputTelephone:Landroid/support/design/widget/TextInputLayout;

    const-string v0, "field \'textInputCodePin\'"

    .line 38
    const-class v1, Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f09025d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p1, Lcom/maishapay/ui/activities/LoginActivity;->textInputCodePin:Landroid/support/design/widget/TextInputLayout;

    const-string v0, "field \'phoneEditText\'"

    .line 39
    const-class v1, Lcom/santalu/widget/MaskEditText;

    const v2, 0x7f09002e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santalu/widget/MaskEditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/LoginActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    const-string v0, "field \'countryCodePicker\'"

    .line 40
    const-class v1, Lcom/hbb20/CountryCodePicker;

    const v2, 0x7f090018

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/CountryCodePicker;

    iput-object v0, p1, Lcom/maishapay/ui/activities/LoginActivity;->countryCodePicker:Lcom/hbb20/CountryCodePicker;

    const-string v0, "field \'codePinEditText\'"

    .line 41
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f09001b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/LoginActivity;->codePinEditText:Landroid/widget/EditText;

    const-string v0, "method \'clickLogin\'"

    const v1, 0x7f090008

    .line 42
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;->view7f090008:Landroid/view/View;

    .line 44
    new-instance v1, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding$1;-><init>(Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;Lcom/maishapay/ui/activities/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'clickCriarConta\'"

    const v1, 0x7f090005

    .line 50
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;->view7f090005:Landroid/view/View;

    .line 52
    new-instance v1, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding$2;-><init>(Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;Lcom/maishapay/ui/activities/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'clickForgot\'"

    const v1, 0x7f090007

    .line 58
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 59
    iput-object p2, p0, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;->view7f090007:Landroid/view/View;

    .line 60
    new-instance v0, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding$3;-><init>(Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;Lcom/maishapay/ui/activities/LoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/LoginActivity;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/LoginActivity;

    .line 75
    iput-object v1, v0, Lcom/maishapay/ui/activities/LoginActivity;->textInputTelephone:Landroid/support/design/widget/TextInputLayout;

    .line 76
    iput-object v1, v0, Lcom/maishapay/ui/activities/LoginActivity;->textInputCodePin:Landroid/support/design/widget/TextInputLayout;

    .line 77
    iput-object v1, v0, Lcom/maishapay/ui/activities/LoginActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    .line 78
    iput-object v1, v0, Lcom/maishapay/ui/activities/LoginActivity;->countryCodePicker:Lcom/hbb20/CountryCodePicker;

    .line 79
    iput-object v1, v0, Lcom/maishapay/ui/activities/LoginActivity;->codePinEditText:Landroid/widget/EditText;

    .line 81
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;->view7f090008:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iput-object v1, p0, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;->view7f090008:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;->view7f090005:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iput-object v1, p0, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;->view7f090005:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;->view7f090007:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v1, p0, Lcom/maishapay/ui/activities/LoginActivity_ViewBinding;->view7f090007:Landroid/view/View;

    return-void
.end method
