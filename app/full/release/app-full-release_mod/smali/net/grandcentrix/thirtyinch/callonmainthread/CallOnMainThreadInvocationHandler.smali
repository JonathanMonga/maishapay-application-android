.class final Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;
.super Lnet/grandcentrix/thirtyinch/util/AbstractInvocationHandler;
.source "CallOnMainThreadInvocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/grandcentrix/thirtyinch/util/AbstractInvocationHandler;"
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final mView:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/util/AbstractInvocationHandler;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;->handler:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;->mView:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;)Ljava/lang/Object;
    .locals 0

    .line 25
    iget-object p0, p0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;->mView:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method protected handleInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    .line 47
    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 48
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 53
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;->mView:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 57
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;->mView:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 62
    :cond_2
    const-class v0, Lnet/grandcentrix/thirtyinch/TiView;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 63
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;->mView:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 66
    :cond_3
    const-class p1, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;

    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;

    if-nez p1, :cond_4

    .line 70
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;->mView:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 74
    :cond_4
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;->handler:Landroid/os/Handler;

    new-instance v0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler$1;

    invoke-direct {v0, p0, p2, p3}, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler$1;-><init>(Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 95
    throw p1

    :catch_1
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 93
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainThreadProxy@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;->mView:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
