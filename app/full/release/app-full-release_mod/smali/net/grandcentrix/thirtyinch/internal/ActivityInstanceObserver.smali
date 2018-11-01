.class public Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;
.super Ljava/lang/Object;
.source "ActivityInstanceObserver.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver$ActivityFinishListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityInstanceObserver"

.field static final TI_ACTIVITY_ID_KEY:Ljava/lang/String; = "ThirtyInch_Activity_id"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mListener:Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver$ActivityFinishListener;

.field private final mScopeIdForActivity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver$ActivityFinishListener;)V
    .locals 1
    .param p1    # Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver$ActivityFinishListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;->mScopeIdForActivity:Ljava/util/HashMap;

    .line 57
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;->mListener:Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver$ActivityFinishListener;

    return-void
.end method


# virtual methods
.method public getActivityId(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 79
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;->mScopeIdForActivity:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "ThirtyInch_Activity_id"

    .line 63
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 66
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;->mScopeIdForActivity:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 84
    sget-object v0, Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFinishing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;->mScopeIdForActivity:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;->mListener:Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver$ActivityFinishListener;

    invoke-interface {v1, p1, v0}, Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver$ActivityFinishListener;->onActivityFinished(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;->mScopeIdForActivity:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;->mScopeIdForActivity:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "ThirtyInch_Activity_id"

    .line 116
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public startTracking(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/ActivityInstanceObserver;->mScopeIdForActivity:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
