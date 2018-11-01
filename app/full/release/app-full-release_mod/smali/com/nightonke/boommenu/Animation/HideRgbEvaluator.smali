.class public Lcom/nightonke/boommenu/Animation/HideRgbEvaluator;
.super Ljava/lang/Object;
.source "HideRgbEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# static fields
.field private static final sInstance:Lcom/nightonke/boommenu/Animation/HideRgbEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/nightonke/boommenu/Animation/HideRgbEvaluator;

    invoke-direct {v0}, Lcom/nightonke/boommenu/Animation/HideRgbEvaluator;-><init>()V

    sput-object v0, Lcom/nightonke/boommenu/Animation/HideRgbEvaluator;->sInstance:Lcom/nightonke/boommenu/Animation/HideRgbEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/nightonke/boommenu/Animation/HideRgbEvaluator;
    .locals 1

    .line 18
    sget-object v0, Lcom/nightonke/boommenu/Animation/HideRgbEvaluator;->sInstance:Lcom/nightonke/boommenu/Animation/HideRgbEvaluator;

    return-object v0
.end method

.method private speedMap(F)F
    .locals 5

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    const/4 v0, 0x0

    if-gtz v4, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    move p1, v1

    :cond_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    move p1, v0

    :cond_2
    return p1
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 23
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    .line 29
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 p3, p3, 0xff

    .line 35
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/Animation/HideRgbEvaluator;->speedMap(F)F

    move-result p1

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    sub-int/2addr v4, v1

    int-to-float v3, v4

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float/2addr p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int p1, v0, p2

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
