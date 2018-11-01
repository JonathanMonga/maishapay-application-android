.class Lnet/grandcentrix/thirtyinch/test/TiTestPresenter$1;
.super Ljava/lang/Object;
.source "TiTestPresenter.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;->attachView(Lnet/grandcentrix/thirtyinch/TiView;)Lnet/grandcentrix/thirtyinch/TiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;


# direct methods
.method constructor <init>(Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter$1;->this$0:Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
