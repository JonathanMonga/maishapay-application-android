.class public Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;
.super Ljava/lang/Object;
.source "PresenterViewBinder.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lnet/grandcentrix/thirtyinch/TiView;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private mBindViewInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/grandcentrix/thirtyinch/BindViewInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private mInterceptorViewOutput:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/grandcentrix/thirtyinch/BindViewInterceptor;",
            "TV;>;"
        }
    .end annotation
.end field

.field private mLastView:Lnet/grandcentrix/thirtyinch/TiView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;


# direct methods
.method public constructor <init>(Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mBindViewInterceptors:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mInterceptorViewOutput:Ljava/util/HashMap;

    .line 49
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    return-void
.end method

.method static synthetic access$000(Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mBindViewInterceptors:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addBindViewInterceptor(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/Removable;
    .locals 1
    .param p1    # Lnet/grandcentrix/thirtyinch/BindViewInterceptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 55
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mBindViewInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->invalidateView()V

    .line 58
    new-instance v0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder$1;

    invoke-direct {v0, p0, p1}, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder$1;-><init>(Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)V

    return-object v0
.end method

.method public bindView(Lnet/grandcentrix/thirtyinch/TiPresenter;Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/grandcentrix/thirtyinch/TiPresenter<",
            "TV;>;",
            "Lnet/grandcentrix/thirtyinch/internal/TiViewProvider<",
            "TV;>;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mLastView:Lnet/grandcentrix/thirtyinch/TiView;

    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->invalidateView()V

    .line 74
    invoke-interface {p2}, Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;->provideView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p2

    .line 75
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mBindViewInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/grandcentrix/thirtyinch/BindViewInterceptor;

    .line 76
    invoke-interface {v1, p2}, Lnet/grandcentrix/thirtyinch/BindViewInterceptor;->intercept(Lnet/grandcentrix/thirtyinch/TiView;)Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p2

    .line 77
    iget-object v2, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mInterceptorViewOutput:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_0
    iput-object p2, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mLastView:Lnet/grandcentrix/thirtyinch/TiView;

    .line 80
    iget-object p2, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {p2}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binding NEW view to Presenter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mLastView:Lnet/grandcentrix/thirtyinch/TiView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mLastView:Lnet/grandcentrix/thirtyinch/TiView;

    invoke-virtual {p1, p2}, Lnet/grandcentrix/thirtyinch/TiPresenter;->attachView(Lnet/grandcentrix/thirtyinch/TiView;)V

    goto :goto_1

    .line 83
    :cond_1
    iget-object p2, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {p2}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binding the cached view to Presenter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mLastView:Lnet/grandcentrix/thirtyinch/TiView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mLastView:Lnet/grandcentrix/thirtyinch/TiView;

    invoke-virtual {p1, p2}, Lnet/grandcentrix/thirtyinch/TiPresenter;->attachView(Lnet/grandcentrix/thirtyinch/TiView;)V

    :goto_1
    return-void
.end method

.method public getInterceptedViewOf(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/TiView;
    .locals 1
    .param p1    # Lnet/grandcentrix/thirtyinch/BindViewInterceptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/grandcentrix/thirtyinch/BindViewInterceptor;",
            ")TV;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mInterceptorViewOutput:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/grandcentrix/thirtyinch/TiView;

    return-object p1
.end method

.method public getInterceptors(Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder$Filter;)Ljava/util/List;
    .locals 4
    .param p1    # Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder$Filter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder$Filter<",
            "Lnet/grandcentrix/thirtyinch/BindViewInterceptor;",
            ">;)",
            "Ljava/util/List<",
            "Lnet/grandcentrix/thirtyinch/BindViewInterceptor;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 99
    :goto_0
    iget-object v2, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mBindViewInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 100
    iget-object v2, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mBindViewInterceptors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/grandcentrix/thirtyinch/BindViewInterceptor;

    .line 101
    invoke-interface {p1, v2}, Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder$Filter;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public invalidateView()V
    .locals 1

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mLastView:Lnet/grandcentrix/thirtyinch/TiView;

    .line 111
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->mInterceptorViewOutput:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
