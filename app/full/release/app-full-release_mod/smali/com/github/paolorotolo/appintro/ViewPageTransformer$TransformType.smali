.class final enum Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;
.super Ljava/lang/Enum;
.source "ViewPageTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/paolorotolo/appintro/ViewPageTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TransformType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

.field public static final enum DEPTH:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

.field public static final enum FADE:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

.field public static final enum FLOW:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

.field public static final enum SLIDE_OVER:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

.field public static final enum ZOOM:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 103
    new-instance v0, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    const-string v1, "FLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->FLOW:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    .line 104
    new-instance v0, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    const-string v1, "DEPTH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->DEPTH:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    .line 105
    new-instance v0, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    const-string v1, "ZOOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->ZOOM:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    .line 106
    new-instance v0, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    const-string v1, "SLIDE_OVER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->SLIDE_OVER:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    .line 107
    new-instance v0, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    const-string v1, "FADE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->FADE:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    const/4 v0, 0x5

    .line 102
    new-array v0, v0, [Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    sget-object v1, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->FLOW:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->DEPTH:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->ZOOM:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->SLIDE_OVER:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->FADE:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->$VALUES:[Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;
    .locals 1

    .line 102
    const-class v0, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    return-object p0
.end method

.method public static values()[Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;
    .locals 1

    .line 102
    sget-object v0, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->$VALUES:[Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-virtual {v0}, [Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    return-object v0
.end method
