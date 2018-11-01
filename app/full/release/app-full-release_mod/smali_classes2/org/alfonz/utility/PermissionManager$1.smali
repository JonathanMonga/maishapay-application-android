.class Lorg/alfonz/utility/PermissionManager$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lorg/alfonz/utility/PermissionManager$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/alfonz/utility/PermissionManager;->request(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/alfonz/utility/PermissionManager$PermissionCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alfonz/utility/PermissionManager;

.field final synthetic val$blockedAction:Lorg/alfonz/utility/PermissionManager$PermissionAction;

.field final synthetic val$deniedAction:Lorg/alfonz/utility/PermissionManager$PermissionAction;

.field final synthetic val$grantedAction:Lorg/alfonz/utility/PermissionManager$PermissionAction;


# direct methods
.method constructor <init>(Lorg/alfonz/utility/PermissionManager;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/alfonz/utility/PermissionManager$1;->this$0:Lorg/alfonz/utility/PermissionManager;

    iput-object p2, p0, Lorg/alfonz/utility/PermissionManager$1;->val$grantedAction:Lorg/alfonz/utility/PermissionManager$PermissionAction;

    iput-object p3, p0, Lorg/alfonz/utility/PermissionManager$1;->val$deniedAction:Lorg/alfonz/utility/PermissionManager$PermissionAction;

    iput-object p4, p0, Lorg/alfonz/utility/PermissionManager$1;->val$blockedAction:Lorg/alfonz/utility/PermissionManager$PermissionAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionBlocked(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$1;->val$blockedAction:Lorg/alfonz/utility/PermissionManager$PermissionAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$1;->val$blockedAction:Lorg/alfonz/utility/PermissionManager$PermissionAction;

    invoke-interface {v0, p1}, Lorg/alfonz/utility/PermissionManager$PermissionAction;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPermissionDenied(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$1;->val$deniedAction:Lorg/alfonz/utility/PermissionManager$PermissionAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$1;->val$deniedAction:Lorg/alfonz/utility/PermissionManager$PermissionAction;

    invoke-interface {v0, p1}, Lorg/alfonz/utility/PermissionManager$PermissionAction;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPermissionGranted(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$1;->val$grantedAction:Lorg/alfonz/utility/PermissionManager$PermissionAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$1;->val$grantedAction:Lorg/alfonz/utility/PermissionManager$PermissionAction;

    invoke-interface {v0, p1}, Lorg/alfonz/utility/PermissionManager$PermissionAction;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
