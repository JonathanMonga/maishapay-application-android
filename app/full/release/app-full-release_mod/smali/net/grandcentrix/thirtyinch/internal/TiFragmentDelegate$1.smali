.class Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate$1;
.super Ljava/lang/Object;
.source "TiFragmentDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->onStart_afterSuper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;


# direct methods
.method constructor <init>(Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate$1;->this$0:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 246
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate$1;->this$0:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-static {v0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->access$000(Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate$1;->this$0:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-static {v0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->access$100(Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate$1;->this$0:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-static {v0}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->access$400(Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;)Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;

    move-result-object v0

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate$1;->this$0:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-static {v1}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->access$200(Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;)Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v1

    iget-object v2, p0, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate$1;->this$0:Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;

    invoke-static {v2}, Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;->access$300(Lnet/grandcentrix/thirtyinch/internal/TiFragmentDelegate;)Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/thirtyinch/internal/PresenterViewBinder;->bindView(Lnet/grandcentrix/thirtyinch/TiPresenter;Lnet/grandcentrix/thirtyinch/internal/TiViewProvider;)V

    :cond_0
    return-void
.end method
