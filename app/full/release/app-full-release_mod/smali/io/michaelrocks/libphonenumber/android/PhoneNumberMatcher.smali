.class final Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;
.super Ljava/lang/Object;
.source "PhoneNumberMatcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$NumberGroupingChecker;,
        Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# static fields
.field private static final INNER_MATCHES:[Ljava/util/regex/Pattern;

.field private static final LEAD_CLASS:Ljava/util/regex/Pattern;

.field private static final MATCHING_BRACKETS:Ljava/util/regex/Pattern;

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final PUB_PAGES:Ljava/util/regex/Pattern;

.field private static final SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

.field private static final TIME_STAMPS:Ljava/util/regex/Pattern;

.field private static final TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;


# instance fields
.field private lastMatch:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

.field private final leniency:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

.field private maxTries:J

.field private final phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

.field private final preferredRegion:Ljava/lang/String;

.field private searchIndex:I

.field private state:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}"

    .line 68
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    const-string v0, "(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}"

    .line 75
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    const-string v0, "[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$"

    .line 82
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    const-string v0, ":[0-5]\\d"

    .line 83
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    const/4 v0, 0x6

    .line 102
    new-array v0, v0, [Ljava/util/regex/Pattern;

    const-string v1, "/+(.*)"

    .line 104
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "(\\([^(]*)"

    .line 107
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"

    .line 110
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "[\u2012-\u2015\uff0d]\\p{Z}*(.+)"

    .line 114
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "\\.+\\p{Z}*([^.]+)"

    .line 116
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "\\p{Z}+(\\P{Z}+)"

    .line 118
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sput-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->INNER_MATCHES:[Ljava/util/regex/Pattern;

    const-string v0, "(\\[\uff08\uff3b"

    const-string v1, ")\\]\uff09\uff3d"

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[^"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 135
    invoke-static {v2, v5}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v5

    .line 141
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(?:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "])?(?:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "+["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "])?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "+(?:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "+["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    .line 148
    invoke-static {v2, v4}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v2, v6}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x14

    .line 158
    invoke-static {v2, v5}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v2

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\p{Nd}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "+\uff0b"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(?:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(?:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(?:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;J)V
    .locals 3

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->NOT_READY:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->state:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->lastMatch:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->searchIndex:I

    if-eqz p1, :cond_3

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-gez v2, :cond_1

    .line 233
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 235
    :cond_1
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, ""

    .line 236
    :goto_0
    iput-object p2, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    .line 237
    iput-object p3, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    .line 238
    iput-object p4, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->leniency:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    .line 239
    iput-wide p5, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    return-void

    .line 230
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static allNumberGroupsAreExactlyPresent(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 4

    .line 519
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 520
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p2

    .line 523
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    array-length v0, p2

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    array-length v0, p2

    sub-int/2addr v0, v1

    .line 527
    :goto_0
    array-length v2, p2

    if-eq v2, v1, :cond_5

    aget-object v2, p2, v0

    .line 529
    invoke-virtual {p0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p0

    .line 528
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    .line 534
    :cond_1
    array-length p0, p3

    sub-int/2addr p0, v1

    :goto_1
    const/4 p1, 0x0

    if-lez p0, :cond_3

    if-ltz v0, :cond_3

    .line 537
    aget-object v2, p2, v0

    aget-object v3, p3, p0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return p1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    if-ltz v0, :cond_4

    .line 544
    aget-object p0, p2, v0

    aget-object p2, p3, p1

    .line 545
    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p1, v1

    :cond_4
    return p1

    :cond_5
    :goto_2
    return v1
.end method

.method static allNumberGroupsRemainGrouped(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 5

    .line 476
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCodeSource()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    sget-object v1, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 478
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v1, v0

    move v0, v2

    .line 483
    :goto_1
    array-length v3, p3

    if-ge v0, v3, :cond_3

    .line 486
    aget-object v3, p3, v0

    invoke-virtual {p2, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    return v2

    .line 491
    :cond_1
    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    if-nez v0, :cond_2

    .line 492
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 497
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {p0, v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 498
    invoke-virtual {p0, v3, v4}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 499
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 503
    invoke-virtual {p0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p0

    .line 504
    aget-object p1, p3, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 505
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 512
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static checkNumberGroupingIsValid(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$NumberGroupingChecker;)Z
    .locals 3

    const/4 v0, 0x1

    .line 580
    invoke-static {p1, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigits(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v1, 0x0

    .line 581
    invoke-static {p2, p0, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->getNationalNumberGroups(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)[Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-interface {p3, p2, p0, p1, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 587
    :cond_0
    invoke-virtual {p2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getMetadataSource()Lio/michaelrocks/libphonenumber/android/MetadataSource;

    move-result-object v1

    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    invoke-interface {v1, v2}, Lio/michaelrocks/libphonenumber/android/MetadataSource;->getAlternateFormatsForCountry(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 589
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 590
    invoke-static {p2, p0, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->getNationalNumberGroups(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)[Ljava/lang/String;

    move-result-object v2

    .line 591
    invoke-interface {p3, p2, p0, p1, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static containsMoreThanOneSlashInNationalNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 6

    const/16 v0, 0x2f

    .line 600
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 606
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_1

    return v2

    .line 614
    :cond_1
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCodeSource()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    .line 615
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCodeSource()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v5

    :goto_1
    if-eqz v3, :cond_4

    .line 617
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 618
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    add-int/2addr v0, v5

    .line 620
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_4
    return v5
.end method

.method static containsOnlyValidXChars(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 632
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_5

    .line 633
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x58

    const/16 v5, 0x78

    if-eq v2, v5, :cond_0

    if-ne v2, v4, :cond_4

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 635
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_2

    if-ne v6, v4, :cond_1

    goto :goto_1

    .line 645
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 646
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    .line 645
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 640
    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->isNumberMatch(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    move-result-object v1

    sget-object v4, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;->NSN_MATCH:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    if-eq v1, v4, :cond_3

    return v0

    :cond_3
    move v1, v2

    :cond_4
    add-int/2addr v1, v3

    goto :goto_0

    :cond_5
    return v3
.end method

.method private extractInnerMatch(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    .locals 13

    .line 349
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->INNER_MATCHES:[Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 350
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v5, 0x1

    move v6, v5

    .line 352
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-wide v7, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_3

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_1

    .line 355
    sget-object v6, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 357
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-interface {p1, v1, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 355
    invoke-static {v6, v9}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 358
    invoke-direct {p0, v6, p2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    move-result-object v6

    if-eqz v6, :cond_0

    return-object v6

    .line 362
    :cond_0
    iget-wide v9, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    sub-long v11, v9, v7

    iput-wide v11, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    move v6, v1

    .line 365
    :cond_1
    sget-object v9, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 366
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 365
    invoke-static {v9, v10}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 367
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v10

    add-int/2addr v10, p2

    invoke-direct {p0, v9, v10}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    move-result-object v9

    if-eqz v9, :cond_2

    return-object v9

    .line 371
    :cond_2
    iget-wide v9, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    sub-long v11, v9, v7

    iput-wide v11, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private extractMatch(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    .locals 3

    .line 317
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 322
    :cond_0
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    sget-object v2, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 330
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 337
    :cond_2
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->extractInnerMatch(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    move-result-object p1

    return-object p1
.end method

.method private find(I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    .locals 7

    .line 250
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 251
    :goto_0
    iget-wide v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 252
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    .line 253
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-interface {v1, p1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 258
    sget-object v2, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v2, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 260
    invoke-direct {p0, v1, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->extractMatch(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 265
    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr p1, v1

    .line 266
    iget-wide v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getNationalNumberGroups(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)[Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_1

    .line 556
    sget-object p2, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->format(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3b

    .line 559
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 561
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_0
    const/16 p2, 0x2d

    .line 564
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 565
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 568
    :cond_1
    invoke-virtual {p0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 569
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "-"

    .line 570
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isInvalidPunctuationSymbol(C)Z
    .locals 1

    const/16 v0, 0x25

    if-eq p0, v0, :cond_1

    .line 305
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static isLatinLetter(C)Z
    .locals 3

    .line 292
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    return v1

    .line 295
    :cond_0
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    .line 296
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    .line 297
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    .line 298
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    .line 299
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    .line 300
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    .line 301
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static isNationalPrefixPresentIfRequired(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;)Z
    .locals 4

    .line 657
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCodeSource()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    sget-object v1, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 661
    :cond_0
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-virtual {p1, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 667
    :cond_1
    invoke-virtual {p1, p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 669
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 672
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 673
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    .line 679
    :cond_2
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 684
    :cond_3
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 688
    invoke-virtual {p1, v1, v0, p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0

    :cond_4
    return v2
.end method

.method private static limit(II)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_1

    if-lez p1, :cond_1

    if-ge p1, p0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 180
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private parseAndVerify(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    .locals 4

    const/4 v0, 0x0

    .line 390
    :try_start_0
    sget-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 396
    :cond_0
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->leniency:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    sget-object v2, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;->VALID:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    invoke-virtual {v1, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_4

    if-lez p2, :cond_2

    .line 399
    sget-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_2

    .line 400
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 402
    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-object v0

    .line 406
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, p2

    .line 407
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 408
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 409
    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    return-object v0

    .line 415
    :cond_4
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 429
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    .line 430
    invoke-virtual {v2, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    if-eqz p2, :cond_5

    if-lez p2, :cond_6

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    add-int/lit8 v3, p2, -0x1

    .line 431
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_6

    :cond_5
    return-object v0

    .line 436
    :cond_6
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->leniency:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v2, v1, p1, v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;->verify(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 440
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    .line 441
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->clearRawInput()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    .line 442
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    .line 443
    new-instance v2, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p2, p1, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;-><init>(ILjava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)V
    :try_end_0
    .catch Lio/michaelrocks/libphonenumber/android/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_7
    :goto_0
    return-object v0

    :catch_0
    :cond_8
    return-object v0
.end method

.method private static trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 277
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 278
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p0

    invoke-interface {p1, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 695
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->state:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    sget-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->NOT_READY:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_1

    .line 696
    iget v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->searchIndex:I

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->find(I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->lastMatch:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    .line 697
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->lastMatch:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    if-nez v0, :cond_0

    .line 698
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->DONE:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->state:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    goto :goto_0

    .line 700
    :cond_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->lastMatch:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->end()I

    move-result v0

    iput v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->searchIndex:I

    .line 701
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->READY:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->state:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    .line 704
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->state:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    sget-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->READY:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public next()Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    .locals 2

    .line 710
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 715
    :cond_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->lastMatch:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    const/4 v1, 0x0

    .line 716
    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->lastMatch:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    .line 717
    sget-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->NOT_READY:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->state:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->next()Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 726
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
