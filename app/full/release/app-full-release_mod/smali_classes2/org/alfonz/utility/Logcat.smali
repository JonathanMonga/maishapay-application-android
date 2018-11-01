.class public final Lorg/alfonz/utility/Logcat;
.super Ljava/lang/Object;
.source "Logcat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alfonz/utility/Logcat$CodeLocation;,
        Lorg/alfonz/utility/Logcat$Config;
    }
.end annotation


# static fields
.field private static sConfig:Lorg/alfonz/utility/Logcat$Config;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lorg/alfonz/utility/Logcat$Config;
    .locals 1

    .line 6
    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    return-object v0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    invoke-virtual {v0}, Lorg/alfonz/utility/Logcat$Config;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    invoke-virtual {v0}, Lorg/alfonz/utility/Logcat$Config;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/alfonz/utility/Logcat;->getCodeLocation()Lorg/alfonz/utility/Logcat$CodeLocation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/alfonz/utility/Logcat$CodeLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/alfonz/utility/Logcat;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    invoke-virtual {v0}, Lorg/alfonz/utility/Logcat$Config;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    invoke-virtual {v0}, Lorg/alfonz/utility/Logcat$Config;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/alfonz/utility/Logcat;->getCodeLocation()Lorg/alfonz/utility/Logcat$CodeLocation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/alfonz/utility/Logcat$CodeLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/alfonz/utility/Logcat;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    invoke-virtual {v0}, Lorg/alfonz/utility/Logcat$Config;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    invoke-virtual {v0}, Lorg/alfonz/utility/Logcat$Config;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/alfonz/utility/Logcat;->getCodeLocation()Lorg/alfonz/utility/Logcat$CodeLocation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/alfonz/utility/Logcat$CodeLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lorg/alfonz/utility/Logcat;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static varargs formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getCodeLocation()Lorg/alfonz/utility/Logcat$CodeLocation;
    .locals 1

    const/4 v0, 0x3

    .line 57
    invoke-static {v0}, Lorg/alfonz/utility/Logcat;->getCodeLocation(I)Lorg/alfonz/utility/Logcat$CodeLocation;

    move-result-object v0

    return-object v0
.end method

.method private static getCodeLocation(I)Lorg/alfonz/utility/Logcat$CodeLocation;
    .locals 4

    .line 61
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    array-length v2, v0

    sub-int/2addr v2, p0

    new-array v2, v2, [Ljava/lang/StackTraceElement;

    .line 63
    array-length v3, v2

    invoke-static {v0, p0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    new-instance p0, Lorg/alfonz/utility/Logcat$CodeLocation;

    invoke-direct {p0, v2}, Lorg/alfonz/utility/Logcat$CodeLocation;-><init>([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    invoke-virtual {v0}, Lorg/alfonz/utility/Logcat$Config;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    invoke-virtual {v0}, Lorg/alfonz/utility/Logcat$Config;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/alfonz/utility/Logcat;->getCodeLocation()Lorg/alfonz/utility/Logcat$CodeLocation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/alfonz/utility/Logcat$CodeLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/alfonz/utility/Logcat;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static init(Lorg/alfonz/utility/Logcat$Config;)V
    .locals 0
    .param p0    # Lorg/alfonz/utility/Logcat$Config;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    sput-object p0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    return-void
.end method

.method public static init(ZLjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    new-instance v0, Lorg/alfonz/utility/Logcat$Config$Builder;

    invoke-direct {v0}, Lorg/alfonz/utility/Logcat$Config$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/alfonz/utility/Logcat$Config$Builder;->setEnabled(Z)Lorg/alfonz/utility/Logcat$Config$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/alfonz/utility/Logcat$Config$Builder;->setTag(Ljava/lang/String;)Lorg/alfonz/utility/Logcat$Config$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/alfonz/utility/Logcat$Config$Builder;->build()Lorg/alfonz/utility/Logcat$Config;

    move-result-object p0

    sput-object p0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    invoke-virtual {v0}, Lorg/alfonz/utility/Logcat$Config;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    invoke-virtual {v0}, Lorg/alfonz/utility/Logcat$Config;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/alfonz/utility/Logcat;->getCodeLocation()Lorg/alfonz/utility/Logcat$CodeLocation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/alfonz/utility/Logcat$CodeLocation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    invoke-virtual {v0}, Lorg/alfonz/utility/Logcat$Config;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    invoke-virtual {v0}, Lorg/alfonz/utility/Logcat$Config;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/alfonz/utility/Logcat;->getCodeLocation()Lorg/alfonz/utility/Logcat$CodeLocation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/alfonz/utility/Logcat$CodeLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/alfonz/utility/Logcat;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    invoke-virtual {v0}, Lorg/alfonz/utility/Logcat$Config;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    invoke-virtual {v0}, Lorg/alfonz/utility/Logcat$Config;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/alfonz/utility/Logcat;->getCodeLocation()Lorg/alfonz/utility/Logcat$CodeLocation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/alfonz/utility/Logcat$CodeLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/alfonz/utility/Logcat;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    invoke-virtual {v0}, Lorg/alfonz/utility/Logcat$Config;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/alfonz/utility/Logcat;->sConfig:Lorg/alfonz/utility/Logcat$Config;

    invoke-virtual {v0}, Lorg/alfonz/utility/Logcat$Config;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/alfonz/utility/Logcat;->getCodeLocation()Lorg/alfonz/utility/Logcat$CodeLocation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/alfonz/utility/Logcat$CodeLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/alfonz/utility/Logcat;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
