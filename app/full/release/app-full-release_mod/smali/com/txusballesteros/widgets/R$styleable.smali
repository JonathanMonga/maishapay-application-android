.class public final Lcom/txusballesteros/widgets/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txusballesteros/widgets/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FitChart:[I

.field public static final FitChart_animationMode:I = 0x0

.field public static final FitChart_backStrokeColor:I = 0x1

.field public static final FitChart_strokeSize:I = 0x2

.field public static final FitChart_valueStrokeColor:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 32
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/txusballesteros/widgets/R$styleable;->FitChart:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04002f
        0x7f040038
        0x7f04023a
        0x7f040293
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
