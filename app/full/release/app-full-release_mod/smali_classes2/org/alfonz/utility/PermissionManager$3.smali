.class Lorg/alfonz/utility/PermissionManager$3;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lorg/alfonz/utility/PermissionManager$ConfirmAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/alfonz/utility/PermissionManager;->createRationaleConfirmAction(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;[Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionsCallback;)Lorg/alfonz/utility/PermissionManager$ConfirmAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alfonz/utility/PermissionManager;

.field final synthetic val$permissionRequestable:Lorg/alfonz/utility/PermissionManager$PermissionRequestable;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$permissionsCallback:Lorg/alfonz/utility/PermissionManager$PermissionsCallback;


# direct methods
.method constructor <init>(Lorg/alfonz/utility/PermissionManager;Lorg/alfonz/utility/PermissionManager$PermissionsCallback;Lorg/alfonz/utility/PermissionManager$PermissionRequestable;[Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lorg/alfonz/utility/PermissionManager$3;->this$0:Lorg/alfonz/utility/PermissionManager;

    iput-object p2, p0, Lorg/alfonz/utility/PermissionManager$3;->val$permissionsCallback:Lorg/alfonz/utility/PermissionManager$PermissionsCallback;

    iput-object p3, p0, Lorg/alfonz/utility/PermissionManager$3;->val$permissionRequestable:Lorg/alfonz/utility/PermissionManager$PermissionRequestable;

    iput-object p4, p0, Lorg/alfonz/utility/PermissionManager$3;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 222
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$3;->this$0:Lorg/alfonz/utility/PermissionManager;

    iget-object v1, p0, Lorg/alfonz/utility/PermissionManager$3;->val$permissionsCallback:Lorg/alfonz/utility/PermissionManager$PermissionsCallback;

    invoke-static {v0, v1}, Lorg/alfonz/utility/PermissionManager;->access$202(Lorg/alfonz/utility/PermissionManager;Lorg/alfonz/utility/PermissionManager$PermissionsCallback;)Lorg/alfonz/utility/PermissionManager$PermissionsCallback;

    .line 223
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager$3;->val$permissionRequestable:Lorg/alfonz/utility/PermissionManager$PermissionRequestable;

    iget-object v1, p0, Lorg/alfonz/utility/PermissionManager$3;->val$permissions:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/alfonz/utility/PermissionManager$PermissionRequestable;->requestPermissions([Ljava/lang/String;)V

    return-void
.end method
