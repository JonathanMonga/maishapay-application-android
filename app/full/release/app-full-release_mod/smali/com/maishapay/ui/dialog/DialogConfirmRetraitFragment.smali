.class public Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "DialogConfirmRetraitFragment.java"


# static fields
.field private static final EXTRA_MSG:Ljava/lang/String; = "msg"


# instance fields
.field TV_Msg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090080
    .end annotation
.end field

.field private buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

.field editText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090019
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
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

.method public static newInstance(Ljava/lang/String;)Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;
    .locals 3

    .line 33
    new-instance v0, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;

    invoke-direct {v0}, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;-><init>()V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "msg"

    .line 35
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->setArguments(Landroid/os/Bundle;)V

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

    .line 67
    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->dismiss()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 44
    instance-of v0, p1, Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

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

    .line 51
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->view:Landroid/view/View;

    .line 52
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 53
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->TV_Msg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "msg"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->setCancelable(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->getDialog()Landroid/app/Dialog;

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

    .line 72
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

    iget-object v1, p0, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;->positiveClicked(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->view:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->hideSoftKeyboed(Landroid/view/View;)V

    return-void
.end method
