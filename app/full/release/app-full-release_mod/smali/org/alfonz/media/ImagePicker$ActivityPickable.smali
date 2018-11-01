.class Lorg/alfonz/media/ImagePicker$ActivityPickable;
.super Ljava/lang/Object;
.source "ImagePicker.java"

# interfaces
.implements Lorg/alfonz/media/ImagePicker$ImagePickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alfonz/media/ImagePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityPickable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/alfonz/media/ImagePicker$ImagePickable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Lorg/alfonz/media/ImagePicker$ActivityPickable;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getPickable()Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lorg/alfonz/media/ImagePicker$ActivityPickable;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public bridge synthetic getPickable()Ljava/lang/Object;
    .locals 1

    .line 379
    invoke-virtual {p0}, Lorg/alfonz/media/ImagePicker$ActivityPickable;->getPickable()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/alfonz/media/ImagePicker$ActivityPickable;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
