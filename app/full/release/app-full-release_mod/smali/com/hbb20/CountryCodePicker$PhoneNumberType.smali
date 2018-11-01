.class public final enum Lcom/hbb20/CountryCodePicker$PhoneNumberType;
.super Ljava/lang/Enum;
.source "CountryCodePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/CountryCodePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneNumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hbb20/CountryCodePicker$PhoneNumberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum FIXED_LINE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum FIXED_LINE_OR_MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum PAGER:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum PERSONAL_NUMBER:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum PREMIUM_RATE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum SHARED_COST:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum TOLL_FREE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum UAN:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum UNKNOWN:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum VOICEMAIL:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum VOIP:Lcom/hbb20/CountryCodePicker$PhoneNumberType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 2256
    new-instance v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v1, "MOBILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2257
    new-instance v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v1, "FIXED_LINE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->FIXED_LINE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2260
    new-instance v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v1, "FIXED_LINE_OR_MOBILE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2262
    new-instance v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v1, "TOLL_FREE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->TOLL_FREE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2263
    new-instance v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v1, "PREMIUM_RATE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->PREMIUM_RATE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2267
    new-instance v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v1, "SHARED_COST"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->SHARED_COST:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2269
    new-instance v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v1, "VOIP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->VOIP:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2273
    new-instance v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v1, "PERSONAL_NUMBER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->PERSONAL_NUMBER:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2274
    new-instance v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v1, "PAGER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->PAGER:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2277
    new-instance v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v1, "UAN"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->UAN:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2279
    new-instance v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v1, "VOICEMAIL"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->VOICEMAIL:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2282
    new-instance v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v1, "UNKNOWN"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->UNKNOWN:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const/16 v0, 0xc

    .line 2255
    new-array v0, v0, [Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    sget-object v1, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->FIXED_LINE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->TOLL_FREE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->PREMIUM_RATE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->SHARED_COST:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->VOIP:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->PERSONAL_NUMBER:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->PAGER:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->UAN:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->VOICEMAIL:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->UNKNOWN:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    aput-object v1, v0, v13

    sput-object v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->$VALUES:[Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2255
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hbb20/CountryCodePicker$PhoneNumberType;
    .locals 1

    .line 2255
    const-class v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    return-object p0
.end method

.method public static values()[Lcom/hbb20/CountryCodePicker$PhoneNumberType;
    .locals 1

    .line 2255
    sget-object v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->$VALUES:[Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    invoke-virtual {v0}, [Lcom/hbb20/CountryCodePicker$PhoneNumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    return-object v0
.end method
