.class public Lnet/grandcentrix/thirtyinch/distinctuntilchanged/HashComparator;
.super Ljava/lang/Object;
.source "HashComparator.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctComparator;


# instance fields
.field private mLastParametersHash:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/HashComparator;->mLastParametersHash:I

    return-void
.end method


# virtual methods
.method public compareWith([Ljava/lang/Object;)Z
    .locals 1

    .line 32
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    .line 33
    iget v0, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/HashComparator;->mLastParametersHash:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 36
    :cond_0
    iput p1, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/HashComparator;->mLastParametersHash:I

    const/4 p1, 0x0

    return p1
.end method
