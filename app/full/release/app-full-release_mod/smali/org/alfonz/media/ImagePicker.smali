.class public Lorg/alfonz/media/ImagePicker;
.super Ljava/lang/Object;
.source "ImagePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alfonz/media/ImagePicker$FragmentPickable;,
        Lorg/alfonz/media/ImagePicker$ActivityPickable;,
        Lorg/alfonz/media/ImagePicker$ImagePickable;,
        Lorg/alfonz/media/ImagePicker$ImagePickerCallback;,
        Lorg/alfonz/media/ImagePicker$CanceledAction;,
        Lorg/alfonz/media/ImagePicker$PickedAction;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_CAMERA:I = 0x1

.field private static final REQUEST_CODE_GALLERY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ALFONZ"


# instance fields
.field private final mAlbumDirectoryName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mImageFromCameraPath:Ljava/lang/String;

.field private mImagePickerCallback:Lorg/alfonz/media/ImagePicker$ImagePickerCallback;

.field private final mImageSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x280

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lorg/alfonz/media/ImagePicker;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/alfonz/media/ImagePicker;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lorg/alfonz/media/ImagePicker;->mAlbumDirectoryName:Ljava/lang/String;

    .line 64
    iput p3, p0, Lorg/alfonz/media/ImagePicker;->mImageSize:I

    return-void
.end method

