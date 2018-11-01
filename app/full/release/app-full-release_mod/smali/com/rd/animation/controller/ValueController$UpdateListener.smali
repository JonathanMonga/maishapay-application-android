.class public interface abstract Lcom/rd/animation/controller/ValueController$UpdateListener;
.super Ljava/lang/Object;
.source "ValueController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rd/animation/controller/ValueController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateListener"
.end annotation


# virtual methods
.method public abstract onValueUpdated(Lcom/rd/animation/data/Value;)V
    .param p1    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
