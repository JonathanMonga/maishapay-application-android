.class public Lcom/github/paolorotolo/appintro/util/LogHelper;
.super Ljava/lang/Object;
.source "LogHelper.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "Log: "

.field private static final LOG_PREFIX_LENGTH:I

.field private static final MAX_LOG_TAG_LENGTH:I = 0x17


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Log: "

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/github/paolorotolo/appintro/util/LogHelper;->LOG_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 74
    invoke-static {p0, v0, p1, p2}, Lcom/github/paolorotolo/appintro/util/LogHelper;->log(Ljava/lang/String;ILjava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, v0, v1, p1}, Lcom/github/paolorotolo/appintro/util/LogHelper;->log(Ljava/lang/String;ILjava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1, p1}, Lcom/github/paolorotolo/appintro/util/LogHelper;->log(Ljava/lang/String;ILjava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs log(Ljava/lang/String;ILjava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    .line 79
    array-length v2, p3

    if-ne v2, v1, :cond_0

    .line 81
    aget-object p2, p3, v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_1

    .line 84
    array-length v2, p3

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p3, v0

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p3, "\n"

    .line 88
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 92
    :goto_1
    invoke-static {p1, p0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static makeLogTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/github/paolorotolo/appintro/util/LogHelper;->makeLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makeLogTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/github/paolorotolo/appintro/util/LogHelper;->LOG_PREFIX_LENGTH:I

    rsub-int/lit8 v1, v1, 0x17

    if-le v0, v1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget v2, Lcom/github/paolorotolo/appintro/util/LogHelper;->LOG_PREFIX_LENGTH:I

    rsub-int/lit8 v2, v2, 0x17

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 66
    invoke-static {p0, v0, p1, p2}, Lcom/github/paolorotolo/appintro/util/LogHelper;->log(Ljava/lang/String;ILjava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, v0, v1, p1}, Lcom/github/paolorotolo/appintro/util/LogHelper;->log(Ljava/lang/String;ILjava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
