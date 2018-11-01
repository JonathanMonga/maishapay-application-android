.class public Lcom/maishapay/ui/dialog/DialogConversionFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "DialogConversionFragment.java"


# static fields
.field private static final EXTRA_DEVISE:Ljava/lang/String; = "devise"

.field private static final EXTRA_MONTANT:Ljava/lang/String; = "montant"


# instance fields
.field TV_Conversion:Lorg/fabiomsr/moneytextview/MoneyTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007a
    .end annotation
.end field

.field private buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonListener;

.field private view:Landroid/view/View;

.field yesButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09000b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/maishapay/ui/dialog/DialogConversionFragment;
    .locals 3

    .line 32
    new-instance v0, Lcom/maishapay/ui/dialog/DialogConversionFragment;

    invoke-direct {v0}, Lcom/maishapay/ui/dialog/DialogConversionFragment;-><init>()V

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "montant"

    .line 34
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "devise"

    .line 35
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/maishapay/ui/dialog/DialogConversionFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 44
    instance-of v0, p1, Lcom/maishapay/ui/dialog/PossitiveButtonListener;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Lcom/maishapay/ui/dialog/PossitiveButtonListener;

    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogConversionFragment;->buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonListener;

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

    const p3, 0x7f0b0043

    .line 51
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogConversionFragment;->view:Landroid/view/View;

    .line 52
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConversionFragment;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 53
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConversionFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/dialog/DialogConversionFragment;->setCancelable(Z)V

    .line 60
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConversionFragment;->TV_Conversion:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogConversionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "montant"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogConversionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "devise"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->setAmount(FLjava/lang/String;)V

    return-void
.end method

.method public postiveButton()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09000b
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogConversionFragment;->dismiss()V

    return-void
.end method
