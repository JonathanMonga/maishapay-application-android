.class public final enum Lcom/nightonke/boommenu/Animation/EaseEnum;
.super Ljava/lang/Enum;
.source "EaseEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nightonke/boommenu/Animation/EaseEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInBack:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInBounce:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInCirc:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInCubic:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInElastic:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInExpo:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInOutBack:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInOutBounce:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInOutCirc:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInOutCubic:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInOutElastic:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInOutExpo:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInOutQuad:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInOutQuart:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInOutQuint:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInOutSine:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInQuad:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInQuart:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInQuint:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseInSine:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseOutBack:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseOutBounce:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseOutCirc:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseOutCubic:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseOutElastic:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseOutExpo:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseOutQuad:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseOutQuart:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseOutQuint:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum EaseOutSine:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum Linear:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field public static final enum Unknown:Lcom/nightonke/boommenu/Animation/EaseEnum;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 13
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInSine"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInSine:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 14
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseOutSine"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutSine:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 15
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInOutSine"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutSine:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 17
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInQuad"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInQuad:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 18
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseOutQuad"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutQuad:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 19
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInOutQuad"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutQuad:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 21
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInCubic"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInCubic:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 22
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseOutCubic"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutCubic:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 23
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInOutCubic"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutCubic:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 25
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInQuart"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInQuart:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 26
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseOutQuart"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutQuart:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 27
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInOutQuart"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutQuart:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 29
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInQuint"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInQuint:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 30
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseOutQuint"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutQuint:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 31
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInOutQuint"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutQuint:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 33
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInExpo"

    const/16 v15, 0xf

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v14}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInExpo:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 34
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseOutExpo"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v1, v14, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutExpo:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 35
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInOutExpo"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v1, v14, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutExpo:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 37
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInCirc"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v1, v14, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInCirc:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 38
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseOutCirc"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v1, v14, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutCirc:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 39
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInOutCirc"

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-direct {v0, v1, v14, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutCirc:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 41
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInBack"

    const/16 v14, 0x15

    const/16 v15, 0x15

    invoke-direct {v0, v1, v14, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInBack:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 42
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseOutBack"

    const/16 v14, 0x16

    const/16 v15, 0x16

    invoke-direct {v0, v1, v14, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutBack:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 43
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInOutBack"

    const/16 v14, 0x17

    const/16 v15, 0x17

    invoke-direct {v0, v1, v14, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutBack:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 45
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInElastic"

    const/16 v14, 0x18

    const/16 v15, 0x18

    invoke-direct {v0, v1, v14, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInElastic:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 46
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseOutElastic"

    const/16 v14, 0x19

    const/16 v15, 0x19

    invoke-direct {v0, v1, v14, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutElastic:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 47
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInOutElastic"

    const/16 v14, 0x1a

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v14, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutElastic:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 49
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInBounce"

    const/16 v14, 0x1b

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v14, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInBounce:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 50
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseOutBounce"

    const/16 v14, 0x1c

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v14, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutBounce:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 51
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "EaseInOutBounce"

    const/16 v14, 0x1d

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v14, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutBounce:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 53
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "Linear"

    const/16 v14, 0x1e

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v14, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->Linear:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 54
    new-instance v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    const-string v1, "Unknown"

    const/16 v14, 0x1f

    const/4 v15, -0x1

    invoke-direct {v0, v1, v14, v15}, Lcom/nightonke/boommenu/Animation/EaseEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->Unknown:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v0, 0x20

    .line 11
    new-array v0, v0, [Lcom/nightonke/boommenu/Animation/EaseEnum;

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInSine:Lcom/nightonke/boommenu/Animation/EaseEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutSine:Lcom/nightonke/boommenu/Animation/EaseEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutSine:Lcom/nightonke/boommenu/Animation/EaseEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInQuad:Lcom/nightonke/boommenu/Animation/EaseEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutQuad:Lcom/nightonke/boommenu/Animation/EaseEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutQuad:Lcom/nightonke/boommenu/Animation/EaseEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInCubic:Lcom/nightonke/boommenu/Animation/EaseEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutCubic:Lcom/nightonke/boommenu/Animation/EaseEnum;

    aput-object v1, v0, v9

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutCubic:Lcom/nightonke/boommenu/Animation/EaseEnum;

    aput-object v1, v0, v10

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInQuart:Lcom/nightonke/boommenu/Animation/EaseEnum;

    aput-object v1, v0, v11

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutQuart:Lcom/nightonke/boommenu/Animation/EaseEnum;

    aput-object v1, v0, v12

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutQuart:Lcom/nightonke/boommenu/Animation/EaseEnum;

    aput-object v1, v0, v13

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInQuint:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutQuint:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutQuint:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInExpo:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutExpo:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutExpo:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInCirc:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutCirc:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutCirc:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInBack:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutBack:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutBack:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInElastic:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutElastic:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutElastic:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInBounce:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutBounce:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseInOutBounce:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->Linear:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->Unknown:Lcom/nightonke/boommenu/Animation/EaseEnum;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->$VALUES:[Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/nightonke/boommenu/Animation/EaseEnum;->value:I

    return-void
.end method

.method public static getEnum(I)Lcom/nightonke/boommenu/Animation/EaseEnum;
    .locals 1

    if-ltz p0, :cond_1

    .line 67
    invoke-static {}, Lcom/nightonke/boommenu/Animation/EaseEnum;->values()[Lcom/nightonke/boommenu/Animation/EaseEnum;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lcom/nightonke/boommenu/Animation/EaseEnum;->values()[Lcom/nightonke/boommenu/Animation/EaseEnum;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 67
    :cond_1
    :goto_0
    sget-object p0, Lcom/nightonke/boommenu/Animation/EaseEnum;->Unknown:Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nightonke/boommenu/Animation/EaseEnum;
    .locals 1

    .line 11
    const-class v0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-object p0
.end method

.method public static values()[Lcom/nightonke/boommenu/Animation/EaseEnum;
    .locals 1

    .line 11
    sget-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->$VALUES:[Lcom/nightonke/boommenu/Animation/EaseEnum;

    invoke-virtual {v0}, [Lcom/nightonke/boommenu/Animation/EaseEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/nightonke/boommenu/Animation/EaseEnum;->value:I

    return v0
.end method
