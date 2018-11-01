.class public Lorg/alfonz/utility/Logcat$Config;
.super Ljava/lang/Object;
.source "Logcat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alfonz/utility/Logcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alfonz/utility/Logcat$Config$Builder;
    }
.end annotation


# instance fields
.field private mEnabled:Z

.field private mShowCodeLocation:Z

.field private mShowCodeLocationLine:Z

.field private mShowCodeLocationThread:Z

.field private mTag:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZLjava/lang/String;ZZZ)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean p1, p0, Lorg/alfonz/utility/Logcat$Config;->mEnabled:Z

    .line 76
    iput-object p2, p0, Lorg/alfonz/utility/Logcat$Config;->mTag:Ljava/lang/String;

    .line 77
    iput-boolean p3, p0, Lorg/alfonz/utility/Logcat$Config;->mShowCodeLocation:Z

    .line 78
    iput-boolean p4, p0, Lorg/alfonz/utility/Logcat$Config;->mShowCodeLocationThread:Z

    .line 79
    iput-boolean p5, p0, Lorg/alfonz/utility/Logcat$Config;->mShowCodeLocationLine:Z

    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;ZZZLorg/alfonz/utility/Logcat$1;)V
    .locals 0

    .line 67
    invoke-direct/range {p0 .. p5}, Lorg/alfonz/utility/Logcat$Config;-><init>(ZLjava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/alfonz/utility/Logcat$Config;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lorg/alfonz/utility/Logcat$Config;->mEnabled:Z

    return v0
.end method

.method public isShowCodeLocation()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lorg/alfonz/utility/Logcat$Config;->mShowCodeLocation:Z

    return v0
.end method

.method public isShowCodeLocationLine()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lorg/alfonz/utility/Logcat$Config;->mShowCodeLocationLine:Z

    return v0
.end method

.method public isShowCodeLocationThread()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lorg/alfonz/utility/Logcat$Config;->mShowCodeLocationThread:Z

    return v0
.end method
