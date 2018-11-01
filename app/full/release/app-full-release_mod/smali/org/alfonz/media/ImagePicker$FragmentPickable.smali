.class Lorg/alfonz/media/ImagePicker$FragmentPickable;
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
    name = "FragmentPickable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v4/app/Fragment;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/alfonz/media/ImagePicker$ImagePickable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mFragment:Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p1, p0, Lorg/alfonz/media/ImagePicker$FragmentPickable;->mFragment:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public getPickable()Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lorg/alfonz/media/ImagePicker$FragmentPickable;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public bridge synthetic getPickable()Ljava/lang/Object;
    .locals 1

    .line 397
    invoke-virtual {p0}, Lorg/alfonz/media/ImagePicker$FragmentPickable;->getPickable()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/alfonz/media/ImagePicker$FragmentPickable;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
