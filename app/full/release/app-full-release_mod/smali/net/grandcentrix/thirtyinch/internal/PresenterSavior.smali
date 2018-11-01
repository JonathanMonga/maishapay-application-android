.class public Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;
.super Ljava/lang/Object;
.source "PresenterSavior.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/internal/TiPresenterSavior;
.implements Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver$ActivityFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/grandcentrix/thirtyinch/internal/PresenterSavior$IllegalHostException;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static INSTANCE:Lnet/grandcentrix/thirtyinch/internal/PresenterSavior; = null

.field private static final TAG:Ljava/lang/String; = "PresenterSavior"


# instance fields
.field mActivityInstanceObserver:Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mScopes:Ljava/util/HashMap;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/grandcentrix/thirtyinch/internal/PresenterScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->mScopes:Ljava/util/HashMap;

    return-void
.end method

.method private generateId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;
    .locals 2

    const-class v0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->INSTANCE:Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;

    invoke-direct {v1}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;-><init>()V

    sput-object v1, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->INSTANCE:Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;

    .line 88
    :cond_0
    sget-object v1, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->INSTANCE:Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 84
    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getScope(Ljava/lang/Object;)Lnet/grandcentrix/thirtyinch/internal/PresenterScope;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 207
    :try_start_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->mActivityInstanceObserver:Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 210
    monitor-exit p0

    return-object v1

    .line 213
    :cond_0
    :try_start_1
    check-cast p1, Landroid/app/Activity;

    .line 214
    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;->getActivityId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 216
    monitor-exit p0

    return-object v1

    .line 219
    :cond_1
    :try_start_2
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->mScopes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/grandcentrix/thirtyinch/internal/PresenterScope;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 222
    :cond_2
    :try_start_3
    new-instance v0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior$IllegalHostException;

    invoke-direct {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior$IllegalHostException;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 206
    monitor-exit p0

    throw p1
.end method

.method private observeActivityFinish(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 233
    invoke-direct {p0, p1}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->registerActivityObserver(Landroid/app/Activity;)Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;

    move-result-object v0

    .line 234
    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;->startTracking(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private printRemainingPresenter()V
    .locals 0

    return-void
.end method

.method private registerActivityObserver(Landroid/app/Activity;)Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;
    .locals 2

    .line 260
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->mActivityInstanceObserver:Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;

    invoke-direct {v0, p0}, Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;-><init>(Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver$ActivityFinishListener;)V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->mActivityInstanceObserver:Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;

    .line 262
    sget-object v0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->TAG:Ljava/lang/String;

    const-string v1, "registering lifecycle callback"

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->mActivityInstanceObserver:Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 265
    :cond_0
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->mActivityInstanceObserver:Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;

    return-object p1
.end method

.method private unregisterActivityObserver(Landroid/app/Activity;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->mScopes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->mActivityInstanceObserver:Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->mActivityInstanceObserver:Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;

    .line 280
    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x0

    .line 281
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->mActivityInstanceObserver:Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public free(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 98
    invoke-direct {p0, p2}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->getScope(Ljava/lang/Object;)Lnet/grandcentrix/thirtyinch/internal/PresenterScope;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/internal/PresenterScope;->remove(Ljava/lang/String;)Lnet/grandcentrix/thirtyinch/TiPresenter;

    .line 103
    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/PresenterScope;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->mScopes:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    instance-of p1, p2, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 110
    check-cast p2, Landroid/app/Activity;

    .line 111
    invoke-direct {p0, p2}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->unregisterActivityObserver(Landroid/app/Activity;)V

    .line 119
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->printRemainingPresenter()V

    return-void

    .line 114
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Host has unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and is not supported."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onActivityFinished(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 125
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->mScopes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/grandcentrix/thirtyinch/internal/PresenterScope;

    .line 126
    invoke-direct {p0, p1}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->unregisterActivityObserver(Landroid/app/Activity;)V

    .line 128
    sget-object v0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity is finishing, free remaining presenters "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/grandcentrix/thirtyinch/TiLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 130
    invoke-virtual {p2}, Lnet/grandcentrix/thirtyinch/internal/PresenterScope;->getAllMappings()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/grandcentrix/thirtyinch/TiPresenter;

    .line 135
    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->isViewAttached()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->detachView()V

    .line 139
    :cond_0
    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->destroy()V

    .line 143
    :cond_1
    invoke-virtual {p2, v1}, Lnet/grandcentrix/thirtyinch/internal/PresenterScope;->remove(Ljava/lang/String;)Lnet/grandcentrix/thirtyinch/TiPresenter;

    goto :goto_0

    .line 147
    :cond_2
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->printRemainingPresenter()V

    return-void
.end method

.method public recover(Ljava/lang/String;Ljava/lang/Object;)Lnet/grandcentrix/thirtyinch/TiPresenter;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 153
    invoke-direct {p0, p2}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->getScope(Ljava/lang/Object;)Lnet/grandcentrix/thirtyinch/internal/PresenterScope;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_0
    invoke-virtual {p2, p1}, Lnet/grandcentrix/thirtyinch/internal/PresenterScope;->get(Ljava/lang/String;)Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    return-object p1
.end method

.method public save(Lnet/grandcentrix/thirtyinch/TiPresenter;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1    # Lnet/grandcentrix/thirtyinch/TiPresenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 166
    invoke-direct {p0, p2}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->getScope(Ljava/lang/Object;)Lnet/grandcentrix/thirtyinch/internal/PresenterScope;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lnet/grandcentrix/thirtyinch/internal/PresenterScope;

    invoke-direct {v0}, Lnet/grandcentrix/thirtyinch/internal/PresenterScope;-><init>()V

    .line 170
    invoke-direct {p0, p2}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->generateId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->mScopes:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 173
    :goto_0
    invoke-direct {p0, p1}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->generateId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {v0, v2, p1}, Lnet/grandcentrix/thirtyinch/internal/PresenterScope;->save(Ljava/lang/String;Lnet/grandcentrix/thirtyinch/TiPresenter;)V

    if-eqz v1, :cond_2

    .line 178
    instance-of p1, p2, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 179
    check-cast p2, Landroid/app/Activity;

    .line 180
    invoke-direct {p0, p2, v1}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->observeActivityFinish(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_1
    new-instance p1, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior$IllegalHostException;

    invoke-direct {p1, p2}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior$IllegalHostException;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 187
    :cond_2
    :goto_1
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/internal/PresenterSavior;->printRemainingPresenter()V

    return-object v2
.end method
