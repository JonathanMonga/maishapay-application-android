.class final Lcom/google/zxing/client/android/camera/AutoFocusManager;
.super Ljava/lang/Object;
.source "AutoFocusManager.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;
    }
.end annotation


# static fields
.field protected static final DEFAULT_AUTO_FOCUS_INTERVAL_MS:J = 0x1388L

.field private static final FOCUS_MODES_CALLING_AF:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AutoFocusManager"


# instance fields
.field private autofocusIntervalMs:J

.field private final camera:Landroid/hardware/Camera;

.field private focusing:Z

.field private outstandingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private stopped:Z

.field private final useAutoFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    .line 52
    sget-object v0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    const-string v1, "macro"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Landroid/hardware/Camera;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    .line 48
    iput-wide v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->autofocusIntervalMs:J

    .line 63
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    .line 64
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p1

    .line 65
    sget-object v0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->useAutoFocus:Z

    .line 66
    sget-object v0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current focus mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'; use auto focus? "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->useAutoFocus:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/zxing/client/android/camera/AutoFocusManager;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->autofocusIntervalMs:J

    return-wide v0
.end method

.method private declared-synchronized autoFocusAgainLater()V
    .locals 3

    monitor-enter p0

    .line 83
    :try_start_0
    iget-boolean v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->stopped:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;-><init>(Lcom/google/zxing/client/android/camera/AutoFocusManager;Lcom/google/zxing/client/android/camera/AutoFocusManager$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :try_start_1
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    iput-object v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    :try_start_2
    sget-object v1, Lcom/google/zxing/client/android/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not request auto focus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 82
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized cancelOutstandingTask()V
    .locals 2

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 111
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    .line 71
    :try_start_0
    iput-boolean p1, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->focusing:Z

    .line 72
    invoke-direct {p0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->autoFocusAgainLater()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 70
    monitor-exit p0

    throw p1
.end method

.method public setAutofocusInterval(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AutoFocusInterval must be greater than 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_0
    iput-wide p1, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->autofocusIntervalMs:J

    return-void
.end method

.method declared-synchronized start()V
    .locals 3

    monitor-enter p0

    .line 95
    :try_start_0
    iget-boolean v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->useAutoFocus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;

    .line 97
    iget-boolean v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->stopped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->focusing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->focusing:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 103
    :try_start_2
    sget-object v1, Lcom/google/zxing/client/android/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected exception while focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    invoke-direct {p0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->autoFocusAgainLater()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 94
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 121
    :try_start_0
    iput-boolean v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->stopped:Z

    .line 122
    iget-boolean v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->useAutoFocus:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->cancelOutstandingTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 129
    :try_start_2
    sget-object v1, Lcom/google/zxing/client/android/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected exception while cancelling focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 120
    monitor-exit p0

    throw v0
.end method
