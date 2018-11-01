.class public Lcom/maishapay/ui/qrcode/DecoderActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DecoderActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;


# static fields
.field public static final EXTRA_QRCODE:Ljava/lang/String; = "qrcode"

.field private static final MY_PERMISSION_REQUEST_CAMERA:I


# instance fields
.field private mainLayout:Landroid/view/ViewGroup;

.field private pointsOverlayView:Lcom/maishapay/ui/qrcode/PointsOverlayView;

.field private qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

.field private resultTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initQRCodeReaderView()V
    .locals 4

    .line 114
    invoke-virtual {p0}, Lcom/maishapay/ui/qrcode/DecoderActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->mainLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0b002c

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09020a

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    iput-object v1, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    const v1, 0x7f09020e

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->resultTextView:Landroid/widget/TextView;

    const v1, 0x7f090203

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/maishapay/ui/qrcode/PointsOverlayView;

    iput-object v0, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->pointsOverlayView:Lcom/maishapay/ui/qrcode/PointsOverlayView;

    .line 120
    iget-object v0, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setAutofocusInterval(J)V

    .line 121
    iget-object v0, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    invoke-virtual {v0, p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setOnQRCodeReadListener(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;)V

    .line 122
    iget-object v0, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    invoke-virtual {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setBackCamera()V

    .line 123
    iget-object v0, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    invoke-virtual {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->startCamera()V

    return-void
.end method

.method private requestCameraPermission()V
    .locals 3

    const-string v0, "android.permission.CAMERA"

    .line 94
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->mainLayout:Landroid/view/ViewGroup;

    const-string v1, "Camera access is required to display the camera preview."

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/maishapay/ui/qrcode/DecoderActivity$1;

    invoke-direct {v2, p0}, Lcom/maishapay/ui/qrcode/DecoderActivity$1;-><init>(Lcom/maishapay/ui/qrcode/DecoderActivity;)V

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->mainLayout:Landroid/view/ViewGroup;

    const-string v1, "Permission is not available. Requesting camera permission."

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    const/4 v0, 0x1

    .line 107
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    .line 35
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/qrcode/DecoderActivity;->setContentView(I)V

    const p1, 0x7f090172

    .line 37
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/qrcode/DecoderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->mainLayout:Landroid/view/ViewGroup;

    const-string p1, "android.permission.CAMERA"

    .line 39
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/maishapay/ui/qrcode/DecoderActivity;->initQRCodeReaderView()V

    goto :goto_0

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/maishapay/ui/qrcode/DecoderActivity;->requestCameraPermission()V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 60
    iget-object v0, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    invoke-virtual {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->stopCamera()V

    :cond_0
    return-void
.end method

.method public onQRCodeRead(Ljava/lang/String;[Landroid/graphics/PointF;)V
    .locals 1

    .line 86
    iget-object p2, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->resultTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "qrcode"

    .line 88
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/maishapay/ui/qrcode/DecoderActivity;->setResult(ILandroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/maishapay/ui/qrcode/DecoderActivity;->finish()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    .line 72
    array-length p2, p3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    aget p2, p3, p2

    if-nez p2, :cond_1

    .line 73
    iget-object p2, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->mainLayout:Landroid/view/ViewGroup;

    const-string p3, "Camera permission was granted."

    invoke-static {p2, p3, p1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 74
    invoke-direct {p0}, Lcom/maishapay/ui/qrcode/DecoderActivity;->initQRCodeReaderView()V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p2, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->mainLayout:Landroid/view/ViewGroup;

    const-string p3, "Camera permission request was denied."

    invoke-static {p2, p3, p1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/maishapay/ui/qrcode/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    invoke-virtual {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->startCamera()V

    :cond_0
    return-void
.end method
