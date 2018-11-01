.class Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue;
.super Ljava/lang/Object;
.source "RxTiPresenterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewReadyValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field viewReady:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue;->value:Ljava/lang/Object;

    .line 45
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lnet/grandcentrix/thirtyinch/rx2/RxTiPresenterUtils$ViewReadyValue;->viewReady:Z

    return-void
.end method
