.class Lorg/alfonz/media/ImagePicker$1;
.super Ljava/lang/Object;
.source "ImagePicker.java"

# interfaces
.implements Lorg/alfonz/media/ImagePicker$ImagePickerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/alfonz/media/ImagePicker;->pickImageFromCamera(Lorg/alfonz/media/ImagePicker$ImagePickable;Lorg/alfonz/media/ImagePicker$PickedAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/alfonz/media/ImagePicker$ImagePickerCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alfonz/media/ImagePicker;

.field final synthetic val$pickedAction:Lorg/alfonz/media/ImagePicker$PickedAction;


# direct methods
.method constructor <init>(Lorg/alfonz/media/ImagePicker;Lorg/alfonz/media/ImagePicker$PickedAction;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/alfonz/media/ImagePicker$1;->this$0:Lorg/alfonz/media/ImagePicker;

    iput-object p2, p0, Lorg/alfonz/media/ImagePicker$1;->val$pickedAction:Lorg/alfonz/media/ImagePicker$PickedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onImagePicked(Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/alfonz/media/ImagePicker$1;->val$pickedAction:Lorg/alfonz/media/ImagePicker$PickedAction;

    invoke-interface {v0, p1, p2, p3}, Lorg/alfonz/media/ImagePicker$PickedAction;->run(Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method
