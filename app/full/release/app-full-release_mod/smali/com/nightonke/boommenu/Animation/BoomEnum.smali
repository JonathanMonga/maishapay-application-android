.class public final enum Lcom/nightonke/boommenu/Animation/BoomEnum;
.super Ljava/lang/Enum;
.source "BoomEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nightonke/boommenu/Animation/BoomEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nightonke/boommenu/Animation/BoomEnum;

.field public static final enum HORIZONTAL_THROW_1:Lcom/nightonke/boommenu/Animation/BoomEnum;

.field public static final enum HORIZONTAL_THROW_2:Lcom/nightonke/boommenu/Animation/BoomEnum;

.field public static final enum LINE:Lcom/nightonke/boommenu/Animation/BoomEnum;

.field public static final enum PARABOLA_1:Lcom/nightonke/boommenu/Animation/BoomEnum;

.field public static final enum PARABOLA_2:Lcom/nightonke/boommenu/Animation/BoomEnum;

.field public static final enum PARABOLA_3:Lcom/nightonke/boommenu/Animation/BoomEnum;

.field public static final enum PARABOLA_4:Lcom/nightonke/boommenu/Animation/BoomEnum;

.field public static final enum RANDOM:Lcom/nightonke/boommenu/Animation/BoomEnum;

.field public static final enum Unknown:Lcom/nightonke/boommenu/Animation/BoomEnum;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 13
    new-instance v0, Lcom/nightonke/boommenu/Animation/BoomEnum;

    const-string v1, "LINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/nightonke/boommenu/Animation/BoomEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/BoomEnum;->LINE:Lcom/nightonke/boommenu/Animation/BoomEnum;

    .line 14
    new-instance v0, Lcom/nightonke/boommenu/Animation/BoomEnum;

    const-string v1, "PARABOLA_1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/nightonke/boommenu/Animation/BoomEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/BoomEnum;->PARABOLA_1:Lcom/nightonke/boommenu/Animation/BoomEnum;

    .line 15
    new-instance v0, Lcom/nightonke/boommenu/Animation/BoomEnum;

    const-string v1, "PARABOLA_2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/nightonke/boommenu/Animation/BoomEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/BoomEnum;->PARABOLA_2:Lcom/nightonke/boommenu/Animation/BoomEnum;

    .line 16
    new-instance v0, Lcom/nightonke/boommenu/Animation/BoomEnum;

    const-string v1, "PARABOLA_3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/nightonke/boommenu/Animation/BoomEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/BoomEnum;->PARABOLA_3:Lcom/nightonke/boommenu/Animation/BoomEnum;

    .line 17
    new-instance v0, Lcom/nightonke/boommenu/Animation/BoomEnum;

    const-string v1, "PARABOLA_4"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/nightonke/boommenu/Animation/BoomEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/BoomEnum;->PARABOLA_4:Lcom/nightonke/boommenu/Animation/BoomEnum;

    .line 18
    new-instance v0, Lcom/nightonke/boommenu/Animation/BoomEnum;

    const-string v1, "HORIZONTAL_THROW_1"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/nightonke/boommenu/Animation/BoomEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/BoomEnum;->HORIZONTAL_THROW_1:Lcom/nightonke/boommenu/Animation/BoomEnum;

    .line 19
    new-instance v0, Lcom/nightonke/boommenu/Animation/BoomEnum;

    const-string v1, "HORIZONTAL_THROW_2"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/nightonke/boommenu/Animation/BoomEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/BoomEnum;->HORIZONTAL_THROW_2:Lcom/nightonke/boommenu/Animation/BoomEnum;

    .line 20
    new-instance v0, Lcom/nightonke/boommenu/Animation/BoomEnum;

    const-string v1, "RANDOM"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/nightonke/boommenu/Animation/BoomEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/BoomEnum;->RANDOM:Lcom/nightonke/boommenu/Animation/BoomEnum;

    .line 22
    new-instance v0, Lcom/nightonke/boommenu/Animation/BoomEnum;

    const-string v1, "Unknown"

    const/16 v10, 0x8

    const/4 v11, -0x1

    invoke-direct {v0, v1, v10, v11}, Lcom/nightonke/boommenu/Animation/BoomEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/BoomEnum;->Unknown:Lcom/nightonke/boommenu/Animation/BoomEnum;

    const/16 v0, 0x9

    .line 11
    new-array v0, v0, [Lcom/nightonke/boommenu/Animation/BoomEnum;

    sget-object v1, Lcom/nightonke/boommenu/Animation/BoomEnum;->LINE:Lcom/nightonke/boommenu/Animation/BoomEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/BoomEnum;->PARABOLA_1:Lcom/nightonke/boommenu/Animation/BoomEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nightonke/boommenu/Animation/BoomEnum;->PARABOLA_2:Lcom/nightonke/boommenu/Animation/BoomEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nightonke/boommenu/Animation/BoomEnum;->PARABOLA_3:Lcom/nightonke/boommenu/Animation/BoomEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nightonke/boommenu/Animation/BoomEnum;->PARABOLA_4:Lcom/nightonke/boommenu/Animation/BoomEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nightonke/boommenu/Animation/BoomEnum;->HORIZONTAL_THROW_1:Lcom/nightonke/boommenu/Animation/BoomEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nightonke/boommenu/Animation/BoomEnum;->HORIZONTAL_THROW_2:Lcom/nightonke/boommenu/Animation/BoomEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nightonke/boommenu/Animation/BoomEnum;->RANDOM:Lcom/nightonke/boommenu/Animation/BoomEnum;

    aput-object v1, v0, v9

    sget-object v1, Lcom/nightonke/boommenu/Animation/BoomEnum;->Unknown:Lcom/nightonke/boommenu/Animation/BoomEnum;

    aput-object v1, v0, v10

    sput-object v0, Lcom/nightonke/boommenu/Animation/BoomEnum;->$VALUES:[Lcom/nightonke/boommenu/Animation/BoomEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/nightonke/boommenu/Animation/BoomEnum;->value:I

    return-void
.end method

.method public static getEnum(I)Lcom/nightonke/boommenu/Animation/BoomEnum;
    .locals 1

    if-ltz p0, :cond_1

    .line 35
    invoke-static {}, Lcom/nightonke/boommenu/Animation/BoomEnum;->values()[Lcom/nightonke/boommenu/Animation/BoomEnum;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Lcom/nightonke/boommenu/Animation/BoomEnum;->values()[Lcom/nightonke/boommenu/Animation/BoomEnum;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 35
    :cond_1
    :goto_0
    sget-object p0, Lcom/nightonke/boommenu/Animation/BoomEnum;->Unknown:Lcom/nightonke/boommenu/Animation/BoomEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nightonke/boommenu/Animation/BoomEnum;
    .locals 1

    .line 11
    const-class v0, Lcom/nightonke/boommenu/Animation/BoomEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nightonke/boommenu/Animation/BoomEnum;

    return-object p0
.end method

.method public static values()[Lcom/nightonke/boommenu/Animation/BoomEnum;
    .locals 1

    .line 11
    sget-object v0, Lcom/nightonke/boommenu/Animation/BoomEnum;->$VALUES:[Lcom/nightonke/boommenu/Animation/BoomEnum;

    invoke-virtual {v0}, [Lcom/nightonke/boommenu/Animation/BoomEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nightonke/boommenu/Animation/BoomEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/nightonke/boommenu/Animation/BoomEnum;->value:I

    return v0
.end method
