.class public final enum Lcom/txusballesteros/widgets/AnimationMode;
.super Ljava/lang/Enum;
.source "AnimationMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/txusballesteros/widgets/AnimationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/txusballesteros/widgets/AnimationMode;

.field public static final enum LINEAR:Lcom/txusballesteros/widgets/AnimationMode;

.field public static final enum OVERDRAW:Lcom/txusballesteros/widgets/AnimationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lcom/txusballesteros/widgets/AnimationMode;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/txusballesteros/widgets/AnimationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txusballesteros/widgets/AnimationMode;->LINEAR:Lcom/txusballesteros/widgets/AnimationMode;

    .line 29
    new-instance v0, Lcom/txusballesteros/widgets/AnimationMode;

    const-string v1, "OVERDRAW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/txusballesteros/widgets/AnimationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txusballesteros/widgets/AnimationMode;->OVERDRAW:Lcom/txusballesteros/widgets/AnimationMode;

    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [Lcom/txusballesteros/widgets/AnimationMode;

    sget-object v1, Lcom/txusballesteros/widgets/AnimationMode;->LINEAR:Lcom/txusballesteros/widgets/AnimationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txusballesteros/widgets/AnimationMode;->OVERDRAW:Lcom/txusballesteros/widgets/AnimationMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/txusballesteros/widgets/AnimationMode;->$VALUES:[Lcom/txusballesteros/widgets/AnimationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txusballesteros/widgets/AnimationMode;
    .locals 1

    .line 27
    const-class v0, Lcom/txusballesteros/widgets/AnimationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/txusballesteros/widgets/AnimationMode;

    return-object p0
.end method

.method public static values()[Lcom/txusballesteros/widgets/AnimationMode;
    .locals 1

    .line 27
    sget-object v0, Lcom/txusballesteros/widgets/AnimationMode;->$VALUES:[Lcom/txusballesteros/widgets/AnimationMode;

    invoke-virtual {v0}, [Lcom/txusballesteros/widgets/AnimationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txusballesteros/widgets/AnimationMode;

    return-object v0
.end method
