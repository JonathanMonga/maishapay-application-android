.class public Lorg/alfonz/media/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alfonz/media/SoundManager$Mode;
    }
.end annotation


# static fields
.field public static final PLAY_MULTIPLE_CONTINUE:I = 0x2

.field public static final PLAY_SINGLE:I = 0x0

.field public static final PLAY_SINGLE_CONTINUE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMediaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/alfonz/media/SoundManager;->mContext:Landroid/content/Context;

    .line 33
    iput p2, p0, Lorg/alfonz/media/SoundManager;->mMode:I

    .line 34
    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lorg/alfonz/media/SoundManager;->mMediaMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lorg/alfonz/media/SoundManager;)Ljava/util/Map;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/alfonz/media/SoundManager;->mMediaMap:Ljava/util/Map;

    return-object p0
.end method

.method private playSound(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/AssetFileDescriptor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    iget v0, p0, Lorg/alfonz/media/SoundManager;->mMode:I

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/alfonz/media/SoundManager;->stopAll()V

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/alfonz/media/SoundManager;->mMediaMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 83
    :cond_1
    iget v0, p0, Lorg/alfonz/media/SoundManager;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 84
    invoke-virtual {p0}, Lorg/alfonz/media/SoundManager;->stopAll()V

    .line 90
    :cond_2
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 91
    iget-object v1, p0, Lorg/alfonz/media/SoundManager;->mMediaMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 95
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 100
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    new-instance p2, Lorg/alfonz/media/SoundManager$1;

    invoke-direct {p2, p0}, Lorg/alfonz/media/SoundManager$1;-><init>(Lorg/alfonz/media/SoundManager;)V

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 115
    new-instance p2, Lorg/alfonz/media/SoundManager$2;

    invoke-direct {p2, p0, p1}, Lorg/alfonz/media/SoundManager$2;-><init>(Lorg/alfonz/media/SoundManager;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public play(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lorg/alfonz/media/SoundManager;->playSound(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public playAsset(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    :try_start_0
    iget-object v0, p0, Lorg/alfonz/media/SoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    invoke-direct {p0, p1, v0}, Lorg/alfonz/media/SoundManager;->playSound(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;)V

    return-void

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public stopAll()V
    .locals 3

    .line 57
    iget-object v0, p0, Lorg/alfonz/media/SoundManager;->mMediaMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 60
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 64
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lorg/alfonz/media/SoundManager;->mMediaMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
