.class public Lnet/grandcentrix/thirtyinch/distinctuntilchanged/WeakEqualsComparator;
.super Ljava/lang/Object;
.source "WeakEqualsComparator.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctComparator;


# instance fields
.field mLastParameters:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareWith([Ljava/lang/Object;)Z
    .locals 1

    .line 34
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/WeakEqualsComparator;->mLastParameters:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/WeakEqualsComparator;->mLastParameters:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 35
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/WeakEqualsComparator;->mLastParameters:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    return p1
.end method
