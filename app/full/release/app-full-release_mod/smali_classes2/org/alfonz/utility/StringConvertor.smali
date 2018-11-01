.class public final Lorg/alfonz/utility/StringConvertor;
.super Ljava/lang/Object;
.source "StringConvertor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 11
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    if-nez v2, :cond_0

    .line 12
    aget-char v3, p0, v1

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    aget-char v2, p0, v1

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    aput-char v2, p0, v1

    const/4 v2, 0x1

    goto :goto_1

    .line 15
    :cond_0
    aget-char v3, p0, v1

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    aget-char v3, p0, v1

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1

    aget-char v3, p0, v1

    const/16 v4, 0x27

    if-ne v3, v4, :cond_2

    :cond_1
    move v2, v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
