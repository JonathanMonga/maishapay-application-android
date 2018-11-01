.class Lorg/alfonz/utility/PermissionManager$ActivityRequestable;
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
    name = "ActivityRequestable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/alfonz/utility/PermissionManager$PermissionRequestable<",
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

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getRequestable()Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public bridge synthetic getRequestable()Ljava/lang/Object;
    .locals 1

    .line 268
    invoke-virtual {p0}, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;->getRequestable()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 2

    .line 287
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public requestPermission(Ljava/lang/String;)V
    .locals 4

    .line 297
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public requestPermissions([Ljava/lang/String;)V
    .locals 2

    .line 302
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public shouldShowRationale(Ljava/lang/String;)Z
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
