.class public final enum Lcom/hbb20/CountryCodePicker$AutoDetectionPref;
.super Ljava/lang/Enum;
.source "CountryCodePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/CountryCodePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoDetectionPref"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hbb20/CountryCodePicker$AutoDetectionPref;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum LOCALE_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum LOCALE_NETWORK_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum LOCALE_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum LOCALE_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum LOCALE_SIM_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum NETWORK_LOCALE_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum NETWORK_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum NETWORK_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum NETWORK_SIM_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum SIM_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum SIM_LOCALE_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum SIM_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum SIM_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;


# instance fields
.field representation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 2286
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "SIM_ONLY"

    const-string v2, "1"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2287
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "NETWORK_ONLY"

    const-string v2, "2"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2288
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "LOCALE_ONLY"

    const-string v2, "3"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2289
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "SIM_NETWORK"

    const-string v2, "12"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2290
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "NETWORK_SIM"

    const-string v2, "21"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2291
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "SIM_LOCALE"

    const-string v2, "13"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2292
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "LOCALE_SIM"

    const-string v2, "31"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2293
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "NETWORK_LOCALE"

    const-string v2, "23"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2294
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "LOCALE_NETWORK"

    const-string v2, "32"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2295
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "SIM_NETWORK_LOCALE"

    const-string v2, "123"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2296
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "SIM_LOCALE_NETWORK"

    const-string v2, "132"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_LOCALE_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2297
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "NETWORK_SIM_LOCALE"

    const-string v2, "213"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_SIM_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2298
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "NETWORK_LOCALE_SIM"

    const-string v2, "231"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_LOCALE_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2299
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "LOCALE_SIM_NETWORK"

    const-string v2, "312"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_SIM_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2300
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "LOCALE_NETWORK_SIM"

    const-string v2, "321"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_NETWORK_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const/16 v0, 0xf

    .line 2285
    new-array v0, v0, [Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    sget-object v1, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v1, v0, v7

    sget-object v1, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v1, v0, v8

    sget-object v1, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v1, v0, v9

    sget-object v1, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v1, v0, v10

    sget-object v1, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v1, v0, v11

    sget-object v1, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v1, v0, v12

    sget-object v1, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_LOCALE_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v1, v0, v13

    sget-object v1, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_SIM_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v1, v0, v14

    sget-object v1, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_LOCALE_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_SIM_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_NETWORK_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v1, v0, v15

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->$VALUES:[Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

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

    .line 2304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2305
    iput-object p3, p0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->representation:Ljava/lang/String;

    return-void
.end method

.method public static getPrefForValue(Ljava/lang/String;)Lcom/hbb20/CountryCodePicker$AutoDetectionPref;
    .locals 5

    .line 2309
    invoke-static {}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->values()[Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 2310
    iget-object v4, v3, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->representation:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2314
    :cond_1
    sget-object p0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hbb20/CountryCodePicker$AutoDetectionPref;
    .locals 1

    .line 2285
    const-class v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    return-object p0
.end method

.method public static values()[Lcom/hbb20/CountryCodePicker$AutoDetectionPref;
    .locals 1

    .line 2285
    sget-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->$VALUES:[Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    invoke-virtual {v0}, [Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    return-object v0
.end method
