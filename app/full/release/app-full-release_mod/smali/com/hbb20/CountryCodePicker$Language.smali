.class public final enum Lcom/hbb20/CountryCodePicker$Language;
.super Ljava/lang/Enum;
.source "CountryCodePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/CountryCodePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Language"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hbb20/CountryCodePicker$Language;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum AFRIKAANS:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum ARABIC:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum BENGALI:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum CHINESE_SIMPLIFIED:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum CHINESE_TRADITIONAL:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum CZECH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum DUTCH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum FARSI:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum FRENCH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum GERMAN:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum GUJARATI:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum HEBREW:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum HINDI:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum INDONESIA:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum ITALIAN:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum JAPANESE:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum KOREAN:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum POLISH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum PORTUGUESE:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum PUNJABI:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum RUSSIAN:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum SLOVAK:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum SPANISH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum SWEDISH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum TURKISH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum UKRAINIAN:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum UZBEK:Lcom/hbb20/CountryCodePicker$Language;


# instance fields
.field private code:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private script:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 2187
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "AFRIKAANS"

    const-string v2, "af"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->AFRIKAANS:Lcom/hbb20/CountryCodePicker$Language;

    .line 2188
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "ARABIC"

    const-string v2, "ar"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->ARABIC:Lcom/hbb20/CountryCodePicker$Language;

    .line 2189
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "BENGALI"

    const-string v2, "bn"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->BENGALI:Lcom/hbb20/CountryCodePicker$Language;

    .line 2190
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v7, "CHINESE_SIMPLIFIED"

    const-string v9, "zh"

    const-string v10, "CN"

    const-string v11, "Hans"

    const/4 v8, 0x3

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->CHINESE_SIMPLIFIED:Lcom/hbb20/CountryCodePicker$Language;

    .line 2191
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v13, "CHINESE_TRADITIONAL"

    const-string v15, "zh"

    const-string v16, "TW"

    const-string v17, "Hant"

    const/4 v14, 0x4

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->CHINESE_TRADITIONAL:Lcom/hbb20/CountryCodePicker$Language;

    .line 2192
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "CZECH"

    const-string v2, "cs"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->CZECH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2193
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "DUTCH"

    const-string v2, "nl"

    const/4 v7, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->DUTCH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2194
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "ENGLISH"

    const-string v2, "en"

    const/4 v8, 0x7

    invoke-direct {v0, v1, v8, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2195
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "FARSI"

    const-string v2, "fa"

    const/16 v9, 0x8

    invoke-direct {v0, v1, v9, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->FARSI:Lcom/hbb20/CountryCodePicker$Language;

    .line 2196
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "FRENCH"

    const-string v2, "fr"

    const/16 v10, 0x9

    invoke-direct {v0, v1, v10, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->FRENCH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2197
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "GERMAN"

    const-string v2, "de"

    const/16 v11, 0xa

    invoke-direct {v0, v1, v11, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->GERMAN:Lcom/hbb20/CountryCodePicker$Language;

    .line 2198
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "GUJARATI"

    const-string v2, "gu"

    const/16 v12, 0xb

    invoke-direct {v0, v1, v12, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->GUJARATI:Lcom/hbb20/CountryCodePicker$Language;

    .line 2199
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "HEBREW"

    const-string v2, "iw"

    const/16 v13, 0xc

    invoke-direct {v0, v1, v13, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->HEBREW:Lcom/hbb20/CountryCodePicker$Language;

    .line 2200
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "HINDI"

    const-string v2, "hi"

    const/16 v14, 0xd

    invoke-direct {v0, v1, v14, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->HINDI:Lcom/hbb20/CountryCodePicker$Language;

    .line 2201
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "INDONESIA"

    const-string v2, "in"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->INDONESIA:Lcom/hbb20/CountryCodePicker$Language;

    .line 2202
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "ITALIAN"

    const-string v2, "it"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->ITALIAN:Lcom/hbb20/CountryCodePicker$Language;

    .line 2203
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "JAPANESE"

    const-string v2, "ja"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->JAPANESE:Lcom/hbb20/CountryCodePicker$Language;

    .line 2204
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "KOREAN"

    const-string v2, "ko"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->KOREAN:Lcom/hbb20/CountryCodePicker$Language;

    .line 2205
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "POLISH"

    const-string v2, "pl"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->POLISH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2206
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "PORTUGUESE"

    const-string v2, "pt"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->PORTUGUESE:Lcom/hbb20/CountryCodePicker$Language;

    .line 2207
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "PUNJABI"

    const-string v2, "pa"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->PUNJABI:Lcom/hbb20/CountryCodePicker$Language;

    .line 2208
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "RUSSIAN"

    const-string v2, "ru"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->RUSSIAN:Lcom/hbb20/CountryCodePicker$Language;

    .line 2209
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "SLOVAK"

    const-string v2, "sk"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->SLOVAK:Lcom/hbb20/CountryCodePicker$Language;

    .line 2210
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "SPANISH"

    const-string v2, "es"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->SPANISH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2211
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "SWEDISH"

    const-string v2, "sv"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->SWEDISH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2212
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "TURKISH"

    const-string v2, "tr"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->TURKISH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2213
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "UKRAINIAN"

    const-string v2, "uk"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->UKRAINIAN:Lcom/hbb20/CountryCodePicker$Language;

    .line 2214
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "UZBEK"

    const-string v2, "uz"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->UZBEK:Lcom/hbb20/CountryCodePicker$Language;

    const/16 v0, 0x1c

    .line 2186
    new-array v0, v0, [Lcom/hbb20/CountryCodePicker$Language;

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->AFRIKAANS:Lcom/hbb20/CountryCodePicker$Language;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->ARABIC:Lcom/hbb20/CountryCodePicker$Language;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->BENGALI:Lcom/hbb20/CountryCodePicker$Language;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->CHINESE_SIMPLIFIED:Lcom/hbb20/CountryCodePicker$Language;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->CHINESE_TRADITIONAL:Lcom/hbb20/CountryCodePicker$Language;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->CZECH:Lcom/hbb20/CountryCodePicker$Language;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->DUTCH:Lcom/hbb20/CountryCodePicker$Language;

    aput-object v1, v0, v7

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    aput-object v1, v0, v8

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->FARSI:Lcom/hbb20/CountryCodePicker$Language;

    aput-object v1, v0, v9

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->FRENCH:Lcom/hbb20/CountryCodePicker$Language;

    aput-object v1, v0, v10

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->GERMAN:Lcom/hbb20/CountryCodePicker$Language;

    aput-object v1, v0, v11

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->GUJARATI:Lcom/hbb20/CountryCodePicker$Language;

    aput-object v1, v0, v12

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->HEBREW:Lcom/hbb20/CountryCodePicker$Language;

    aput-object v1, v0, v13

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->HINDI:Lcom/hbb20/CountryCodePicker$Language;

    aput-object v1, v0, v14

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->INDONESIA:Lcom/hbb20/CountryCodePicker$Language;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->ITALIAN:Lcom/hbb20/CountryCodePicker$Language;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->JAPANESE:Lcom/hbb20/CountryCodePicker$Language;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->KOREAN:Lcom/hbb20/CountryCodePicker$Language;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->POLISH:Lcom/hbb20/CountryCodePicker$Language;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->PORTUGUESE:Lcom/hbb20/CountryCodePicker$Language;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->PUNJABI:Lcom/hbb20/CountryCodePicker$Language;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->RUSSIAN:Lcom/hbb20/CountryCodePicker$Language;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->SLOVAK:Lcom/hbb20/CountryCodePicker$Language;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->SPANISH:Lcom/hbb20/CountryCodePicker$Language;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->SWEDISH:Lcom/hbb20/CountryCodePicker$Language;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->TURKISH:Lcom/hbb20/CountryCodePicker$Language;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->UKRAINIAN:Lcom/hbb20/CountryCodePicker$Language;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->UZBEK:Lcom/hbb20/CountryCodePicker$Language;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->$VALUES:[Lcom/hbb20/CountryCodePicker$Language;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2226
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2227
    iput-object p3, p0, Lcom/hbb20/CountryCodePicker$Language;->code:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2221
    iput-object p3, p0, Lcom/hbb20/CountryCodePicker$Language;->code:Ljava/lang/String;

    .line 2222
    iput-object p4, p0, Lcom/hbb20/CountryCodePicker$Language;->country:Ljava/lang/String;

    .line 2223
    iput-object p5, p0, Lcom/hbb20/CountryCodePicker$Language;->script:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hbb20/CountryCodePicker$Language;
    .locals 1

    .line 2186
    const-class v0, Lcom/hbb20/CountryCodePicker$Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hbb20/CountryCodePicker$Language;

    return-object p0
.end method

.method public static values()[Lcom/hbb20/CountryCodePicker$Language;
    .locals 1

    .line 2186
    sget-object v0, Lcom/hbb20/CountryCodePicker$Language;->$VALUES:[Lcom/hbb20/CountryCodePicker$Language;

    invoke-virtual {v0}, [Lcom/hbb20/CountryCodePicker$Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hbb20/CountryCodePicker$Language;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 2231
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$Language;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 2239
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$Language;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .line 2247
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$Language;->script:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 2235
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$Language;->code:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 2243
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$Language;->country:Ljava/lang/String;

    return-void
.end method

.method public setScript(Ljava/lang/String;)V
    .locals 0

    .line 2251
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$Language;->script:Ljava/lang/String;

    return-void
.end method
