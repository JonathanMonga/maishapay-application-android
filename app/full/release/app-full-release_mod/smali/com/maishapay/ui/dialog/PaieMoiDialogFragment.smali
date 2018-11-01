.class public Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "PaieMoiDialogFragment.java"


# static fields
.field private static final EXTRA_TELEPHONE:Ljava/lang/String; = "telephone"


# instance fields
.field private buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

.field qrcode:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090209
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;
    .locals 3

    .line 37
    new-instance v0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;

    invoke-direct {v0}, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "telephone"

    .line 39
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 48
    instance-of v0, p1, Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

    iput-object p1, p0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;->buttonListener:Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;

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

    const p3, 0x7f0b0046

    .line 55
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;->view:Landroid/view/View;

    .line 56
    iget-object p1, p0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 57
    iget-object p1, p0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;->setCancelable(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x200

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 67
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Lcom/maishapay/app/MaishapayApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 68
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 69
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 71
    iget p1, p2, Landroid/graphics/Point;->x:I

    .line 72
    iget p2, p2, Landroid/graphics/Point;->y:I

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    mul-int/lit8 p1, p1, 0x3

    .line 74
    div-int/lit8 p1, p1, 0x6

    .line 77
    new-instance p2, Landroidmads/library/qrgenearator/QRGEncoder;

    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "telephone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TEXT_TYPE"

    invoke-direct {p2, v0, v1, v2, p1}, Landroidmads/library/qrgenearator/QRGEncoder;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 79
    :try_start_0
    iget-object p1, p0, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;->qrcode:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroidmads/library/qrgenearator/QRGEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Lcom/google/zxing/WriterException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/maishapay/util/LogCat;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public positiveButton()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09000b
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;->dismiss()V

    return-void
.end method
