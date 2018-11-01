.class public abstract Lnet/grandcentrix/thirtyinch/internal/OneTimeRemovable;
.super Ljava/lang/Object;
.source "OneTimeRemovable.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/Removable;


# instance fields
.field private final removed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/OneTimeRemovable;->removed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public isRemoved()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/OneTimeRemovable;->removed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public abstract onRemove()V
.end method

.method public remove()V
    .locals 3

    .line 41
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/OneTimeRemovable;->removed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/internal/OneTimeRemovable;->onRemove()V

    :cond_0
    return-void
.end method
