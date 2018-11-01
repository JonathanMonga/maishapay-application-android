.class public Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;
.super Landroid/view/SurfaceView;
.source "QRCodeReaderView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;,
        Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.dlazaro66.qrcodereaderview.QRCodeReaderView"


# instance fields
.field private decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

.field private decodeHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private mOnQRCodeReadListener:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mQRCodeReader:Lcom/google/zxing/qrcode/QRCodeReader;

.field private mQrDecodingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mQrDecodingEnabled:Z

    .line 82
    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->checkCameraHardware()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    new-instance p1, Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/zxing/client/android/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 88
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p1, p0}, Lcom/google/zxing/client/android/camera/CameraManager;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 89
    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 90
    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setBackCamera()V

    return-void

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Error: Camera not found"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$200(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/client/android/camera/CameraManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/qrcode/QRCodeReader;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mQRCodeReader:Lcom/google/zxing/qrcode/QRCodeReader;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mOnQRCodeReadListener:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getCameraDisplayOrientation()I

    move-result p0

    return p0
.end method

.method private checkCameraHardware()Z
    .locals 3

    .line 275
    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.camera.front"

    .line 279
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.any"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getCameraDisplayOrientation()I
    .locals 4

    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x5a

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    return v1

    .line 296
    :cond_0
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 297
    iget-object v2, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/CameraManager;->getPreviewCameraId()I

    move-result v2

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 299
    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 300
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v1, v3

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x10e

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xb4

    .line 320
    :goto_0
    :pswitch_3
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 321
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    .line 322
    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 324
    :cond_1
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public forceAutoFocus()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->forceAutoFocus()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 196
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 198
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    .line 263
    iget-boolean p2, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mQrDecodingEnabled:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    .line 264
    invoke-virtual {p2}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p2

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    .line 265
    invoke-virtual {p2}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p2

    sget-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    new-instance p2, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeHints:Ljava/util/Map;

    invoke-direct {p2, p0, v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;-><init>(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;Ljava/util/Map;)V

    iput-object p2, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    .line 270
    iget-object p2, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutofocusInterval(J)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/client/android/camera/CameraManager;->setAutofocusInterval(J)V

    :cond_0
    return-void
.end method

.method public setBackCamera()V
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setPreviewCameraId(I)V

    return-void
.end method

.method public setDecodeHints(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeHints:Ljava/util/Map;

    return-void
.end method

.method public setFrontCamera()V
    .locals 1

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0, v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setPreviewCameraId(I)V

    return-void
.end method

.method public setOnQRCodeReadListener(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mOnQRCodeReadListener:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;

    return-void
.end method

.method public setPreviewCameraId(I)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/google/zxing/client/android/camera/CameraManager;->setPreviewCameraId(I)V

    return-void
.end method

.method public setQRDecodingEnabled(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mQrDecodingEnabled:Z

    return-void
.end method

.method public setTorchEnabled(Z)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorchEnabled(Z)V

    :cond_0
    return-void
.end method

.method public startCamera()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->startPreview()V

    return-void
.end method

.method public stopCamera()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->stopPreview()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 229
    sget-object p2, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    const-string p3, "surfaceChanged"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-nez p1, :cond_0

    .line 232
    sget-object p1, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    const-string p2, "Error: preview surface does not exist"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/camera/CameraManager;->getPreviewSize()Landroid/graphics/Point;

    move-result-object p1

    if-nez p1, :cond_1

    .line 237
    sget-object p1, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    const-string p2, "Error: preview size does not exist"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 241
    :cond_1
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/camera/CameraManager;->getPreviewSize()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mPreviewWidth:I

    .line 242
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/camera/CameraManager;->getPreviewSize()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mPreviewHeight:I

    .line 244
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/camera/CameraManager;->stopPreview()V

    .line 247
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p1, p0}, Lcom/google/zxing/client/android/camera/CameraManager;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 248
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-direct {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getCameraDisplayOrientation()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/zxing/client/android/camera/CameraManager;->setDisplayOrientation(I)V

    .line 250
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/camera/CameraManager;->startPreview()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 209
    sget-object v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 215
    sget-object v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not openDriver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    .line 220
    :goto_0
    :try_start_1
    new-instance p1, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {p1}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    iput-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mQRCodeReader:Lcom/google/zxing/qrcode/QRCodeReader;

    .line 221
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/camera/CameraManager;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 223
    sget-object v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    :goto_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 254
    sget-object p1, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/zxing/client/android/camera/CameraManager;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 257
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/camera/CameraManager;->stopPreview()V

    .line 258
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    return-void
.end method
