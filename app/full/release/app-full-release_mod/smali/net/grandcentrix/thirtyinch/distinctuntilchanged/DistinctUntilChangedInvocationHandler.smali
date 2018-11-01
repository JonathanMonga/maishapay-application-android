.class final Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;
.super Lnet/grandcentrix/thirtyinch/util/AbstractInvocationHandler;
.source "DistinctUntilChangedInvocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/grandcentrix/thirtyinch/util/AbstractInvocationHandler;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DistinctUntilChangedInvocationHandler"


# instance fields
.field mLatestMethodCalls:Ljava/util/HashMap;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctComparator;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/util/AbstractInvocationHandler;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;->mLatestMethodCalls:Ljava/util/HashMap;

    .line 37
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;->mView:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 41
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;->mLatestMethodCalls:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected handleInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 57
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    .line 58
    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 59
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p3, :cond_9

    .line 63
    array-length v0, p3

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 68
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;->mView:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 73
    :cond_2
    const-class v0, Lnet/grandcentrix/thirtyinch/TiView;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 74
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;->mView:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 77
    :cond_3
    const-class p1, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChanged;

    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChanged;

    if-nez p1, :cond_4

    .line 82
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;->mView:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 85
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;->mLatestMethodCalls:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctComparator;

    if-nez v1, :cond_6

    .line 92
    invoke-interface {p1}, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChanged;->comparator()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctComparator;

    .line 96
    invoke-interface {p1, p3}, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctComparator;->compareWith([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "comparator returns \'true\' at initialization."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_5
    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;->mLatestMethodCalls:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;->mView:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 110
    :cond_6
    invoke-interface {v1, p3}, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctComparator;->compareWith([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 112
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;->mView:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 115
    :cond_7
    invoke-interface {p1}, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChanged;->logDropped()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 116
    sget-object p1, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not calling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with args "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Was already called with the same parameters before."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-static {p1, p2}, Lnet/grandcentrix/thirtyinch/TiLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/4 p1, 0x0

    return-object p1

    .line 64
    :cond_9
    :goto_0
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;->mView:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 127
    throw p1

    :catch_1
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 125
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DistinctUntilChangedProxy@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;->mView:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
