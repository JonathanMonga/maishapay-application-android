.class public abstract Lnet/grandcentrix/thirtyinch/TiPresenter;
.super Ljava/lang/Object;
.source "TiPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/grandcentrix/thirtyinch/TiPresenter$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lnet/grandcentrix/thirtyinch/TiView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sDefaultConfig:Lnet/grandcentrix/thirtyinch/TiConfiguration;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCalled:Z

.field private final mConfig:Lnet/grandcentrix/thirtyinch/TiConfiguration;

.field final mLifecycleObservers:Ljava/util/List;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPostponedViewActions:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lnet/grandcentrix/thirtyinch/ViewAction<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private mState:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

.field private mUiThreadExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mView:Lnet/grandcentrix/thirtyinch/TiView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->DEFAULT:Lnet/grandcentrix/thirtyinch/TiConfiguration;

    sput-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter;->sDefaultConfig:Lnet/grandcentrix/thirtyinch/TiConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 110
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter;->sDefaultConfig:Lnet/grandcentrix/thirtyinch/TiConfiguration;

    invoke-direct {p0, v0}, Lnet/grandcentrix/thirtyinch/TiPresenter;-><init>(Lnet/grandcentrix/thirtyinch/TiConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lnet/grandcentrix/thirtyinch/TiConfiguration;)V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mLifecycleObservers:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lnet/grandcentrix/thirtyinch/TiPresenter;

    .line 80
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    .line 92
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mPostponedViewActions:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 94
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->INITIALIZED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mState:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    .line 118
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mConfig:Lnet/grandcentrix/thirtyinch/TiConfiguration;

    return-void
.end method

