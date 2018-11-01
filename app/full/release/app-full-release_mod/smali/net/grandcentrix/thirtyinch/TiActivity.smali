.class public abstract Lnet/grandcentrix/thirtyinch/TiActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TiActivity.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider;
.implements Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;
.implements Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;
.implements Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;
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
        "Landroid/support/v7/app/AppCompatActivity;",
        "Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider<",
        "TP;>;",
        "Lnet/grandcentrix/thirtyinch/internal/TiViewProvider<",
        "TV;>;",
        "Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;",
        "Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;",
        "Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder<",
        "TV;>;",
        "Lnet/grandcentrix/thirtyinch/internal/PresenterAccessor<",
        "TP;TV;>;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate<",
            "TP;TV;>;"
        }
    .end annotation
.end field

.field private final mUiThreadExecutor:Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutor;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 86
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lnet/grandcentrix/thirtyinch/TiActivity;

    .line 92
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->TAG:Ljava/lang/String;

    .line 95
    new-instance v0, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    .line 96
    invoke-static {}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->getInstance()Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;-><init>(Lnet/grandcentrix/thirtyinch/internal/DelegatedTiActivity;Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider;Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;)V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    .line 98
    new-instance v0, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutor;

    invoke-direct {v0}, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutor;-><init>()V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mUiThreadExecutor:Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutor;

    return-void
.end method


# virtual methods
.method public final addBindViewInterceptor(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/Removable;
    .locals 1
    .param p1    # Lnet/grandcentrix/thirtyinch/BindViewInterceptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 139
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->addBindViewInterceptor(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/Removable;

    move-result-object p1

    return-object p1
.end method

.method public final getHostingContainer()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final getInterceptedViewOf(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/TiView;
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

    .line 150
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->getInterceptedViewOf(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    return-object p1
.end method

.method public final getInterceptors(Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder$Filter;)Ljava/util/List;
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

    .line 157
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->getInterceptors(Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder$Filter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLoggingTag()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v0

    return-object v0
.end method

.method public final getUiThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 175
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mUiThreadExecutor:Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutor;

    return-object v0
.end method

.method public final invalidateView()V
    .locals 1

    .line 184
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->invalidateView()V

    return-void
.end method

.method public final isActivityFinishing()Z
    .locals 1

    .line 189
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 195
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 196
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->onConfigurationChanged_afterSuper(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 103
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->onCreate_afterSuper(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 132
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 133
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->onDestroy_afterSuper()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 125
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 126
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->onSaveInstanceState_afterSuper(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 110
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 111
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->onStart_afterSuper()V

    return-void
.end method

.method protected onStop()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 117
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->onStop_beforeSuper()V

    .line 118
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 119
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->onStop_afterSuper()V

    return-void
.end method

.method public provideView()Lnet/grandcentrix/thirtyinch/TiView;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/grandcentrix/thirtyinch/TiView;

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/util/AnnotationUtil;->getInterfaceOfClassExtendingGivenInterface(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This Activity doesn\'t implement a TiView interface. This is the default behaviour. Override provideView() to explicitly change this."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extending TiView doesn\'t make sense, it\'s an empty interface. This is the default behaviour. Override provideView() to explicitly change this."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    move-object v0, p0

    check-cast v0, Lnet/grandcentrix/thirtyinch/TiView;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 224
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    .line 225
    invoke-virtual {v1}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/TiActivity;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;

    .line 226
    invoke-virtual {v1}, Lnet/grandcentrix/thirtyinch/internal/TiActivityDelegate;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
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

    const-class v2, Lnet/grandcentrix/thirtyinch/TiActivity;

    .line 229
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{presenter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
