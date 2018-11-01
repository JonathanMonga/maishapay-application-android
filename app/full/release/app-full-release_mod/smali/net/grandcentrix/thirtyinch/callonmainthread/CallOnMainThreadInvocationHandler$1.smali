.class Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler$1;
.super Ljava/lang/Object;
.source "CallOnMainThreadInvocationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;->handleInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler$1;->this$0:Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;

    iput-object p2, p0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler$1;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 78
    :try_start_0
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler$1;->val$method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler$1;->this$0:Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;

    invoke-static {v1}, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;->access$000(Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler$1;->val$args:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
