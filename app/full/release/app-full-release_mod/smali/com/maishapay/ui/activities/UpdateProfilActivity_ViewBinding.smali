.class public Lcom/maishapay/ui/activities/UpdateProfilActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UpdateProfilActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/activities/UpdateProfilActivity;

.field private view7f090005:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/activities/UpdateProfilActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 23
    invoke-virtual {p1}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/maishapay/ui/activities/UpdateProfilActivity_ViewBinding;-><init>(Lcom/maishapay/ui/activities/UpdateProfilActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/maishapay/ui/activities/UpdateProfilActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/UpdateProfilActivity;

    const-string v0, "field \'phoneEditText\'"

    .line 31
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090029

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/UpdateProfilActivity;->phoneEditText:Landroid/widget/EditText;

    const-string v0, "field \'emailEditText\'"

    .line 32
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090021

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/UpdateProfilActivity;->emailEditText:Landroid/widget/EditText;

    const-string v0, "field \'nomEditText\'"

    .line 33
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f09002c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/UpdateProfilActivity;->nomEditText:Landroid/widget/EditText;

    const-string v0, "field \'prenomEditText\'"

    .line 34
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090027

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/UpdateProfilActivity;->prenomEditText:Landroid/widget/EditText;

    const-string v0, "field \'villeEditText\'"

    .line 35
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f09002f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/UpdateProfilActivity;->villeEditText:Landroid/widget/EditText;

    const-string v0, "field \'adresseEditText\'"

    .line 36
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090016

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/activities/UpdateProfilActivity;->adresseEditText:Landroid/widget/EditText;

    const-string v0, "field \'toolbar\'"

    .line 37
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f090264

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/maishapay/ui/activities/UpdateProfilActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "method \'clickCriarConta\'"

    const v1, 0x7f090005

    .line 38
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity_ViewBinding;->view7f090005:Landroid/view/View;

    .line 40
    new-instance v0, Lcom/maishapay/ui/activities/UpdateProfilActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/maishapay/ui/activities/UpdateProfilActivity_ViewBinding$1;-><init>(Lcom/maishapay/ui/activities/UpdateProfilActivity_ViewBinding;Lcom/maishapay/ui/activities/UpdateProfilActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/UpdateProfilActivity;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/UpdateProfilActivity;

    .line 55
    iput-object v1, v0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->phoneEditText:Landroid/widget/EditText;

    .line 56
    iput-object v1, v0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->emailEditText:Landroid/widget/EditText;

    .line 57
    iput-object v1, v0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->nomEditText:Landroid/widget/EditText;

    .line 58
    iput-object v1, v0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->prenomEditText:Landroid/widget/EditText;

    .line 59
    iput-object v1, v0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->villeEditText:Landroid/widget/EditText;

    .line 60
    iput-object v1, v0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->adresseEditText:Landroid/widget/EditText;

    .line 61
    iput-object v1, v0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 63
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity_ViewBinding;->view7f090005:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity_ViewBinding;->view7f090005:Landroid/view/View;

    return-void
.end method
