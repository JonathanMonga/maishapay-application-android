.class public Lcom/maishapay/ui/dialog/DialogForgotFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "DialogForgotFragment.java"


# static fields
.field private static final EXTRA_TELEPHONE:Ljava/lang/String; = "telephone"


# instance fields
.field private buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonListener;

.field cancelButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090009
    .end annotation
.end field

.field editText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090021
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

    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method private hideSoftKeyboed(Landroid/view/View;)V
    .locals 2

    .line 77
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/maishapay/app/MaishapayApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/maishapay/ui/dialog/DialogForgotFragment;
    .locals 3

    .line 33
    new-instance v0, Lcom/maishapay/ui/dialog/DialogForgotFragment;

    invoke-direct {v0}, Lcom/maishapay/ui/dialog/DialogForgotFragment;-><init>()V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "telephone"

    .line 35
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/maishapay/ui/dialog/DialogForgotFragment;->setArguments(Landroid/os/Bundle;)V

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

    .line 66
    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogForgotFragment;->dismiss()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 44
    instance-of v0, p1, Lcom/maishapay/ui/dialog/PossitiveButtonListener;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Lcom/maishapay/ui/dialog/PossitiveButtonListener;

    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogForgotFragment;->buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonListener;

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

    const p3, 0x7f0b0044

    .line 51
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogForgotFragment;->view:Landroid/view/View;

    .line 52
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogForgotFragment;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 53
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogForgotFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogForgotFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/dialog/DialogForgotFragment;->setCancelable(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogForgotFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x200

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public postiveButton()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09000b
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogForgotFragment;->buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonListener;

    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogForgotFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "telephone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/maishapay/ui/dialog/DialogForgotFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/maishapay/ui/dialog/PossitiveButtonListener;->positiveClicked(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogForgotFragment;->view:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/maishapay/ui/dialog/DialogForgotFragment;->hideSoftKeyboed(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogForgotFragment;->dismiss()V

    return-void
.end method
