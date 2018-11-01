.class public Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutorAutoBinder;
.super Ljava/lang/Object;
.source "UiThreadExecutorAutoBinder.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;


# instance fields
.field private final mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

.field private final mUiThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lnet/grandcentrix/thirtyinch/TiPresenter;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutorAutoBinder;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    .line 34
    iput-object p2, p0, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutorAutoBinder;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public onChange(Lnet/grandcentrix/thirtyinch/TiPresenter$State;Z)V
    .locals 2

    .line 41
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_ATTACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 43
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutorAutoBinder;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutorAutoBinder;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->setUiThreadExecutor(Ljava/util/concurrent/Executor;)V

    .line 45
    :cond_0
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_DETACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 47
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutorAutoBinder;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/grandcentrix/thirtyinch/TiPresenter;->setUiThreadExecutor(Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void
.end method
