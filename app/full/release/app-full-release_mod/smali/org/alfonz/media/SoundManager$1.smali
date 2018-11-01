.class Lorg/alfonz/media/SoundManager$1;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/alfonz/media/SoundManager;->playSound(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alfonz/media/SoundManager;


# direct methods
.method constructor <init>(Lorg/alfonz/media/SoundManager;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lorg/alfonz/media/SoundManager$1;->this$0:Lorg/alfonz/media/SoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
