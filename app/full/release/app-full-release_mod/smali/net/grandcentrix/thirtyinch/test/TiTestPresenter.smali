.class public Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;
.super Ljava/lang/Object;
.source "TiTestPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lnet/grandcentrix/thirtyinch/TiView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/grandcentrix/thirtyinch/TiPresenter<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/grandcentrix/thirtyinch/TiPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/grandcentrix/thirtyinch/TiPresenter<",
            "TV;>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    return-void
.end method


# virtual methods
.method public attachView(Lnet/grandcentrix/thirtyinch/TiView;)Lnet/grandcentrix/thirtyinch/TiView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;->detachView()V

    .line 84
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    new-instance v1, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter$1;

    invoke-direct {v1, p0}, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter$1;-><init>(Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;)V

    invoke-virtual {v0, v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->setUiThreadExecutor(Ljava/util/concurrent/Executor;)V

    .line 90
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->attachView(Lnet/grandcentrix/thirtyinch/TiView;)V

    return-object p1
.end method

.method public create()V
    .locals 1

    .line 100
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->create()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;->detachView()V

    .line 110
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->destroy()V

    return-void
.end method

.method public detachView()V
    .locals 2

    .line 120
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getState()Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    move-result-object v0

    .line 121
    sget-object v1, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter$2;->$SwitchMap$net$grandcentrix$thirtyinch$TiPresenter$State:[I

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Presenter is already destroyed, further lifecycle changes aren\'t allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->detachView()V

    .line 130
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->setUiThreadExecutor(Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;->mPresenter:Lnet/grandcentrix/thirtyinch/TiPresenter;

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->create()V

    :goto_0
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
