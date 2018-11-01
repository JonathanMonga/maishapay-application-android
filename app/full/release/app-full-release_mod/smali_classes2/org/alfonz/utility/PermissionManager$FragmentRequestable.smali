.class Lorg/alfonz/utility/PermissionManager$FragmentRequestable;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lorg/alfonz/utility/PermissionManager$PermissionRequestable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alfonz/utility/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragmentRequestable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v4/app/Fragment;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/alfonz/utility/PermissionManager$PermissionRequestable<",
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

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;->mFragment:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getRequestable()Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public bridge synthetic getRequestable()Ljava/lang/Object;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;->getRequestable()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public requestPermission(Ljava/lang/String;)V
    .locals 4

    .line 335
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public requestPermissions([Ljava/lang/String;)V
    .locals 2

    .line 340
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public shouldShowRationale(Ljava/lang/String;)Z
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
