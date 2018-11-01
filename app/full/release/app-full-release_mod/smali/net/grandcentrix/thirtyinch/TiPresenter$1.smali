.class Lnet/grandcentrix/thirtyinch/TiPresenter$1;
.super Lnet/grandcentrix/thirtyinch/internal/OneTimeRemovable;
.source "TiPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/grandcentrix/thirtyinch/TiPresenter;->addLifecycleObserver(Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;)Lnet/grandcentrix/thirtyinch/Removable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/grandcentrix/thirtyinch/TiPresenter;

.field final synthetic val$observer:Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;


# direct methods
.method constructor <init>(Lnet/grandcentrix/thirtyinch/TiPresenter;Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter$1;->this$0:Lnet/grandcentrix/thirtyinch/TiPresenter;

    iput-object p2, p0, Lnet/grandcentrix/thirtyinch/TiPresenter$1;->val$observer:Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;

    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/internal/OneTimeRemovable;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemove()V
    .locals 2

    .line 145
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter$1;->this$0:Lnet/grandcentrix/thirtyinch/TiPresenter;

    iget-object v0, v0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mLifecycleObservers:Ljava/util/List;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter$1;->val$observer:Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
