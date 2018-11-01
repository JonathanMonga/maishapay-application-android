.class public abstract Lnet/grandcentrix/thirtyinch/TiDialogFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "TiDialogFragment.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;
.implements Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider;
.implements Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;
.implements Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;
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
        "Landroid/support/v7/app/AppCompatDialogFragment;",
        "Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;",
        "Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider<",
        "TP;>;",
        "Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;",
        "Lnet/grandcentrix/thirtyinch/internal/TiViewProvider<",
        "TV;>;",
        "Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder<",
        "TV;>;",
        "Lnet/grandcentrix/thirtyinch/internal/PresenterAccessor<",
        "TP;TV;>;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate<",
            "TP;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 40
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lnet/grandcentrix/thirtyinch/TiDialogFragment;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    .line 50
    invoke-static {}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->getInstance()Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;-><init>(Lnet/grandcentrix/thirtyinch/internal/DelegatedTiFragment;Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;Lnet/grandcentrix/thirtyinch/internal/TiPresenterProvider;Lnet/grandcentrix/thirtyinch/internal/TiLoggingTagProvider;Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;)V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

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

    .line 106
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->addBindViewInterceptor(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/Removable;

    move-result-object p1

    return-object p1
.end method

.method public final getHostingContainer()Ljava/lang/Object;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->getHost()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 117
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->getInterceptedViewOf(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/TiView;

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

    .line 124
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->getInterceptors(Lnet/grandcentrix/thirtyinch/internal/InterceptableViewBinder$Filter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLoggingTag()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v0

    return-object v0
.end method

.method public final getUiThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 139
    new-instance v0, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutor;

    invoke-direct {v0}, Lnet/grandcentrix/thirtyinch/internal/UiThreadExecutor;-><init>()V

    return-object v0
.end method

.method public final invalidateView()V
    .locals 1

    .line 148
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->invalidateView()V

    return-void
.end method

.method public final isFragmentAdded()Z
    .locals 1

    .line 153
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public final isFragmentDetached()Z
    .locals 1

    .line 158
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->isDetached()Z

    move-result v0

    return v0
.end method

.method public final isFragmentInBackstack()Z
    .locals 1

    .line 163
    invoke-static {p0}, Landroid/support/v4/app/BackstackReader;->isInBackStack(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    return v0
.end method

.method public final isFragmentRemoving()Z
    .locals 1

    .line 168
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->isRemoving()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->onCreate_afterSuper(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 64
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->invalidateView()V

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 99
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDialogFragment;->onDestroy()V

    .line 100
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->onDestroy_afterSuper()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 92
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->onDestroyView_beforeSuper()V

    .line 93
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDialogFragment;->onDestroyView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 85
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 86
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->onSaveInstanceState_afterSuper(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 71
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDialogFragment;->onStart()V

    .line 72
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->onStart_afterSuper()V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 78
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->mDelegate:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->onStop_beforeSuper()V

    .line 79
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDialogFragment;->onStop()V

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

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/grandcentrix/thirtyinch/TiView;

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/util/AnnotationUtil;->getInterfaceOfClassExtendingGivenInterface(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This DialogFragment doesn\'t implement a TiView interface. This is the default behaviour. Override provideView() to explicitly change this."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extending TiView doesn\'t make sense, it\'s an empty interface. This is the default behaviour. Override provideView() to explicitly change this."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    move-object v0, p0

    check-cast v0, Lnet/grandcentrix/thirtyinch/TiView;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 202
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiDialogFragment;->hashCode()I

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
