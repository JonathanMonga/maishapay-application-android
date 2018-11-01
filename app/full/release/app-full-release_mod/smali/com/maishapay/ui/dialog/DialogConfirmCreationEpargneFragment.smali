.class public Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "DialogConfirmCreationEpargneFragment.java"


# instance fields
.field private buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;
    .locals 2

    .line 23
    new-instance v0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;

    invoke-direct {v0}, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;-><init>()V

    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    invoke-virtual {v0, v1}, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;->setArguments(Landroid/os/Bundle;)V

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

    .line 53
    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;->dismiss()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 33
    instance-of v0, p1, Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;->buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

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

    const p3, 0x7f0b003f

    .line 40
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;->view:Landroid/view/View;

    .line 41
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 42
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;->view:Landroid/view/View;

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

    .line 47
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;->setCancelable(Z)V

    return-void
.end method

.method public positiveButton()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09000b
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;->buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;->positiveClicked(Ljava/lang/String;)V

    return-void
.end method
