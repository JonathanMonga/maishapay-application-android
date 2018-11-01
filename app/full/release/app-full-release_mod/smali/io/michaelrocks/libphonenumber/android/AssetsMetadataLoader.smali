.class public Lio/michaelrocks/libphonenumber/android/AssetsMetadataLoader;
.super Ljava/lang/Object;
.source "AssetsMetadataLoader.java"

# interfaces
.implements Lio/michaelrocks/libphonenumber/android/MetadataLoader;


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AssetsMetadataLoader;->assetManager:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 35
    :try_start_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AssetsMetadataLoader;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
