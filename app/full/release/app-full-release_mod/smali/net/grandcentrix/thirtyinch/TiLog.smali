.class public Lnet/grandcentrix/thirtyinch/TiLog;
.super Ljava/lang/Object;
.source "TiLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/grandcentrix/thirtyinch/TiLog$Logger;
    }
.end annotation


# static fields
.field public static LOGCAT:Lnet/grandcentrix/thirtyinch/TiLog$Logger; = null

.field public static NOOP:Lnet/grandcentrix/thirtyinch/TiLog$Logger; = null

.field private static final TAG:Ljava/lang/String; = "ThirtyInch"

.field public static TI_LOG:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

.field private static logger:Lnet/grandcentrix/thirtyinch/TiLog$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lnet/grandcentrix/thirtyinch/TiLog$1;

    invoke-direct {v0}, Lnet/grandcentrix/thirtyinch/TiLog$1;-><init>()V

    sput-object v0, Lnet/grandcentrix/thirtyinch/TiLog;->LOGCAT:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    .line 60
    new-instance v0, Lnet/grandcentrix/thirtyinch/TiLog$2;

    invoke-direct {v0}, Lnet/grandcentrix/thirtyinch/TiLog$2;-><init>()V

    sput-object v0, Lnet/grandcentrix/thirtyinch/TiLog;->NOOP:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    .line 72
    new-instance v0, Lnet/grandcentrix/thirtyinch/TiLog$3;

    invoke-direct {v0}, Lnet/grandcentrix/thirtyinch/TiLog$3;-><init>()V

    sput-object v0, Lnet/grandcentrix/thirtyinch/TiLog;->TI_LOG:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 80
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiLog;->logger:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiLog;->logger:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p0, p1}, Lnet/grandcentrix/thirtyinch/TiLog$Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 86
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiLog;->logger:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiLog;->logger:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    const/4 v1, 0x6

    invoke-interface {v0, v1, p0, p1}, Lnet/grandcentrix/thirtyinch/TiLog$Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 92
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiLog;->logger:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiLog;->logger:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p0, p1}, Lnet/grandcentrix/thirtyinch/TiLog$Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 98
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiLog;->logger:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiLog;->logger:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    invoke-interface {v0, p0, p1, p2}, Lnet/grandcentrix/thirtyinch/TiLog$Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setLogger(Lnet/grandcentrix/thirtyinch/TiLog$Logger;)V
    .locals 1
    .param p0    # Lnet/grandcentrix/thirtyinch/TiLog$Logger;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 128
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiLog;->TI_LOG:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    if-ne p0, v0, :cond_0

    .line 129
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Recursion warning: You can\'t use TI_LOG as Logger for TiLog"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 132
    :cond_0
    sput-object p0, Lnet/grandcentrix/thirtyinch/TiLog;->logger:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 136
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiLog;->logger:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiLog;->logger:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p0, p1}, Lnet/grandcentrix/thirtyinch/TiLog$Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 142
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiLog;->logger:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiLog;->logger:Lnet/grandcentrix/thirtyinch/TiLog$Logger;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p0, p1}, Lnet/grandcentrix/thirtyinch/TiLog$Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
