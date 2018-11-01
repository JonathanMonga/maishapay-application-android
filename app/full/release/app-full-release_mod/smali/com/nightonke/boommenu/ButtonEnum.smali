.class public final enum Lcom/nightonke/boommenu/ButtonEnum;
.super Ljava/lang/Enum;
.source "ButtonEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nightonke/boommenu/ButtonEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nightonke/boommenu/ButtonEnum;

.field public static final enum Ham:Lcom/nightonke/boommenu/ButtonEnum;

.field public static final enum SimpleCircle:Lcom/nightonke/boommenu/ButtonEnum;

.field public static final enum TextInsideCircle:Lcom/nightonke/boommenu/ButtonEnum;

.field public static final enum TextOutsideCircle:Lcom/nightonke/boommenu/ButtonEnum;

.field public static final enum Unknown:Lcom/nightonke/boommenu/ButtonEnum;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Lcom/nightonke/boommenu/ButtonEnum;

    const-string v1, "SimpleCircle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/nightonke/boommenu/ButtonEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/ButtonEnum;->SimpleCircle:Lcom/nightonke/boommenu/ButtonEnum;

    .line 20
    new-instance v0, Lcom/nightonke/boommenu/ButtonEnum;

    const-string v1, "TextInsideCircle"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/nightonke/boommenu/ButtonEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/ButtonEnum;->TextInsideCircle:Lcom/nightonke/boommenu/ButtonEnum;

    .line 25
    new-instance v0, Lcom/nightonke/boommenu/ButtonEnum;

    const-string v1, "TextOutsideCircle"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/nightonke/boommenu/ButtonEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/ButtonEnum;->TextOutsideCircle:Lcom/nightonke/boommenu/ButtonEnum;

    .line 30
    new-instance v0, Lcom/nightonke/boommenu/ButtonEnum;

    const-string v1, "Ham"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/nightonke/boommenu/ButtonEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/ButtonEnum;->Ham:Lcom/nightonke/boommenu/ButtonEnum;

    .line 32
    new-instance v0, Lcom/nightonke/boommenu/ButtonEnum;

    const-string v1, "Unknown"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/nightonke/boommenu/ButtonEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nightonke/boommenu/ButtonEnum;->Unknown:Lcom/nightonke/boommenu/ButtonEnum;

    const/4 v0, 0x5

    .line 10
    new-array v0, v0, [Lcom/nightonke/boommenu/ButtonEnum;

    sget-object v1, Lcom/nightonke/boommenu/ButtonEnum;->SimpleCircle:Lcom/nightonke/boommenu/ButtonEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/ButtonEnum;->TextInsideCircle:Lcom/nightonke/boommenu/ButtonEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nightonke/boommenu/ButtonEnum;->TextOutsideCircle:Lcom/nightonke/boommenu/ButtonEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nightonke/boommenu/ButtonEnum;->Ham:Lcom/nightonke/boommenu/ButtonEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nightonke/boommenu/ButtonEnum;->Unknown:Lcom/nightonke/boommenu/ButtonEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nightonke/boommenu/ButtonEnum;->$VALUES:[Lcom/nightonke/boommenu/ButtonEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/nightonke/boommenu/ButtonEnum;->value:I

    return-void
.end method

.method public static getEnum(I)Lcom/nightonke/boommenu/ButtonEnum;
    .locals 1

    if-ltz p0, :cond_1

    .line 45
    invoke-static {}, Lcom/nightonke/boommenu/ButtonEnum;->values()[Lcom/nightonke/boommenu/ButtonEnum;

    move-result-object v0

    array-length v0, v0

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lcom/nightonke/boommenu/ButtonEnum;->values()[Lcom/nightonke/boommenu/ButtonEnum;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 45
    :cond_1
    :goto_0
    sget-object p0, Lcom/nightonke/boommenu/ButtonEnum;->Unknown:Lcom/nightonke/boommenu/ButtonEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nightonke/boommenu/ButtonEnum;
    .locals 1

    .line 10
    const-class v0, Lcom/nightonke/boommenu/ButtonEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nightonke/boommenu/ButtonEnum;

    return-object p0
.end method

.method public static values()[Lcom/nightonke/boommenu/ButtonEnum;
    .locals 1

    .line 10
    sget-object v0, Lcom/nightonke/boommenu/ButtonEnum;->$VALUES:[Lcom/nightonke/boommenu/ButtonEnum;

    invoke-virtual {v0}, [Lcom/nightonke/boommenu/ButtonEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nightonke/boommenu/ButtonEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/nightonke/boommenu/ButtonEnum;->value:I

    return v0
.end method
