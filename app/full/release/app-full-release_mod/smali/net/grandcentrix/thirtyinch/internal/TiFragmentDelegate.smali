.class public Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;
.super Ljava/lang/Object;
.source "TiFragmentDelegate.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder;
.implements Lnet/grandcentrix/thirtyinch/internal/PresenterAccessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lnet/grandcentrix/thirtyinch/TiPresenter<",
        "TV;>;V::",
        "Lnet/grandcentrix/thirtyinch/TiView;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder<",
        "TV;>;",
        "Lnet/grandcentrix/thirtyinch/internal/PresenterAccessor<",
        "TP;TV;>;"
    }
.end annotation


# static fields
.field private static final ENABLE_DEBUG_LOGGING:Z = false

.field static final SAVED_STATE_PRESENTER_ID:Ljava/lang/String; = "presenter_id"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private volatile mActivityStarted:Z

.field private final mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

.field private mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private mPresenterId:Ljava/lang/String;

.field private final mPresenterProvider:Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final mSavior:Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;

.field private final mTiFragment:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;

.field private mUiThreadBinderRemovable:Lnet/grandcentrix/thirtyinch/Removable;

.field private final mViewBinder:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mViewProvider:Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/grandcentrix/thirtyinch/internal/TiViewProvider<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider;Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;",
            "Lnet/grandcentrix/thirtyinch/internal/TiViewProvider<",
            "TV;>;",
            "Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider<",
            "TP;>;",
            "Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;",
            "Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mActivityStarted:Z

    .line 78
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mTiFragment:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;

    .line 79
    iput-object p2, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mViewProvider:Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;

    .line 80
    iput-object p3, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenterProvider:Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider;

    .line 81
    iput-object p4, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    .line 82
    new-instance p1, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

    invoke-direct {p1, p4}, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;-><init>(Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;)V

    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mViewBinder:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

    .line 83
    iput-object p5, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mSavior:Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;

    return-void
.end method

