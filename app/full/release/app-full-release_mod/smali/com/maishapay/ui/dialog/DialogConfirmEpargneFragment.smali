.class public Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "DialogConfirmEpargneFragment.java"


# static fields
.field private static final EXTRA_DEVISE:Ljava/lang/String; = "devise"

.field private static final EXTRA_MONTANT:Ljava/lang/String; = "montant"


# instance fields
.field TV_Msg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090080
    .end annotation
.end field

.field private buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;
    .locals 3

    .line 28
    new-instance v0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;

    invoke-direct {v0}, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;-><init>()V

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "montant"

    .line 30
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "devise"

    .line 31
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->setArguments(Landroid/os/Bundle;)V

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

    .line 61
    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->dismiss()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 40
    instance-of v0, p1, Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

    if-eqz v0, :cond_0

    .line 41
    check-cast p1, Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

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

    const p3, 0x7f0b0040

    .line 47
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->view:Landroid/view/View;

    .line 48
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 49
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->view:Landroid/view/View;

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

    .line 54
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->TV_Msg:Landroid/widget/TextView;

    const-string p2, "Vous allez transferer %s %s vers compte epargne, confirmez-vous ce transfert ?"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "montant"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "devise"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->setCancelable(Z)V

    return-void
.end method

.method public positiveButton()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09000b
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;->positiveClicked(Ljava/lang/String;)V

    return-void
.end method
