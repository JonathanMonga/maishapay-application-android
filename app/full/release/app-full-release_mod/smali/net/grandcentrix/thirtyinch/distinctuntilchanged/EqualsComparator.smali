.class public Lnet/grandcentrix/thirtyinch/distinctuntilchanged/EqualsComparator;
.super Ljava/lang/Object;
.source "EqualsComparator.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctComparator;


# instance fields
.field private mLastParameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareWith([Ljava/lang/Object;)Z
    .locals 1

    .line 42
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/EqualsComparator;->mLastParameters:[Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/EqualsComparator;->mLastParameters:[Ljava/lang/Object;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
