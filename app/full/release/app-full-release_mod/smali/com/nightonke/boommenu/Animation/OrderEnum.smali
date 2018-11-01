.class public final enum Lcom/nightonke/boommenu/Animation/OrderEnum;
.super Ljava/lang/Enum;
.source "OrderEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nightonke/boommenu/Animation/OrderEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nightonke/boommenu/Animation/OrderEnum;

.field public static final enum DEFAULT:Lcom/nightonke/boommenu/Animation/OrderEnum;

.field public static final enum RANDOM:Lcom/nightonke/boommenu/Animation/OrderEnum;

.field public static final enum REVERSE:Lcom/nightonke/boommenu/Animation/OrderEnum;

.field public static final enum Unknown:Lcom/nightonke/boommenu/Animation/OrderEnum;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/nightonke/boommenu/Animation/OrderEnum;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/nightonke/boommenu/Animation/OrderEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/OrderEnum;->DEFAULT:Lcom/nightonke/boommenu/Animation/OrderEnum;

    .line 13
    new-instance v0, Lcom/nightonke/boommenu/Animation/OrderEnum;

    const-string v1, "REVERSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/nightonke/boommenu/Animation/OrderEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/OrderEnum;->REVERSE:Lcom/nightonke/boommenu/Animation/OrderEnum;

    .line 14
    new-instance v0, Lcom/nightonke/boommenu/Animation/OrderEnum;

    const-string v1, "RANDOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/nightonke/boommenu/Animation/OrderEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/OrderEnum;->RANDOM:Lcom/nightonke/boommenu/Animation/OrderEnum;

    .line 16
    new-instance v0, Lcom/nightonke/boommenu/Animation/OrderEnum;

    const-string v1, "Unknown"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/nightonke/boommenu/Animation/OrderEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/Animation/OrderEnum;->Unknown:Lcom/nightonke/boommenu/Animation/OrderEnum;

    const/4 v0, 0x4

    .line 10
    new-array v0, v0, [Lcom/nightonke/boommenu/Animation/OrderEnum;

    sget-object v1, Lcom/nightonke/boommenu/Animation/OrderEnum;->DEFAULT:Lcom/nightonke/boommenu/Animation/OrderEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/Animation/OrderEnum;->REVERSE:Lcom/nightonke/boommenu/Animation/OrderEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nightonke/boommenu/Animation/OrderEnum;->RANDOM:Lcom/nightonke/boommenu/Animation/OrderEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nightonke/boommenu/Animation/OrderEnum;->Unknown:Lcom/nightonke/boommenu/Animation/OrderEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nightonke/boommenu/Animation/OrderEnum;->$VALUES:[Lcom/nightonke/boommenu/Animation/OrderEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/nightonke/boommenu/Animation/OrderEnum;->value:I

    return-void
.end method

.method public static getEnum(I)Lcom/nightonke/boommenu/Animation/OrderEnum;
    .locals 1

    if-ltz p0, :cond_1

    .line 29
    invoke-static {}, Lcom/nightonke/boommenu/Animation/OrderEnum;->values()[Lcom/nightonke/boommenu/Animation/OrderEnum;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lcom/nightonke/boommenu/Animation/OrderEnum;->values()[Lcom/nightonke/boommenu/Animation/OrderEnum;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 29
    :cond_1
    :goto_0
    sget-object p0, Lcom/nightonke/boommenu/Animation/OrderEnum;->Unknown:Lcom/nightonke/boommenu/Animation/OrderEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nightonke/boommenu/Animation/OrderEnum;
    .locals 1

    .line 10
    const-class v0, Lcom/nightonke/boommenu/Animation/OrderEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nightonke/boommenu/Animation/OrderEnum;

    return-object p0
.end method

.method public static values()[Lcom/nightonke/boommenu/Animation/OrderEnum;
    .locals 1

    .line 10
    sget-object v0, Lcom/nightonke/boommenu/Animation/OrderEnum;->$VALUES:[Lcom/nightonke/boommenu/Animation/OrderEnum;

    invoke-virtual {v0}, [Lcom/nightonke/boommenu/Animation/OrderEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nightonke/boommenu/Animation/OrderEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/nightonke/boommenu/Animation/OrderEnum;->value:I

    return v0
.end method
