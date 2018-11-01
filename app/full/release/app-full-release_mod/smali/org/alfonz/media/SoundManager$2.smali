.class Lorg/alfonz/media/SoundManager$2;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/alfonz/media/SoundManager;Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/alfonz/media/SoundManager$2;->this$0:Lorg/alfonz/media/SoundManager;

    iput-object p2, p0, Lorg/alfonz/media/SoundManager$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1    # Landroid/media/MediaPlayer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 118
    iget-object v0, p0, Lorg/alfonz/media/SoundManager$2;->this$0:Lorg/alfonz/media/SoundManager;

    invoke-static {v0}, Lorg/alfonz/media/SoundManager;->access$000(Lorg/alfonz/media/SoundManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/alfonz/media/SoundManager$2;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method
