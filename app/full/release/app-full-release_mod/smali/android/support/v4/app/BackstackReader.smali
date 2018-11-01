.class public Landroid/support/v4/app/BackstackReader;
.super Ljava/lang/Object;
.source "BackstackReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInBackStack(Landroid/support/v4/app/Fragment;)Z
    .locals 1

    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 25
    :catch_0
    invoke-static {p0}, Landroid/support/v4/app/BackstackReader;->isInBackStackAndroidX(Landroid/support/v4/app/Fragment;)Z

    move-result p0

    return p0
.end method

.method private static isInBackStackAndroidX(Landroid/support/v4/app/Fragment;)Z
    .locals 4

    .line 33
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string v1, ""

    .line 34
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2, v3}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mBackStackNesting=0"

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
