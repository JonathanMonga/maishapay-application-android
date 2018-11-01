.class public Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInterceptor;
.super Ljava/lang/Object;
.source "CallOnMainThreadInterceptor.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/BindViewInterceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "CallOnMainThreadInterceptor"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private wrap(Lnet/grandcentrix/thirtyinch/TiView;)Lnet/grandcentrix/thirtyinch/TiView;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lnet/grandcentrix/thirtyinch/TiView;",
            ">(TV;)TV;"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/grandcentrix/thirtyinch/TiView;

    .line 40
    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/util/AnnotationUtil;->getInterfaceOfClassExtendingGivenInterface(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "the interface extending View could not be found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_0
    const-class v1, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThread;

    invoke-static {p1, v1}, Lnet/grandcentrix/thirtyinch/util/AnnotationUtil;->hasObjectMethodWithAnnotation(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;

    invoke-direct {v0, p1}, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInvocationHandler;-><init>(Ljava/lang/Object;)V

    .line 52
    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/grandcentrix/thirtyinch/TiView;

    return-object p1
.end method


# virtual methods
.method public intercept(Lnet/grandcentrix/thirtyinch/TiView;)Lnet/grandcentrix/thirtyinch/TiView;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lnet/grandcentrix/thirtyinch/TiView;",
            ">(TV;)TV;"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInterceptor;->wrap(Lnet/grandcentrix/thirtyinch/TiView;)Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    .line 33
    sget-object v1, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInterceptor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrapping View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
