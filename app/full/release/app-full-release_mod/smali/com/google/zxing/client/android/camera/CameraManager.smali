.class public final Lcom/google/zxing/client/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraManager"


# instance fields
.field private autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

.field private autofocusIntervalInMs:J

.field private final configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private displayOrientation:I

.field private initialized:Z

.field private openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

.field private previewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private previewing:Z

.field private requestedCameraId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->displayOrientation:I

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedCameraId:I

    const-wide/16 v0, 0x1388

    .line 54
    iput-wide v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autofocusIntervalInMs:J

    .line 57
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    .line 58
    new-instance v0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 10

    .line 233
    new-instance v9, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v9
.end method

.method public declared-synchronized closeDriver()V
    .locals 1

    monitor-enter p0

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 185
    monitor-exit p0

    throw v0
.end method

.method public forceAutoFocus()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->start()V

    :cond_0
    return-void
.end method

.method public getPreviewCameraId()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedCameraId:I

    return v0
.end method

.method public getPreviewSize()Landroid/graphics/Point;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDriver(Landroid/view/SurfaceHolder;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    .line 103
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    iget v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedCameraId:I

    invoke-static {v0}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->open(I)Lcom/google/zxing/client/android/camera/open/OpenCamera;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    goto :goto_1

    .line 106
    :cond_1
    :goto_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Camera.open() failed to return object from driver"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 111
    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 112
    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    iget v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->displayOrientation:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 114
    iget-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->initialized:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 115
    iput-boolean v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->initialized:Z

    .line 116
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v1, v0, p2, p3}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->initFromCameraParameters(Lcom/google/zxing/client/android/camera/open/OpenCamera;II)V

    .line 119
    :cond_3
    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object p2

    .line 120
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p3

    if-nez p3, :cond_4

    const/4 p3, 0x0

    goto :goto_2

    .line 122
    :cond_4
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setDesiredCameraParameters(Lcom/google/zxing/client/android/camera/open/OpenCamera;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 127
    :catch_0
    :try_start_2
    sget-object v1, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v3, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v1, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting to saved camera params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_5

    .line 131
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 132
    invoke-virtual {v1, p3}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :try_start_3
    invoke-virtual {p2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 135
    iget-object p3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {p3, v0, v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setDesiredCameraParameters(Lcom/google/zxing/client/android/camera/open/OpenCamera;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 138
    :catch_1
    :try_start_4
    sget-object p3, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v0, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_5
    :goto_3
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 101
    monitor-exit p0

    throw p1
.end method

.method public setAutofocusInterval(J)V
    .locals 1

    .line 78
    iput-wide p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autofocusIntervalInMs:J

    .line 79
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->setAutofocusInterval(J)V

    :cond_0
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1

    .line 70
    iput p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->displayOrientation:I

    .line 72
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :cond_0
    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1

    .line 62
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 64
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setPreviewCameraId(I)V
    .locals 0

    monitor-enter p0

    .line 152
    :try_start_0
    iput p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 151
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTorchEnabled(Z)V
    .locals 4

    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    if-eqz v0, :cond_2

    .line 164
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getTorchState(Landroid/hardware/Camera;)Z

    move-result v1

    if-eq p1, v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 167
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->stop()V

    const/4 v2, 0x0

    .line 168
    iput-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setTorchEnabled(Landroid/hardware/Camera;Z)V

    if-eqz v1, :cond_2

    .line 172
    new-instance p1, Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;-><init>(Landroid/hardware/Camera;)V

    iput-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    .line 173
    iget-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 162
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startPreview()V
    .locals 3

    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    if-eqz v0, :cond_0

    .line 201
    iget-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    const/4 v1, 0x1

    .line 203
    iput-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    .line 204
    new-instance v1, Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;-><init>(Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    .line 205
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    iget-wide v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autofocusIntervalInMs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->setAutofocusInterval(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 199
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 1

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->stop()V

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 212
    monitor-exit p0

    throw v0
.end method
