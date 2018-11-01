.class public Lcom/maishapay/app/MaishapayApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "MaishapayApplication.java"


# static fields
.field private static application:Lcom/maishapay/app/MaishapayApplication;


# instance fields
.field private mSoundManager:Lorg/alfonz/media/SoundManager;

.field private maishapayClient:Lcom/maishapay/model/client/MaishapayClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method public static getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;
    .locals 1

    .line 57
    sget-object v0, Lcom/maishapay/app/MaishapayApplication;->application:Lcom/maishapay/app/MaishapayApplication;

    return-object v0
.end method

.method private load()V
    .locals 2

    .line 65
    new-instance v0, Lcom/maishapay/app/MaishapayApplication$1;

    invoke-direct {v0, p0}, Lcom/maishapay/app/MaishapayApplication$1;-><init>(Lcom/maishapay/app/MaishapayApplication;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 77
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 78
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-static {p1}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 53
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getMaishapayClient()Lcom/maishapay/model/client/MaishapayClient;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/maishapay/app/MaishapayApplication;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    return-object v0
.end method

.method public getmSoundManager()Lorg/alfonz/media/SoundManager;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/maishapay/app/MaishapayApplication;->mSoundManager:Lorg/alfonz/media/SoundManager;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 43
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 44
    sput-object p0, Lcom/maishapay/app/MaishapayApplication;->application:Lcom/maishapay/app/MaishapayApplication;

    .line 45
    invoke-direct {p0}, Lcom/maishapay/app/MaishapayApplication;->load()V

    .line 46
    invoke-static {}, Lcom/maishapay/model/client/MaishapayClient;->getInstance()Lcom/maishapay/model/client/MaishapayClient;

    move-result-object v0

    iput-object v0, p0, Lcom/maishapay/app/MaishapayApplication;->maishapayClient:Lcom/maishapay/model/client/MaishapayClient;

    .line 47
    new-instance v0, Lorg/alfonz/media/SoundManager;

    sget-object v1, Lcom/maishapay/app/MaishapayApplication;->application:Lcom/maishapay/app/MaishapayApplication;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/alfonz/media/SoundManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/maishapay/app/MaishapayApplication;->mSoundManager:Lorg/alfonz/media/SoundManager;

    return-void
.end method
