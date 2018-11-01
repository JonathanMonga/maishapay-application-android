.class Lnet/grandcentrix/thirtyinch/TiPresenter$2;
.super Ljava/lang/Object;
.source "TiPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/grandcentrix/thirtyinch/TiPresenter;->sendToView(Lnet/grandcentrix/thirtyinch/ViewAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/grandcentrix/thirtyinch/TiPresenter;

.field final synthetic val$action:Lnet/grandcentrix/thirtyinch/ViewAction;

.field final synthetic val$view:Lnet/grandcentrix/thirtyinch/TiView;


# direct methods
.method constructor <init>(Lnet/grandcentrix/thirtyinch/TiPresenter;Lnet/grandcentrix/thirtyinch/ViewAction;Lnet/grandcentrix/thirtyinch/TiView;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter$2;->this$0:Lnet/grandcentrix/thirtyinch/TiPresenter;

    iput-object p2, p0, Lnet/grandcentrix/thirtyinch/TiPresenter$2;->val$action:Lnet/grandcentrix/thirtyinch/ViewAction;

    iput-object p3, p0, Lnet/grandcentrix/thirtyinch/TiPresenter$2;->val$view:Lnet/grandcentrix/thirtyinch/TiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 407
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter$2;->val$action:Lnet/grandcentrix/thirtyinch/ViewAction;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter$2;->val$view:Lnet/grandcentrix/thirtyinch/TiView;

    invoke-interface {v0, v1}, Lnet/grandcentrix/thirtyinch/ViewAction;->call(Lnet/grandcentrix/thirtyinch/TiView;)V

    return-void
.end method
