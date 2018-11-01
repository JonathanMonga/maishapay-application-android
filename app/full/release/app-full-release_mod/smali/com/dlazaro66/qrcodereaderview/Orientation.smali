.class public final enum Lcom/dlazaro66/qrcodereaderview/Orientation;
.super Ljava/lang/Enum;
.source "Orientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dlazaro66/qrcodereaderview/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dlazaro66/qrcodereaderview/Orientation;

.field public static final enum LANDSCAPE:Lcom/dlazaro66/qrcodereaderview/Orientation;

.field public static final enum PORTRAIT:Lcom/dlazaro66/qrcodereaderview/Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/dlazaro66/qrcodereaderview/Orientation;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dlazaro66/qrcodereaderview/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dlazaro66/qrcodereaderview/Orientation;->PORTRAIT:Lcom/dlazaro66/qrcodereaderview/Orientation;

    new-instance v0, Lcom/dlazaro66/qrcodereaderview/Orientation;

    const-string v1, "LANDSCAPE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dlazaro66/qrcodereaderview/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dlazaro66/qrcodereaderview/Orientation;->LANDSCAPE:Lcom/dlazaro66/qrcodereaderview/Orientation;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/dlazaro66/qrcodereaderview/Orientation;

    sget-object v1, Lcom/dlazaro66/qrcodereaderview/Orientation;->PORTRAIT:Lcom/dlazaro66/qrcodereaderview/Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dlazaro66/qrcodereaderview/Orientation;->LANDSCAPE:Lcom/dlazaro66/qrcodereaderview/Orientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dlazaro66/qrcodereaderview/Orientation;->$VALUES:[Lcom/dlazaro66/qrcodereaderview/Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dlazaro66/qrcodereaderview/Orientation;
    .locals 1

    .line 3
    const-class v0, Lcom/dlazaro66/qrcodereaderview/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dlazaro66/qrcodereaderview/Orientation;

    return-object p0
.end method

.method public static values()[Lcom/dlazaro66/qrcodereaderview/Orientation;
    .locals 1

    .line 3
    sget-object v0, Lcom/dlazaro66/qrcodereaderview/Orientation;->$VALUES:[Lcom/dlazaro66/qrcodereaderview/Orientation;

    invoke-virtual {v0}, [Lcom/dlazaro66/qrcodereaderview/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dlazaro66/qrcodereaderview/Orientation;

    return-object v0
.end method
