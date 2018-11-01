.class Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;
.super Landroid/os/AsyncTask;
.source "QRCodeReaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeFrameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "[B",
        "Ljava/lang/Void;",
        "Lcom/google/zxing/Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final hintsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final qrToViewPointTransformer:Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;

.field private final viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 336
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 333
    new-instance v0, Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;

    invoke-direct {v0}, Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;-><init>()V

    iput-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->qrToViewPointTransformer:Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;

    .line 337
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->viewRef:Ljava/lang/ref/WeakReference;

    .line 338
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->hintsRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private transformToViewCoordinates(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;[Lcom/google/zxing/ResultPoint;)[Landroid/graphics/PointF;
    .locals 7

    .line 392
    invoke-static {p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$600(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    sget-object v0, Lcom/dlazaro66/qrcodereaderview/Orientation;->LANDSCAPE:Lcom/dlazaro66/qrcodereaderview/Orientation;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/dlazaro66/qrcodereaderview/Orientation;->PORTRAIT:Lcom/dlazaro66/qrcodereaderview/Orientation;

    :goto_1
    move-object v4, v0

    .line 396
    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getHeight()I

    move-result v1

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 397
    invoke-static {p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$200(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->getPreviewSize()Landroid/graphics/Point;

    move-result-object v6

    .line 399
    invoke-static {p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$200(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/client/android/camera/CameraManager;->getPreviewCameraId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    move v3, p1

    .line 401
    :goto_2
    iget-object v1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->qrToViewPointTransformer:Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;->transform([Lcom/google/zxing/ResultPoint;ZLcom/dlazaro66/qrcodereaderview/Orientation;Landroid/graphics/Point;Landroid/graphics/Point;)[Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([[B)Lcom/google/zxing/Result;
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 348
    :cond_0
    invoke-static {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$200(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-static {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$000(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I

    move-result v3

    .line 349
    invoke-static {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$100(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I

    move-result v4

    .line 348
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/zxing/client/android/camera/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object p1

    .line 351
    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 352
    new-instance p1, Lcom/google/zxing/BinaryBitmap;

    invoke-direct {p1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 355
    :try_start_0
    invoke-static {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/qrcode/QRCodeReader;

    move-result-object v2

    iget-object v3, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->hintsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2, p1, v3}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-static {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/qrcode/QRCodeReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/QRCodeReader;->reset()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 361
    :try_start_1
    invoke-static {}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FormatException"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 359
    :catch_1
    invoke-static {}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v2, "No QR Code found"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 357
    invoke-static {}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChecksumException"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :goto_0
    invoke-static {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/qrcode/QRCodeReader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/QRCodeReader;->reset()V

    return-object v1

    :goto_1
    invoke-static {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/qrcode/QRCodeReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/QRCodeReader;->reset()V

    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 329
    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->doInBackground([[B)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/google/zxing/Result;)V
    .locals 2

    .line 370
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 375
    invoke-static {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$500(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->transformToViewCoordinates(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;[Lcom/google/zxing/ResultPoint;)[Landroid/graphics/PointF;

    move-result-object v1

    .line 379
    invoke-static {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$500(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;->onQRCodeRead(Ljava/lang/String;[Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 329
    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {p0, p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->onPostExecute(Lcom/google/zxing/Result;)V

    return-void
.end method