.method static synthetic access$000(Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->isUiPossible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mActivityStarted:Z

    return p0
.end method

.method static synthetic access$200(Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;)Lnet/grandcentrix/thirtyinch/TiPresenter;
    .locals 0

    .line 42
    iget-object p0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    return-object p0
.end method

.method static synthetic access$300(Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;)Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;
    .locals 0

    .line 42
    iget-object p0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mViewProvider:Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;

    return-object p0
.end method

.method static synthetic access$400(Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;)Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;
    .locals 0

    .line 42
    iget-object p0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mViewBinder:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

    return-object p0
.end method

.method private isUiPossible()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mTiFragment:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;->isFragmentAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mTiFragment:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;->isFragmentDetached()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 89
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mViewBinder:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->addBindViewInterceptor(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/Removable;

    move-result-object p1

    return-object p1
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

    .line 95
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mViewBinder:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->getInterceptedViewOf(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    return-object p1
.end method

.method public getInterceptors(Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder$Filter;)Ljava/util/List;
    .locals 1
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

    .line 102
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mViewBinder:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->getInterceptors(Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder$Filter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    return-object v0
.end method

.method public invalidateView()V
    .locals 1

    .line 116
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mViewBinder:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->invalidateView()V

    return-void
.end method

.method public onCreateView_beforeSuper(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 123
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mViewBinder:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->invalidateView()V

    return-void
.end method

.method public onCreate_afterSuper(Landroid/os/Bundle;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detected destroyed presenter, discard it "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    .line 136
    :cond_0
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "presenter_id"

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 142
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to recover Presenter with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mSavior:Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mTiFragment:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;

    .line 145
    invoke-interface {v1}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;->getHostingContainer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;->recover(Ljava/lang/String;Ljava/lang/Object;)Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v0

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    .line 146
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mSavior:Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mTiFragment:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;

    invoke-interface {v1}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;->getHostingContainer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;->free(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mSavior:Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;

    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mTiFragment:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;

    invoke-interface {v1}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;->getHostingContainer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;->save(Lnet/grandcentrix/thirtyinch/TiPresenter;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenterId:Ljava/lang/String;

    .line 153
    :cond_1
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {p1}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recovered Presenter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_2
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    if-nez p1, :cond_5

    .line 158
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenterProvider:Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider;

    invoke-interface {p1}, Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider;->providePresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    .line 159
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getState()Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    move-result-object p1

    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->INITIALIZED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-eq p1, v0, :cond_3

    .line 160
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Presenter not in initialized state. Current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    .line 161
    invoke-virtual {v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getState()Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Presenter provided with #providePresenter() cannot be reused. Always return a fresh instance!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_3
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {p1}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "created Presenter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getConfig()Lnet/grandcentrix/thirtyinch/TiConfiguration;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/TiConfiguration;->shouldRetainPresenter()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 168
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mSavior:Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;

    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mTiFragment:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;

    invoke-interface {v1}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;->getHostingContainer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;->save(Lnet/grandcentrix/thirtyinch/TiPresenter;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenterId:Ljava/lang/String;

    .line 170
    :cond_4
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->create()V

    .line 173
    :cond_5
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getConfig()Lnet/grandcentrix/thirtyinch/TiConfiguration;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/TiConfiguration;->isCallOnMainThreadInterceptorEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 175
    new-instance v0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInterceptor;

    invoke-direct {v0}, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInterceptor;-><init>()V

    invoke-virtual {p0, v0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->addBindViewInterceptor(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/Removable;

    .line 178
    :cond_6
    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/TiConfiguration;->isDistinctUntilChangedInterceptorEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 179
    new-instance p1, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInterceptor;

    invoke-direct {p1}, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInterceptor;-><init>()V

    invoke-virtual {p0, p1}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->addBindViewInterceptor(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/Removable;

    .line 183
    :cond_7
    new-instance p1, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutorAutoBinder;

    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mTiFragment:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;

    .line 184
    invoke-interface {v1}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;->getUiThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutorAutoBinder;-><init>(Lnet/grandcentrix/thirtyinch/TiPresenter;Ljava/util/concurrent/Executor;)V

    .line 187
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->addLifecycleObserver(Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;)Lnet/grandcentrix/thirtyinch/Removable;

    move-result-object p1

    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mUiThreadBinderRemovable:Lnet/grandcentrix/thirtyinch/Removable;

    return-void
.end method

.method public onDestroyView_beforeSuper()V
    .locals 1

    .line 191
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->detachView()V

    return-void
.end method

.method public onDestroy_afterSuper()V
    .locals 4

    .line 197
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mUiThreadBinderRemovable:Lnet/grandcentrix/thirtyinch/Removable;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mUiThreadBinderRemovable:Lnet/grandcentrix/thirtyinch/Removable;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/Removable;->remove()V

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mUiThreadBinderRemovable:Lnet/grandcentrix/thirtyinch/Removable;

    :cond_0
    const/4 v0, 0x0

    .line 204
    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mTiFragment:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;

    invoke-interface {v1}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;->isFragmentInBackstack()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 206
    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mTiFragment:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;

    invoke-interface {v1}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;->isFragmentRemoving()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment was removed and is not managed by the FragmentManager anymore. Also destroy "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    .line 214
    :cond_1
    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {v1}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object v1

    const-string v3, "fragment is in backstack"

    invoke-static {v1, v3}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 217
    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    .line 218
    invoke-virtual {v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getConfig()Lnet/grandcentrix/thirtyinch/TiConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/grandcentrix/thirtyinch/TiConfiguration;->shouldRetainPresenter()Z

    move-result v1

    if-nez v1, :cond_3

    .line 222
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presenter configured as not retaining, destroying "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :cond_3
    if-eqz v0, :cond_4

    .line 227
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->destroy()V

    .line 228
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mSavior:Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenterId:Ljava/lang/String;

    iget-object v2, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mTiFragment:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;

    invoke-interface {v2}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;->getHostingContainer()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;->free(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 230
    :cond_4
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not destroying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " which will be reused by a future Fragment instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onSaveInstanceState_afterSuper(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "presenter_id"

    .line 236
    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenterId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart_afterSuper()V
    .locals 2

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mActivityStarted:Z

    .line 242
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->isUiPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mTiFragment:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;->getUiThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate$1;

    invoke-direct {v1, p0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate$1;-><init>(Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onStop_beforeSuper()V
    .locals 1

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mActivityStarted:Z

    .line 256
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->detachView()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 261
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    .line 266
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{presenter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
