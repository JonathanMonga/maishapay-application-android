.class public Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInterceptor;
.super Ljava/lang/Object;
.source "DistinctUntilChangedInterceptor.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/BindViewInterceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "DistinctUntilChangedInterceptor"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unwrap(Lnet/grandcentrix/thirtyinch/TiView;)Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;
    .locals 0
    .param p0    # Lnet/grandcentrix/thirtyinch/TiView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/grandcentrix/thirtyinch/TiView;",
            ")",
            "Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler<",
            "Lnet/grandcentrix/thirtyinch/TiView;",
            ">;"
        }
    .end annotation

    .line 37
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    check-cast p0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public clearCache(Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lnet/grandcentrix/thirtyinch/TiView;",
            ">(",
            "Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder<",
            "TV;>;)V"
        }
    .end annotation

    .line 44
    invoke-interface {p1, p0}, Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder;->getInterceptedViewOf(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    invoke-static {p1}, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInterceptor;->unwrap(Lnet/grandcentrix/thirtyinch/TiView;)Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;->clearCache()V

    .line 50
    sget-object v0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInterceptor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleared the distinctUntilChanged cache of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public intercept(Lnet/grandcentrix/thirtyinch/TiView;)Lnet/grandcentrix/thirtyinch/TiView;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lnet/grandcentrix/thirtyinch/TiView;",
            ">(TV;)TV;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInterceptor;->wrap(Lnet/grandcentrix/thirtyinch/TiView;)Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    .line 58
    sget-object v1, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInterceptor;->TAG:Ljava/lang/String;

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

.method public wrap(Lnet/grandcentrix/thirtyinch/TiView;)Lnet/grandcentrix/thirtyinch/TiView;
    .locals 4
    .param p1    # Lnet/grandcentrix/thirtyinch/TiView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lnet/grandcentrix/thirtyinch/TiView;",
            ">(TV;)TV;"
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/grandcentrix/thirtyinch/TiView;

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/util/AnnotationUtil;->getInterfaceOfClassExtendingGivenInterface(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "the interface extending View could not be found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_0
    const-class v1, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChanged;

    invoke-static {p1, v1}, Lnet/grandcentrix/thirtyinch/util/AnnotationUtil;->hasObjectMethodWithAnnotation(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;

    invoke-direct {v0, p1}, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInvocationHandler;-><init>(Ljava/lang/Object;)V

    .line 78
    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/grandcentrix/thirtyinch/TiView;

    return-object p1
.end method
