.class interface abstract Lorg/alfonz/utility/PermissionManager$PermissionRequestable;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alfonz/utility/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PermissionRequestable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getRequestable()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getRootView()Landroid/view/View;
.end method

.method public abstract requestPermission(Ljava/lang/String;)V
.end method

.method public abstract requestPermissions([Ljava/lang/String;)V
.end method

.method public abstract shouldShowRationale(Ljava/lang/String;)Z
.end method
