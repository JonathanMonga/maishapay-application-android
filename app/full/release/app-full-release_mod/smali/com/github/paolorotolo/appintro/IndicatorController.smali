.class public interface abstract Lcom/github/paolorotolo/appintro/IndicatorController;
.super Ljava/lang/Object;
.source "IndicatorController.java"


# virtual methods
.method public abstract initialize(I)V
.end method

.method public abstract newInstance(Landroid/content/Context;)Landroid/view/View;
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract selectPosition(I)V
.end method

.method public abstract setSelectedIndicatorColor(I)V
.end method

.method public abstract setUnselectedIndicatorColor(I)V
.end method
