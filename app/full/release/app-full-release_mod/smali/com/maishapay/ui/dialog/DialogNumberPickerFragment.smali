.class public Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "DialogNumberPickerFragment.java"


# static fields
.field private static final EXTRA_DEVISE:Ljava/lang/String; = "device"

.field private static number:Ljava/lang/String;


# instance fields
.field ET_Device:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09001e
    .end annotation
.end field

.field private buttonListener:Lcom/maishapay/ui/dialog/NumPadPossitiveButtonListener;

.field moneyTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090025
    .end annotation
.end field

.field num:Lcom/fxn769/Numpad;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901c1
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

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    sput-object p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->number:Ljava/lang/String;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;
    .locals 3

    .line 37
    new-instance v0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;

    invoke-direct {v0}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "device"

    .line 39
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 48
    instance-of v0, p1, Lcom/maishapay/ui/dialog/NumPadPossitiveButtonListener;

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Lcom/maishapay/ui/dialog/NumPadPossitiveButtonListener;

    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->buttonListener:Lcom/maishapay/ui/dialog/NumPadPossitiveButtonListener;

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

    const p3, 0x7f0b0045

    .line 55
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->view:Landroid/view/View;

    .line 56
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 57
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->view:Landroid/view/View;

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

    .line 62
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->setCancelable(Z)V

    .line 65
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->ET_Device:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->num:Lcom/fxn769/Numpad;

    new-instance p2, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment$1;

    invoke-direct {p2, p0}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment$1;-><init>(Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;)V

    invoke-virtual {p1, p2}, Lcom/fxn769/Numpad;->setOnTextChangeListner(Lcom/fxn769/TextGetListner;)Lcom/fxn769/Numpad;

    return-void
.end method

.method public postiveButton()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09000b
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->buttonListener:Lcom/maishapay/ui/dialog/NumPadPossitiveButtonListener;

    sget-object v1, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->number:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/maishapay/ui/dialog/NumPadPossitiveButtonListener;->numPadPositiveClicked(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->dismiss()V

    return-void
.end method
