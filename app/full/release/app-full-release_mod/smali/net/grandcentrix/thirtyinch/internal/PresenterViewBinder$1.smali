.class Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder$1;
.super Lnet/grandcentrix/thirtyinch/internal/OneTimeRemovable;
.source "PresenterViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->addBindViewInterceptor(Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)Lnet/grandcentrix/thirtyinch/Removable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

.field final synthetic val$interceptor:Lnet/grandcentrix/thirtyinch/BindViewInterceptor;


# direct methods
.method constructor <init>(Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;Lnet/grandcentrix/thirtyinch/BindViewInterceptor;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder$1;->this$0:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

    iput-object p2, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder$1;->val$interceptor:Lnet/grandcentrix/thirtyinch/BindViewInterceptor;

    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/internal/OneTimeRemovable;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemove()V
    .locals 2

    .line 61
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder$1;->this$0:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

    invoke-static {v0}, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->access$000(Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder$1;->val$interceptor:Lnet/grandcentrix/thirtyinch/BindViewInterceptor;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder$1;->this$0:Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->invalidateView()V

    return-void
.end method
