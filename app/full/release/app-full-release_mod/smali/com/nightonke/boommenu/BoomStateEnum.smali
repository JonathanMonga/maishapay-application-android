.class final enum Lcom/nightonke/boommenu/BoomStateEnum;
.super Ljava/lang/Enum;
.source "BoomStateEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nightonke/boommenu/BoomStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nightonke/boommenu/BoomStateEnum;

.field public static final enum DidBoom:Lcom/nightonke/boommenu/BoomStateEnum;

.field public static final enum DidReboom:Lcom/nightonke/boommenu/BoomStateEnum;

.field public static final enum WillBoom:Lcom/nightonke/boommenu/BoomStateEnum;

.field public static final enum WillReboom:Lcom/nightonke/boommenu/BoomStateEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/nightonke/boommenu/BoomStateEnum;

    const-string v1, "DidBoom"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nightonke/boommenu/BoomStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nightonke/boommenu/BoomStateEnum;->DidBoom:Lcom/nightonke/boommenu/BoomStateEnum;

    .line 12
    new-instance v0, Lcom/nightonke/boommenu/BoomStateEnum;

    const-string v1, "WillBoom"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/nightonke/boommenu/BoomStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nightonke/boommenu/BoomStateEnum;->WillBoom:Lcom/nightonke/boommenu/BoomStateEnum;

    .line 13
    new-instance v0, Lcom/nightonke/boommenu/BoomStateEnum;

    const-string v1, "DidReboom"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/nightonke/boommenu/BoomStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nightonke/boommenu/BoomStateEnum;->DidReboom:Lcom/nightonke/boommenu/BoomStateEnum;

    .line 14
    new-instance v0, Lcom/nightonke/boommenu/BoomStateEnum;

    const-string v1, "WillReboom"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/nightonke/boommenu/BoomStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nightonke/boommenu/BoomStateEnum;->WillReboom:Lcom/nightonke/boommenu/BoomStateEnum;

    const/4 v0, 0x4

    .line 10
    new-array v0, v0, [Lcom/nightonke/boommenu/BoomStateEnum;

    sget-object v1, Lcom/nightonke/boommenu/BoomStateEnum;->DidBoom:Lcom/nightonke/boommenu/BoomStateEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nightonke/boommenu/BoomStateEnum;->WillBoom:Lcom/nightonke/boommenu/BoomStateEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nightonke/boommenu/BoomStateEnum;->DidReboom:Lcom/nightonke/boommenu/BoomStateEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nightonke/boommenu/BoomStateEnum;->WillReboom:Lcom/nightonke/boommenu/BoomStateEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nightonke/boommenu/BoomStateEnum;->$VALUES:[Lcom/nightonke/boommenu/BoomStateEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nightonke/boommenu/BoomStateEnum;
    .locals 1

    .line 10
    const-class v0, Lcom/nightonke/boommenu/BoomStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nightonke/boommenu/BoomStateEnum;

    return-object p0
.end method

.method public static values()[Lcom/nightonke/boommenu/BoomStateEnum;
    .locals 1

    .line 10
    sget-object v0, Lcom/nightonke/boommenu/BoomStateEnum;->$VALUES:[Lcom/nightonke/boommenu/BoomStateEnum;

    invoke-virtual {v0}, [Lcom/nightonke/boommenu/BoomStateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nightonke/boommenu/BoomStateEnum;

    return-object v0
.end method
