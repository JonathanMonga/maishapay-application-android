.class public Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutor;
.super Ljava/lang/Object;
.source "UiThreadExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mUiThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutor;->mHandler:Landroid/os/Handler;

    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutor;->mUiThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutor;->mUiThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 38
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
