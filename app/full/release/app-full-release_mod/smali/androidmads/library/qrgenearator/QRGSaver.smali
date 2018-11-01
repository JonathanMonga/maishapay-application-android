.class public Landroidmads/library/qrgenearator/QRGSaver;
.super Ljava/lang/Object;
.source "QRGSaver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compressFormat(I)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Comparable<",
            "+",
            "Ljava/lang/Comparable<",
            "+",
            "Ljava/lang/Comparable<",
            "*>;>;>;"
        }
    .end annotation

    .line 44
    sget v0, Landroidmads/library/qrgenearator/QRGContents$ImageType;->IMAGE_PNG:I

    if-ne p0, v0, :cond_0

    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object p0
.end method

.method private static imgFormat(I)Ljava/lang/String;
    .locals 1

    .line 40
    sget v0, Landroidmads/library/qrgenearator/QRGContents$ImageType;->IMAGE_PNG:I

    if-ne p0, v0, :cond_0

    const-string p0, ".png"

    goto :goto_0

    :cond_0
    const-string p0, ".jpg"

    :goto_0
    return-object p0
.end method

.method public static save(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroidmads/library/qrgenearator/QRGSaver;->imgFormat(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    :cond_0
    const-string p0, "QRGSaver"

    const-string v0, "Folder Exists"

    .line 24
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_0
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {p3}, Landroidmads/library/qrgenearator/QRGSaver;->compressFormat(I)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap$CompressFormat;

    const/16 p3, 0x64

    invoke-virtual {p2, p1, p3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 29
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 30
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "QRGSaver"

    .line 33
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_1
    return p0
.end method
