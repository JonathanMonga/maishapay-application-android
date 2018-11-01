.class public interface abstract Lcom/mikepenz/fastadapter/listeners/OnTouchListener;
.super Ljava/lang/Object;
.source "OnTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/MotionEvent;",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;TItem;I)Z"
        }
    .end annotation
.end method
