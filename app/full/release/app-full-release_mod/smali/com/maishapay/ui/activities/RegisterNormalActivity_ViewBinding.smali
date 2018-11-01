.class public Lcom/maishapay/ui/activities/RegisterNormalActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RegisterNormalActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/activities/RegisterNormalActivity;

.field private view7f090005:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/activities/RegisterNormalActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 25
    invoke-virtual {p1}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/maishapay/ui/activities/RegisterNormalActivity_ViewBinding;-><init>(Lcom/maishapay/ui/activities/RegisterNormalActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/maishapay/ui/activities/RegisterNormalActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/RegisterNormalActivity;

    const-string v0, "field \'emailditText\'"

    .line 33
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090021

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/RegisterNormalActivity;->emailditText:Landroid/widget/EditText;

    const-string v0, "field \'nomEditText\'"

    .line 34
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f09002c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/RegisterNormalActivity;->nomEditText:Landroid/widget/EditText;

    const-string v0, "field \'prenomEditText\'"

    .line 35
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090027

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/RegisterNormalActivity;->prenomEditText:Landroid/widget/EditText;

    const-string v0, "field \'villeEditText\'"

    .line 36
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f09002f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/RegisterNormalActivity;->villeEditText:Landroid/widget/EditText;

    const-string v0, "field \'adresseEditText\'"

    .line 37
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090016

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/RegisterNormalActivity;->adresseEditText:Landroid/widget/EditText;

    const-string v0, "field \'codePin1EditText\'"

    .line 38
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f09002b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/RegisterNormalActivity;->codePin1EditText:Landroid/widget/EditText;

    const-string v0, "field \'codePin2EditText\'"

    .line 39
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f09002a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/RegisterNormalActivity;->codePin2EditText:Landroid/widget/EditText;

    const-string v0, "field \'toolbar\'"

    .line 40
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f090264

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/maishapay/ui/activities/RegisterNormalActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'phoneEditText\'"

    .line 41
    const-class v1, Lcom/santalu/widget/MaskEditText;

    const v2, 0x7f090029

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santalu/widget/MaskEditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/RegisterNormalActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    const-string v0, "field \'countryCodePicker\'"

    .line 42
    const-class v1, Lcom/hbb20/CountryCodePicker;

    const v2, 0x7f090018

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/CountryCodePicker;

    iput-object v0, p1, Lcom/maishapay/ui/activities/RegisterNormalActivity;->countryCodePicker:Lcom/hbb20/CountryCodePicker;

    const-string v0, "method \'clickCriarConta\'"

    const v1, 0x7f090005

    .line 43
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity_ViewBinding;->view7f090005:Landroid/view/View;

    .line 45
    new-instance v0, Lcom/maishapay/ui/activities/RegisterNormalActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/maishapay/ui/activities/RegisterNormalActivity_ViewBinding$1;-><init>(Lcom/maishapay/ui/activities/RegisterNormalActivity_ViewBinding;Lcom/maishapay/ui/activities/RegisterNormalActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/RegisterNormalActivity;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/RegisterNormalActivity;

    .line 60
    iput-object v1, v0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->emailditText:Landroid/widget/EditText;

    .line 61
    iput-object v1, v0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->nomEditText:Landroid/widget/EditText;

    .line 62
    iput-object v1, v0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->prenomEditText:Landroid/widget/EditText;

    .line 63
    iput-object v1, v0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->villeEditText:Landroid/widget/EditText;

    .line 64
    iput-object v1, v0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->adresseEditText:Landroid/widget/EditText;

    .line 65
    iput-object v1, v0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->codePin1EditText:Landroid/widget/EditText;

    .line 66
    iput-object v1, v0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->codePin2EditText:Landroid/widget/EditText;

    .line 67
    iput-object v1, v0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 68
    iput-object v1, v0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    .line 69
    iput-object v1, v0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->countryCodePicker:Lcom/hbb20/CountryCodePicker;

    .line 71
    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity_ViewBinding;->view7f090005:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity_ViewBinding;->view7f090005:Landroid/view/View;

    return-void
.end method
