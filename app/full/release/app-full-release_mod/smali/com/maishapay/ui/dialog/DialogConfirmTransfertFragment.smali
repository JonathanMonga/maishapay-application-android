.class public Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "DialogConfirmTransfertFragment.java"


# static fields
.field private static final EXTRA_NOM:Ljava/lang/String; = "nom"

.field private static final EXTRA_PRENOM:Ljava/lang/String; = "prenom"


# instance fields
.field private buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

.field cancelButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090009
    .end annotation
.end field

.field editText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090019
    .end annotation
.end field

.field textView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090080
    .end annotation
.end field

.field private view:Landroid/view/View;

.field yesButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09000b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method private hideSoftKeyboed(Landroid/view/View;)V
    .locals 2

    .line 81
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/maishapay/app/MaishapayApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;
    .locals 3

    .line 36
    new-instance v0, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;

    invoke-direct {v0}, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "prenom"

    .line 38
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "nom"

    .line 39
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public negativeButton()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090009
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->dismiss()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 48
    instance-of v0, p1, Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const p3, 0x7f0b0042

    .line 55
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->view:Landroid/view/View;

    .line 56
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 57
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->textView:Landroid/widget/TextView;

    const-string p2, "Saisisez votre code PIN pour envoyer l\'argent \u00e0 %s %s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "prenom"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "nom"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 65
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->setCancelable(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x200

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public positiveButton()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09000b
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

    iget-object v1, p0, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;->positiveClicked(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->view:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->hideSoftKeyboed(Landroid/view/View;)V

    return-void
.end method