.method private addImageToGallery(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 305
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 306
    iget-object p1, p0, Lorg/alfonz/media/ImagePicker;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 307
    iget-object p1, p0, Lorg/alfonz/media/ImagePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private createImageFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-direct {p0, p1}, Lorg/alfonz/media/ImagePicker;->getAlbumDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v1, ".jpg"

    .line 266
    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private getAlbumDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "mounted"

    .line 271
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ALFONZ"

    const-string v0, "failed to create album directory"

    .line 275
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string p1, "ALFONZ"

    const-string v0, "external storage is not mounted"

    .line 280
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private getBitmapRotation(Ljava/lang/String;)I
    .locals 1

    .line 348
    invoke-direct {p0, p1}, Lorg/alfonz/media/ImagePicker;->getExifOrientation(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10e

    goto :goto_0

    :cond_1
    const/16 p1, 0x5a

    goto :goto_0

    :cond_2
    const/16 p1, 0xb4

    :goto_0
    return p1
.end method

.method private getExifOrientation(Ljava/lang/String;)I
    .locals 2

    .line 371
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    const/4 v1, -0x1

    .line 372
    invoke-virtual {v0, p1, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 374
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 288
    iget-object v0, p0, Lorg/alfonz/media/ImagePicker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 289
    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v3, v0

    .line 290
    iget-object v0, p0, Lorg/alfonz/media/ImagePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 292
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_data"

    .line 293
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 294
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private handleImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11

    .line 312
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 313
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 314
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 317
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x4

    .line 318
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 324
    :try_start_0
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 325
    :try_start_1
    iget v2, p0, Lorg/alfonz/media/ImagePicker;->mImageSize:I

    iget v3, p0, Lorg/alfonz/media/ImagePicker;->mImageSize:I

    invoke-static {v0, v2, v3}, Lorg/alfonz/graphics/bitmap/BitmapScaler;->scaleToFill(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 336
    :cond_0
    invoke-direct {p0, p1}, Lorg/alfonz/media/ImagePicker;->getBitmapRotation(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 338
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 339
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v9, p1, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 340
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_1
    return-object v4

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, v1

    .line 327
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 331
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 333
    :cond_3
    throw p1
.end method

.method private handleImageFromCamera()Landroid/support/v4/util/Pair;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/alfonz/media/ImagePicker;->mImageFromCameraPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0, v0}, Lorg/alfonz/media/ImagePicker;->addImageToGallery(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0, v0}, Lorg/alfonz/media/ImagePicker;->handleImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 239
    iput-object v1, p0, Lorg/alfonz/media/ImagePicker;->mImageFromCameraPath:Ljava/lang/String;

    move-object v1, v2

    .line 242
    :cond_0
    new-instance v2, Landroid/support/v4/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private handleImageFromGallery(Landroid/content/Intent;)Landroid/support/v4/util/Pair;
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/support/v4/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 252
    invoke-direct {p0, p1}, Lorg/alfonz/media/ImagePicker;->getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 255
    invoke-direct {p0, p1}, Lorg/alfonz/media/ImagePicker;->handleImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 259
    :cond_1
    :goto_0
    new-instance v1, Landroid/support/v4/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private onActivityResult(Lorg/alfonz/media/ImagePicker$ImagePickable;IILandroid/content/Intent;)V
    .locals 1
    .param p1    # Lorg/alfonz/media/ImagePicker$ImagePickable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/alfonz/media/ImagePicker$ImagePickable<",
            "TT;>;II",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/alfonz/media/ImagePicker;->mImagePickerCallback:Lorg/alfonz/media/ImagePicker$ImagePickerCallback;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 215
    :pswitch_0
    invoke-direct {p0, p4}, Lorg/alfonz/media/ImagePicker;->handleImageFromGallery(Landroid/content/Intent;)Landroid/support/v4/util/Pair;

    move-result-object p2

    .line 216
    iget-object p3, p2, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Landroid/graphics/Bitmap;

    .line 217
    iget-object p2, p2, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 219
    iget-object p4, p0, Lorg/alfonz/media/ImagePicker;->mImagePickerCallback:Lorg/alfonz/media/ImagePicker$ImagePickerCallback;

    invoke-interface {p1}, Lorg/alfonz/media/ImagePicker$ImagePickable;->getPickable()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, p1, p3, p2}, Lorg/alfonz/media/ImagePicker$ImagePickerCallback;->onImagePicked(Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :pswitch_1
    invoke-direct {p0}, Lorg/alfonz/media/ImagePicker;->handleImageFromCamera()Landroid/support/v4/util/Pair;

    move-result-object p2

    .line 206
    iget-object p3, p2, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Landroid/graphics/Bitmap;

    .line 207
    iget-object p2, p2, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 209
    iget-object p4, p0, Lorg/alfonz/media/ImagePicker;->mImagePickerCallback:Lorg/alfonz/media/ImagePicker$ImagePickerCallback;

    invoke-interface {p1}, Lorg/alfonz/media/ImagePicker$ImagePickable;->getPickable()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, p1, p3, p2}, Lorg/alfonz/media/ImagePicker$ImagePickerCallback;->onImagePicked(Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 225
    iget-object p2, p0, Lorg/alfonz/media/ImagePicker;->mImagePickerCallback:Lorg/alfonz/media/ImagePicker$ImagePickerCallback;

    invoke-interface {p1}, Lorg/alfonz/media/ImagePicker$ImagePickable;->getPickable()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/alfonz/media/ImagePicker$ImagePickerCallback;->onImageCanceled(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lorg/alfonz/media/ImagePicker;->mImagePickerCallback:Lorg/alfonz/media/ImagePicker$ImagePickerCallback;

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private pickImageFromCamera(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$ImagePickerCallback;)V
    .locals 3
    .param p1    # Lorg/alfonz/media/ImagePicker$ImagePickable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$ImagePickerCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/alfonz/media/ImagePicker$ImagePickable<",
            "TT;>;",
            "Lorg/alfonz/media/ImagePicker$ImagePickerCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    :try_start_0
    iget-object v1, p0, Lorg/alfonz/media/ImagePicker;->mAlbumDirectoryName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/alfonz/media/ImagePicker;->createImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/alfonz/media/ImagePicker;->mImageFromCameraPath:Ljava/lang/String;

    const-string v2, "output"

    .line 181
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 183
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    .line 184
    iput-object v1, p0, Lorg/alfonz/media/ImagePicker;->mImageFromCameraPath:Ljava/lang/String;

    .line 187
    :goto_0
    iput-object p2, p0, Lorg/alfonz/media/ImagePicker;->mImagePickerCallback:Lorg/alfonz/media/ImagePicker$ImagePickerCallback;

    const/4 p2, 0x1

    .line 188
    invoke-interface {p1, v0, p2}, Lorg/alfonz/media/ImagePicker$ImagePickable;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private pickImageFromCamera(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$PickedAction;)V
    .locals 1
    .param p1    # Lorg/alfonz/media/ImagePicker$ImagePickable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$PickedAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/alfonz/media/ImagePicker$ImagePickable<",
            "TT;>;",
            "Lorg/alfonz/media/ImagePicker$PickedAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 124
    new-instance v0, Lorg/alfonz/media/ImagePicker$1;

    invoke-direct {v0, p0, p2}, Lorg/alfonz/media/ImagePicker$1;-><init>(Lorg/alfonz/media/ImagePicker;Lorg/alfonz/media/ImagePicker$PickedAction;)V

    invoke-direct {p0, p1, v0}, Lorg/alfonz/media/ImagePicker;->pickImageFromCamera(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$ImagePickerCallback;)V

    return-void
.end method

.method private pickImageFromCamera(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$PickedAction;Lorg/alfonz/media/ImagePicker$CanceledAction;)V
    .locals 1
    .param p1    # Lorg/alfonz/media/ImagePicker$ImagePickable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$PickedAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/media/ImagePicker$CanceledAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/alfonz/media/ImagePicker$ImagePickable<",
            "TT;>;",
            "Lorg/alfonz/media/ImagePicker$PickedAction<",
            "TT;>;",
            "Lorg/alfonz/media/ImagePicker$CanceledAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 148
    new-instance v0, Lorg/alfonz/media/ImagePicker$3;

    invoke-direct {v0, p0, p2, p3}, Lorg/alfonz/media/ImagePicker$3;-><init>(Lorg/alfonz/media/ImagePicker;Lorg/alfonz/media/ImagePicker$PickedAction;Lorg/alfonz/media/ImagePicker$CanceledAction;)V

    invoke-direct {p0, p1, v0}, Lorg/alfonz/media/ImagePicker;->pickImageFromCamera(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$ImagePickerCallback;)V

    return-void
.end method

.method private pickImageFromGallery(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$ImagePickerCallback;)V
    .locals 3
    .param p1    # Lorg/alfonz/media/ImagePicker$ImagePickable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$ImagePickerCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/alfonz/media/ImagePicker$ImagePickable<",
            "TT;>;",
            "Lorg/alfonz/media/ImagePicker$ImagePickerCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/jpeg"

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    iput-object p2, p0, Lorg/alfonz/media/ImagePicker;->mImagePickerCallback:Lorg/alfonz/media/ImagePicker$ImagePickerCallback;

    const/4 p2, 0x2

    .line 196
    invoke-interface {p1, v0, p2}, Lorg/alfonz/media/ImagePicker$ImagePickable;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private pickImageFromGallery(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$PickedAction;)V
    .locals 1
    .param p1    # Lorg/alfonz/media/ImagePicker$ImagePickable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$PickedAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/alfonz/media/ImagePicker$ImagePickable<",
            "TT;>;",
            "Lorg/alfonz/media/ImagePicker$PickedAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 136
    new-instance v0, Lorg/alfonz/media/ImagePicker$2;

    invoke-direct {v0, p0, p2}, Lorg/alfonz/media/ImagePicker$2;-><init>(Lorg/alfonz/media/ImagePicker;Lorg/alfonz/media/ImagePicker$PickedAction;)V

    invoke-direct {p0, p1, v0}, Lorg/alfonz/media/ImagePicker;->pickImageFromGallery(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$ImagePickerCallback;)V

    return-void
.end method

.method private pickImageFromGallery(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$PickedAction;Lorg/alfonz/media/ImagePicker$CanceledAction;)V
    .locals 1
    .param p1    # Lorg/alfonz/media/ImagePicker$ImagePickable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$PickedAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/media/ImagePicker$CanceledAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/alfonz/media/ImagePicker$ImagePickable<",
            "TT;>;",
            "Lorg/alfonz/media/ImagePicker$PickedAction<",
            "TT;>;",
            "Lorg/alfonz/media/ImagePicker$CanceledAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 162
    new-instance v0, Lorg/alfonz/media/ImagePicker$4;

    invoke-direct {v0, p0, p2, p3}, Lorg/alfonz/media/ImagePicker$4;-><init>(Lorg/alfonz/media/ImagePicker;Lorg/alfonz/media/ImagePicker$PickedAction;Lorg/alfonz/media/ImagePicker$CanceledAction;)V

    invoke-direct {p0, p1, v0}, Lorg/alfonz/media/ImagePicker;->pickImageFromGallery(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$ImagePickerCallback;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(TT;II",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 116
    new-instance v0, Lorg/alfonz/media/ImagePicker$ActivityPickable;

    invoke-direct {v0, p1}, Lorg/alfonz/media/ImagePicker$ActivityPickable;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/alfonz/media/ImagePicker;->onActivityResult(Lorg/alfonz/media/ImagePicker$ImagePickable;IILandroid/content/Intent;)V

    return-void
.end method

.method public onActivityResult(Landroid/support/v4/app/Fragment;IILandroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;II",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 120
    new-instance v0, Lorg/alfonz/media/ImagePicker$FragmentPickable;

    invoke-direct {v0, p1}, Lorg/alfonz/media/ImagePicker$FragmentPickable;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/alfonz/media/ImagePicker;->onActivityResult(Lorg/alfonz/media/ImagePicker$ImagePickable;IILandroid/content/Intent;)V

    return-void
.end method

.method public pickImageFromCamera(Landroid/app/Activity;Lorg/alfonz/media/ImagePicker$ImagePickerCallback;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$ImagePickerCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(TT;",
            "Lorg/alfonz/media/ImagePicker$ImagePickerCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/alfonz/media/ImagePicker$ActivityPickable;

    invoke-direct {v0, p1}, Lorg/alfonz/media/ImagePicker$ActivityPickable;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2}, Lorg/alfonz/media/ImagePicker;->pickImageFromCamera(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$ImagePickerCallback;)V

    return-void
.end method

.method public pickImageFromCamera(Landroid/app/Activity;Lorg/alfonz/media/ImagePicker$PickedAction;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$PickedAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(TT;",
            "Lorg/alfonz/media/ImagePicker$PickedAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/alfonz/media/ImagePicker$ActivityPickable;

    invoke-direct {v0, p1}, Lorg/alfonz/media/ImagePicker$ActivityPickable;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2}, Lorg/alfonz/media/ImagePicker;->pickImageFromCamera(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$PickedAction;)V

    return-void
.end method

.method public pickImageFromCamera(Landroid/app/Activity;Lorg/alfonz/media/ImagePicker$PickedAction;Lorg/alfonz/media/ImagePicker$CanceledAction;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$PickedAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/media/ImagePicker$CanceledAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(TT;",
            "Lorg/alfonz/media/ImagePicker$PickedAction<",
            "TT;>;",
            "Lorg/alfonz/media/ImagePicker$CanceledAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 76
    new-instance v0, Lorg/alfonz/media/ImagePicker$ActivityPickable;

    invoke-direct {v0, p1}, Lorg/alfonz/media/ImagePicker$ActivityPickable;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/alfonz/media/ImagePicker;->pickImageFromCamera(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$PickedAction;Lorg/alfonz/media/ImagePicker$CanceledAction;)V

    return-void
.end method

.method public pickImageFromCamera(Landroid/support/v4/app/Fragment;Lorg/alfonz/media/ImagePicker$ImagePickerCallback;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$ImagePickerCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;",
            "Lorg/alfonz/media/ImagePicker$ImagePickerCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/alfonz/media/ImagePicker$FragmentPickable;

    invoke-direct {v0, p1}, Lorg/alfonz/media/ImagePicker$FragmentPickable;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lorg/alfonz/media/ImagePicker;->pickImageFromCamera(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$ImagePickerCallback;)V

    return-void
.end method

.method public pickImageFromCamera(Landroid/support/v4/app/Fragment;Lorg/alfonz/media/ImagePicker$PickedAction;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$PickedAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;",
            "Lorg/alfonz/media/ImagePicker$PickedAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 72
    new-instance v0, Lorg/alfonz/media/ImagePicker$FragmentPickable;

    invoke-direct {v0, p1}, Lorg/alfonz/media/ImagePicker$FragmentPickable;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lorg/alfonz/media/ImagePicker;->pickImageFromCamera(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$PickedAction;)V

    return-void
.end method

.method public pickImageFromCamera(Landroid/support/v4/app/Fragment;Lorg/alfonz/media/ImagePicker$PickedAction;Lorg/alfonz/media/ImagePicker$CanceledAction;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$PickedAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/media/ImagePicker$CanceledAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;",
            "Lorg/alfonz/media/ImagePicker$PickedAction<",
            "TT;>;",
            "Lorg/alfonz/media/ImagePicker$CanceledAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/alfonz/media/ImagePicker$FragmentPickable;

    invoke-direct {v0, p1}, Lorg/alfonz/media/ImagePicker$FragmentPickable;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/alfonz/media/ImagePicker;->pickImageFromCamera(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$PickedAction;Lorg/alfonz/media/ImagePicker$CanceledAction;)V

    return-void
.end method

.method public pickImageFromGallery(Landroid/app/Activity;Lorg/alfonz/media/ImagePicker$ImagePickerCallback;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$ImagePickerCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(TT;",
            "Lorg/alfonz/media/ImagePicker$ImagePickerCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 108
    new-instance v0, Lorg/alfonz/media/ImagePicker$ActivityPickable;

    invoke-direct {v0, p1}, Lorg/alfonz/media/ImagePicker$ActivityPickable;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2}, Lorg/alfonz/media/ImagePicker;->pickImageFromGallery(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$ImagePickerCallback;)V

    return-void
.end method

.method public pickImageFromGallery(Landroid/app/Activity;Lorg/alfonz/media/ImagePicker$PickedAction;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$PickedAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(TT;",
            "Lorg/alfonz/media/ImagePicker$PickedAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 92
    new-instance v0, Lorg/alfonz/media/ImagePicker$ActivityPickable;

    invoke-direct {v0, p1}, Lorg/alfonz/media/ImagePicker$ActivityPickable;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2}, Lorg/alfonz/media/ImagePicker;->pickImageFromGallery(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$PickedAction;)V

    return-void
.end method

.method public pickImageFromGallery(Landroid/app/Activity;Lorg/alfonz/media/ImagePicker$PickedAction;Lorg/alfonz/media/ImagePicker$CanceledAction;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$PickedAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/media/ImagePicker$CanceledAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(TT;",
            "Lorg/alfonz/media/ImagePicker$PickedAction<",
            "TT;>;",
            "Lorg/alfonz/media/ImagePicker$CanceledAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 100
    new-instance v0, Lorg/alfonz/media/ImagePicker$ActivityPickable;

    invoke-direct {v0, p1}, Lorg/alfonz/media/ImagePicker$ActivityPickable;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/alfonz/media/ImagePicker;->pickImageFromGallery(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$PickedAction;Lorg/alfonz/media/ImagePicker$CanceledAction;)V

    return-void
.end method

.method public pickImageFromGallery(Landroid/support/v4/app/Fragment;Lorg/alfonz/media/ImagePicker$ImagePickerCallback;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$ImagePickerCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;",
            "Lorg/alfonz/media/ImagePicker$ImagePickerCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 112
    new-instance v0, Lorg/alfonz/media/ImagePicker$FragmentPickable;

    invoke-direct {v0, p1}, Lorg/alfonz/media/ImagePicker$FragmentPickable;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lorg/alfonz/media/ImagePicker;->pickImageFromGallery(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$ImagePickerCallback;)V

    return-void
.end method

.method public pickImageFromGallery(Landroid/support/v4/app/Fragment;Lorg/alfonz/media/ImagePicker$PickedAction;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$PickedAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;",
            "Lorg/alfonz/media/ImagePicker$PickedAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 96
    new-instance v0, Lorg/alfonz/media/ImagePicker$FragmentPickable;

    invoke-direct {v0, p1}, Lorg/alfonz/media/ImagePicker$FragmentPickable;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lorg/alfonz/media/ImagePicker;->pickImageFromGallery(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$PickedAction;)V

    return-void
.end method

.method public pickImageFromGallery(Landroid/support/v4/app/Fragment;Lorg/alfonz/media/ImagePicker$PickedAction;Lorg/alfonz/media/ImagePicker$CanceledAction;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/alfonz/media/ImagePicker$PickedAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/media/ImagePicker$CanceledAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;",
            "Lorg/alfonz/media/ImagePicker$PickedAction<",
            "TT;>;",
            "Lorg/alfonz/media/ImagePicker$CanceledAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/alfonz/media/ImagePicker$FragmentPickable;

    invoke-direct {v0, p1}, Lorg/alfonz/media/ImagePicker$FragmentPickable;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/alfonz/media/ImagePicker;->pickImageFromGallery(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$PickedAction;Lorg/alfonz/media/ImagePicker$CanceledAction;)V

    return-void
.end method
