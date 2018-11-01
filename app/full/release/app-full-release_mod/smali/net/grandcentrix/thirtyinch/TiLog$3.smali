.class final Lnet/grandcentrix/thirtyinch/TiLog$3;
.super Ljava/lang/Object;
.source "TiLog.java"

# interfaces
.implements Lnet/grandcentrix/thirtyinch/TiLog$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/grandcentrix/thirtyinch/TiLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-static {p1, p2, p3}, Lnet/grandcentrix/thirtyinch/TiLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
