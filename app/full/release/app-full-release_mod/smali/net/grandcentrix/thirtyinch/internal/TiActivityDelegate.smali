.class public Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;
.super Ljava/lang/Object;
.source "TiActivityDelegate.java"

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

.field private final mTiActivity:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;

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
.method public constructor <init>(Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider;Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;",
            "Lnet/grandcentrix/thirtyinch/internal/TiViewProvider<",
            "TV;>;",
            "Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider<",
            "TP;>;",
            "Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;",
            "Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mActivityStarted:Z

    .line 85
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mTiActivity:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;

    .line 86
    iput-object p2, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mViewProvider:Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;

    .line 87
    iput-object p3, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenterProvider:Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider;

    .line 88
    iput-object p4, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    .line 89
    new-instance p1, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

    invoke-direct {p1, p4}, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;-><init>(Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;)V

    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mViewBinder:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

    .line 90
    iput-object p5, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mSavior:Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;

    return-void
.end method

.method static synthetic access$000(Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mActivityStarted:Z

    return p0
.end method

.method static synthetic access$100(Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;)Lnet/grandcentrix/thirtyinch/TiPresenter;
    .locals 0

    .line 43
    iget-object p0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    return-object p0
.end method

.method static synthetic access$200(Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;)Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;
    .locals 0

    .line 43
    iget-object p0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mViewProvider:Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;

    return-object p0
.end method

.method static synthetic access$300(Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;)Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;
    .locals 0

    .line 43
    iget-object p0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mViewBinder:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

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

    .line 96
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mViewBinder:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

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

    .line 102
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mViewBinder:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

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

    .line 109
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mViewBinder:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

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

    .line 114
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    return-object v0
.end method

.method public invalidateView()V
    .locals 1

    .line 123
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mViewBinder:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->invalidateView()V

    return-void
.end method

.method public onConfigurationChanged_afterSuper(Landroid/content/res/Configuration;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mViewBinder:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->invalidateView()V

    return-void
.end method

.method public onCreate_afterSuper(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_3

    const-string v0, "presenter_id"

    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

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

    .line 145
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mSavior:Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mTiActivity:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;

    .line 146
    invoke-interface {v1}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;->getHostingContainer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;->recover(Ljava/lang/String;Ljava/lang/Object;)Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v0

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    .line 147
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recovered Presenter from savior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "could not recover a Presenter from savior"

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    if-nez v0, :cond_2

    .line 155
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {p1}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "could not recover the Presenter although it\'s not the first start of the Activity. This is normal when configured as .setRetainPresenterEnabled(false)."

    invoke-static {p1, v0}, Lnet/grandcentrix/thirtyinch/TiLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_2
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mSavior:Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mTiActivity:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;

    invoke-interface {v1}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;->getHostingContainer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;->free(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mSavior:Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;

    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mTiActivity:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;

    invoke-interface {v1}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;->getHostingContainer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;->save(Lnet/grandcentrix/thirtyinch/TiPresenter;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenterId:Ljava/lang/String;

    .line 167
    :cond_3
    :goto_1
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    if-nez p1, :cond_6

    .line 169
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenterProvider:Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider;

    invoke-interface {p1}, Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider;->providePresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    .line 170
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getState()Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    move-result-object p1

    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->INITIALIZED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-eq p1, v0, :cond_4

    .line 171
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Presenter not in initialized state. Current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    .line 172
    invoke-virtual {v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getState()Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Presenter provided with #providePresenter() cannot be reused. Always return a fresh instance!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_4
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {p1}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "created Presenter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getConfig()Lnet/grandcentrix/thirtyinch/TiConfiguration;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/TiConfiguration;->shouldRetainPresenter()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 179
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mSavior:Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;

    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mTiActivity:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;

    invoke-interface {v1}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;->getHostingContainer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;->save(Lnet/grandcentrix/thirtyinch/TiPresenter;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenterId:Ljava/lang/String;

    .line 181
    :cond_5
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->create()V

    .line 184
    :cond_6
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getConfig()Lnet/grandcentrix/thirtyinch/TiConfiguration;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/TiConfiguration;->isCallOnMainThreadInterceptorEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 186
    new-instance v0, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInterceptor;

    invoke-direct {v0}, Lnet/grandcentrix/thirtyinch/callonmainthread/CallOnMainThreadInterceptor;-><init>()V

    invoke-virtual {p0, v0}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->addBindViewInterceptor(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/Removable;

    .line 189
    :cond_7
    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/TiConfiguration;->isDistinctUntilChangedInterceptorEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 190
    new-instance p1, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInterceptor;

    invoke-direct {p1}, Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChangedInterceptor;-><init>()V

    invoke-virtual {p0, p1}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->addBindViewInterceptor(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/Removable;

    .line 194
    :cond_8
    new-instance p1, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutorAutoBinder;

    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mTiActivity:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;

    .line 195
    invoke-interface {v1}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;->getUiThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutorAutoBinder;-><init>(Lnet/grandcentrix/thirtyinch/TiPresenter;Ljava/util/concurrent/Executor;)V

    .line 198
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->addLifecycleObserver(Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;)Lnet/grandcentrix/thirtyinch/Removable;

    move-result-object p1

    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mUiThreadBinderRemovable:Lnet/grandcentrix/thirtyinch/Removable;

    return-void
.end method

.method public onDestroy_afterSuper()V
    .locals 4

    .line 204
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mUiThreadBinderRemovable:Lnet/grandcentrix/thirtyinch/Removable;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mUiThreadBinderRemovable:Lnet/grandcentrix/thirtyinch/Removable;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/Removable;->remove()V

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mUiThreadBinderRemovable:Lnet/grandcentrix/thirtyinch/Removable;

    :cond_0
    const/4 v0, 0x0

    .line 210
    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mTiActivity:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;

    invoke-interface {v1}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;->isActivityFinishing()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 212
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity is finishing, destroying presenter "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :cond_1
    if-nez v0, :cond_2

    .line 216
    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    .line 217
    invoke-virtual {v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getConfig()Lnet/grandcentrix/thirtyinch/TiConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/grandcentrix/thirtyinch/TiConfiguration;->shouldRetainPresenter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 221
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presenter configured as not retaining, destroying "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :cond_2
    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->destroy()V

    .line 227
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mSavior:Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenterId:Ljava/lang/String;

    iget-object v2, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mTiActivity:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;

    invoke-interface {v2}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;->getHostingContainer()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;->free(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 229
    :cond_3
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mLogTag:Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;->getLoggingTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not destroying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " which will be reused by the next Activity instance, recreating..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState_afterSuper(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "presenter_id"

    .line 235
    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenterId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart_afterSuper()V
    .locals 2

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mActivityStarted:Z

    .line 241
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mTiActivity:Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;

    invoke-interface {v0}, Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;->getUiThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate$1;

    invoke-direct {v1, p0}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate$1;-><init>(Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStop_afterSuper()V
    .locals 1

    .line 254
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->detachView()V

    return-void
.end method

.method public onStop_beforeSuper()V
    .locals 1

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->mActivityStarted:Z

    return-void
.end method
