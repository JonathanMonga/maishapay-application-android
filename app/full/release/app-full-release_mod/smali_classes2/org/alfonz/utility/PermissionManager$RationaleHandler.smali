.class public interface abstract Lorg/alfonz/utility/PermissionManager$RationaleHandler;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alfonz/utility/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RationaleHandler"
.end annotation


# virtual methods
.method public abstract getRationaleMessage(Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract showRationale(Landroid/view/View;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$ConfirmAction;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/utility/PermissionManager$ConfirmAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
