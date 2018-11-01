.class public final enum Lcom/afollestad/materialdialogs/StackingBehavior;
.super Ljava/lang/Enum;
.source "StackingBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/afollestad/materialdialogs/StackingBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/afollestad/materialdialogs/StackingBehavior;

.field public static final enum ADAPTIVE:Lcom/afollestad/materialdialogs/StackingBehavior;

.field public static final enum ALWAYS:Lcom/afollestad/materialdialogs/StackingBehavior;

.field public static final enum NEVER:Lcom/afollestad/materialdialogs/StackingBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/afollestad/materialdialogs/StackingBehavior;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/afollestad/materialdialogs/StackingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/afollestad/materialdialogs/StackingBehavior;->ALWAYS:Lcom/afollestad/materialdialogs/StackingBehavior;

    .line 8
    new-instance v0, Lcom/afollestad/materialdialogs/StackingBehavior;

    const-string v1, "ADAPTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/afollestad/materialdialogs/StackingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/afollestad/materialdialogs/StackingBehavior;->ADAPTIVE:Lcom/afollestad/materialdialogs/StackingBehavior;

    .line 10
    new-instance v0, Lcom/afollestad/materialdialogs/StackingBehavior;

    const-string v1, "NEVER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/afollestad/materialdialogs/StackingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/afollestad/materialdialogs/StackingBehavior;->NEVER:Lcom/afollestad/materialdialogs/StackingBehavior;

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [Lcom/afollestad/materialdialogs/StackingBehavior;

    sget-object v1, Lcom/afollestad/materialdialogs/StackingBehavior;->ALWAYS:Lcom/afollestad/materialdialogs/StackingBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/afollestad/materialdialogs/StackingBehavior;->ADAPTIVE:Lcom/afollestad/materialdialogs/StackingBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/afollestad/materialdialogs/StackingBehavior;->NEVER:Lcom/afollestad/materialdialogs/StackingBehavior;

    aput-object v1, v0, v4

    sput-object v0, Lcom/afollestad/materialdialogs/StackingBehavior;->$VALUES:[Lcom/afollestad/materialdialogs/StackingBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/afollestad/materialdialogs/StackingBehavior;
    .locals 1

    .line 4
    const-class v0, Lcom/afollestad/materialdialogs/StackingBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/afollestad/materialdialogs/StackingBehavior;

    return-object p0
.end method

.method public static values()[Lcom/afollestad/materialdialogs/StackingBehavior;
    .locals 1

    .line 4
    sget-object v0, Lcom/afollestad/materialdialogs/StackingBehavior;->$VALUES:[Lcom/afollestad/materialdialogs/StackingBehavior;

    invoke-virtual {v0}, [Lcom/afollestad/materialdialogs/StackingBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/afollestad/materialdialogs/StackingBehavior;

    return-object v0
.end method