.method private moveToState(Lnet/grandcentrix/thirtyinch/TiPresenter$State;Z)V
    .locals 3

    .line 587
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mState:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-eqz p2, :cond_0

    if-eq p1, v0, :cond_0

    .line 591
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "first call moveToState(<state>, false);"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-eq p1, v0, :cond_5

    .line 596
    sget-object v1, Lnet/grandcentrix/thirtyinch/TiPresenter$3;->$SwitchMap$net$grandcentrix$thirtyinch$TiPresenter$State:[I

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 626
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "once destroyed the presenter can\'t be moved to a different state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 618
    :pswitch_1
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_DETACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 622
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t move to state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", the next state after VIEW_ATTACHED has to be VIEW_DETACHED"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 606
    :pswitch_2
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_ATTACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 609
    :cond_2
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->DESTROYED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 613
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t move to state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", the allowed states after VIEW_DETACHED are VIEW_ATTACHED or DESTROYED"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 598
    :pswitch_3
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_DETACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 602
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t move to state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", the next state after INITIALIZED has to be VIEW_DETACHED"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 630
    :goto_0
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mState:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    .line 633
    :cond_5
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mLifecycleObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mLifecycleObservers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 637
    sget-object v1, Lnet/grandcentrix/thirtyinch/TiPresenter$3;->$SwitchMap$net$grandcentrix$thirtyinch$TiPresenter$State:[I

    invoke-virtual {p1}, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 648
    :pswitch_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    .line 649
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;

    invoke-interface {v2, p1, p2}, Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;->onChange(Lnet/grandcentrix/thirtyinch/TiPresenter$State;Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :pswitch_5
    const/4 v1, 0x0

    .line 640
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 641
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;

    invoke-interface {v2, p1, p2}, Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;->onChange(Lnet/grandcentrix/thirtyinch/TiPresenter$State;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private sendPostponedActionsToView(Lnet/grandcentrix/thirtyinch/TiView;)V
    .locals 1
    .param p1    # Lnet/grandcentrix/thirtyinch/TiView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 661
    :goto_0
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mPostponedViewActions:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mPostponedViewActions:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/grandcentrix/thirtyinch/ViewAction;

    invoke-interface {v0, p1}, Lnet/grandcentrix/thirtyinch/ViewAction;->call(Lnet/grandcentrix/thirtyinch/TiView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setDefaultConfig(Lnet/grandcentrix/thirtyinch/TiConfiguration;)V
    .locals 0

    .line 105
    sput-object p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->sDefaultConfig:Lnet/grandcentrix/thirtyinch/TiConfiguration;

    return-void
.end method


# virtual methods
.method public addLifecycleObserver(Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;)Lnet/grandcentrix/thirtyinch/Removable;
    .locals 2

    .line 133
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mState:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    sget-object v1, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->DESTROYED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-ne v0, v1, :cond_0

    .line 134
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Don\'t add observers when the presenter reached the DESTROYED state. They wont get any new events anyways."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_0
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mLifecycleObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Lnet/grandcentrix/thirtyinch/TiPresenter$1;

    invoke-direct {v0, p0, p1}, Lnet/grandcentrix/thirtyinch/TiPresenter$1;-><init>(Lnet/grandcentrix/thirtyinch/TiPresenter;Lnet/grandcentrix/thirtyinch/TiLifecycleObserver;)V

    return-object v0
.end method

.method public attachView(Lnet/grandcentrix/thirtyinch/TiView;)V
    .locals 3
    .param p1    # Lnet/grandcentrix/thirtyinch/TiView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 160
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "the view cannot be set to null. Call #detachView() instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The presenter is already in it\'s terminal state and waits for garbage collection. Binding a view is not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_1
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mView:Lnet/grandcentrix/thirtyinch/TiView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 172
    iget-object p1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->TAG:Ljava/lang/String;

    const-string v0, "not calling onAttachView(), view already attached"

    invoke-static {p1, v0}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "a view is already attached, call #detachView first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_3
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 181
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Presenter is not created, call #create() first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_4
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mView:Lnet/grandcentrix/thirtyinch/TiView;

    .line 185
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_ATTACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->moveToState(Lnet/grandcentrix/thirtyinch/TiPresenter$State;Z)V

    .line 186
    iput-boolean v1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    .line 187
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->TAG:Ljava/lang/String;

    const-string v2, "onAttachView(TiView)"

    invoke-static {v0, v2}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->onAttachView(Lnet/grandcentrix/thirtyinch/TiView;)V

    .line 189
    iget-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    if-nez v0, :cond_5

    .line 190
    new-instance p1, Lnet/grandcentrix/thirtyinch/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Presenter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onAttachView(TiView)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/grandcentrix/thirtyinch/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_5
    iput-boolean v1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    .line 194
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->TAG:Ljava/lang/String;

    const-string v1, "deprecated onWakeUp()"

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->onWakeUp()V

    .line 196
    iget-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    if-nez v0, :cond_6

    .line 197
    new-instance p1, Lnet/grandcentrix/thirtyinch/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Presenter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onWakeUp()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/grandcentrix/thirtyinch/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_6
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_ATTACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->moveToState(Lnet/grandcentrix/thirtyinch/TiPresenter$State;Z)V

    .line 202
    invoke-direct {p0, p1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->sendPostponedActionsToView(Lnet/grandcentrix/thirtyinch/TiView;)V

    return-void
.end method

.method public final create()V
    .locals 3

    .line 213
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->TAG:Ljava/lang/String;

    const-string v1, "not calling onCreate(), it was already called"

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 217
    :cond_0
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_DETACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->moveToState(Lnet/grandcentrix/thirtyinch/TiPresenter$State;Z)V

    .line 218
    iput-boolean v1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    .line 219
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->onCreate()V

    .line 221
    iget-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Lnet/grandcentrix/thirtyinch/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Presenter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/grandcentrix/thirtyinch/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_DETACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->moveToState(Lnet/grandcentrix/thirtyinch/TiPresenter$State;Z)V

    return-void
.end method

.method public final destroy()V
    .locals 3

    .line 236
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "view is attached, can\'t destroy the presenter. First call detachView()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 246
    :cond_1
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->DESTROYED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->moveToState(Lnet/grandcentrix/thirtyinch/TiPresenter$State;Z)V

    .line 247
    iput-boolean v1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    .line 248
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->onDestroy()V

    .line 250
    iget-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    if-nez v0, :cond_2

    .line 251
    new-instance v0, Lnet/grandcentrix/thirtyinch/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Presenter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/grandcentrix/thirtyinch/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_2
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->DESTROYED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->moveToState(Lnet/grandcentrix/thirtyinch/TiPresenter$State;Z)V

    .line 257
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mLifecycleObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 242
    :cond_3
    :goto_0
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->TAG:Ljava/lang/String;

    const-string v1, "not calling onDestroy(), destroy was already called"

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final detachView()V
    .locals 3

    .line 269
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->isViewAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->TAG:Ljava/lang/String;

    const-string v1, "not calling onDetachView(), not woken up"

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 273
    :cond_0
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_DETACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->moveToState(Lnet/grandcentrix/thirtyinch/TiPresenter$State;Z)V

    .line 274
    iput-boolean v1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    .line 275
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->TAG:Ljava/lang/String;

    const-string v2, "deprecated onSleep()"

    invoke-static {v0, v2}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->onSleep()V

    .line 277
    iget-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    if-nez v0, :cond_1

    .line 278
    new-instance v0, Lnet/grandcentrix/thirtyinch/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Presenter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onSleep()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/grandcentrix/thirtyinch/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_1
    iput-boolean v1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    .line 282
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onDetachView()"

    invoke-static {v0, v1}, Lnet/grandcentrix/thirtyinch/TiLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->onDetachView()V

    .line 284
    iget-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    if-nez v0, :cond_2

    .line 285
    new-instance v0, Lnet/grandcentrix/thirtyinch/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Presenter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetachView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/grandcentrix/thirtyinch/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_2
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_DETACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->moveToState(Lnet/grandcentrix/thirtyinch/TiPresenter$State;Z)V

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mView:Lnet/grandcentrix/thirtyinch/TiView;

    return-void
.end method

.method public getConfig()Lnet/grandcentrix/thirtyinch/TiConfiguration;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 298
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mConfig:Lnet/grandcentrix/thirtyinch/TiConfiguration;

    return-object v0
.end method

.method protected getQueuedViewActions()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lnet/grandcentrix/thirtyinch/ViewAction<",
            "TV;>;>;"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mPostponedViewActions:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public getState()Lnet/grandcentrix/thirtyinch/TiPresenter$State;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 306
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mState:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    return-object v0
.end method

.method public getView()Lnet/grandcentrix/thirtyinch/TiView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mView:Lnet/grandcentrix/thirtyinch/TiView;

    return-object v0
.end method

.method public getViewOrThrow()Lnet/grandcentrix/thirtyinch/TiView;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 334
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The view is currently not attached. Use \'sendToView(ViewAction)\' instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public isDestroyed()Z
    .locals 2

    .line 344
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mState:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    sget-object v1, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->DESTROYED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitialized()Z
    .locals 2

    .line 348
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mState:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    sget-object v1, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_DETACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isViewAttached()Z
    .locals 2

    .line 352
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mState:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    sget-object v1, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_ATTACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachView(Lnet/grandcentrix/thirtyinch/TiView;)V
    .locals 1
    .param p1    # Lnet/grandcentrix/thirtyinch/TiView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 508
    iget-boolean p1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    if-eqz p1, :cond_0

    .line 509
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string v0, "don\'t call #onAttachView(TiView) directly, call #attachView(TiView)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x1

    .line 512
    iput-boolean p1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    return-void
.end method

.method protected onCreate()V
    .locals 2

    .line 524
    iget-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    if-eqz v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "don\'t call #onCreate() directly, call #create()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    .line 527
    iput-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 538
    iget-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    if-eqz v0, :cond_0

    .line 539
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "don\'t call #onDestroy() directly, call #destroy()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    .line 541
    iput-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    return-void
.end method

.method protected onDetachView()V
    .locals 2

    .line 552
    iget-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    if-eqz v0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "don\'t call #onDetachView() directly, call #detachView()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    .line 555
    iput-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    return-void
.end method

.method protected onSleep()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 563
    iget-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    if-eqz v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "don\'t call #onSleep() directly, call #detachView()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    .line 566
    iput-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    return-void
.end method

.method protected onWakeUp()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 574
    iget-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    if-eqz v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "don\'t call #onWakeUp() directly, call #attachView(TiView)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    .line 578
    iput-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mCalled:Z

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 366
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 369
    :cond_0
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object p1

    if-nez p1, :cond_1

    .line 370
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "view is not attached, no executor available to run ui interactions on"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 373
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no ui thread executor available"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendToView(Lnet/grandcentrix/thirtyinch/ViewAction;)V
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->SUBCLASSES:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/grandcentrix/thirtyinch/ViewAction<",
            "TV;>;)V"
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    new-instance v1, Lnet/grandcentrix/thirtyinch/TiPresenter$2;

    invoke-direct {v1, p0, p1, v0}, Lnet/grandcentrix/thirtyinch/TiPresenter$2;-><init>(Lnet/grandcentrix/thirtyinch/TiPresenter;Lnet/grandcentrix/thirtyinch/ViewAction;Lnet/grandcentrix/thirtyinch/TiView;)V

    invoke-virtual {p0, v1}, Lnet/grandcentrix/thirtyinch/TiPresenter;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mPostponedViewActions:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setUiThreadExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 426
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/TiPresenter;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public test()Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/grandcentrix/thirtyinch/test/TiTestPresenter<",
            "TV;>;"
        }
    .end annotation

    .line 475
    new-instance v0, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;

    invoke-direct {v0, p0}, Lnet/grandcentrix/thirtyinch/test/TiTestPresenter;-><init>(Lnet/grandcentrix/thirtyinch/TiPresenter;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 481
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lnet/grandcentrix/thirtyinch/TiPresenter;->getView()Lnet/grandcentrix/thirtyinch/TiView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 486
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

    const-class v2, Lnet/grandcentrix/thirtyinch/TiPresenter;

    .line 487
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
