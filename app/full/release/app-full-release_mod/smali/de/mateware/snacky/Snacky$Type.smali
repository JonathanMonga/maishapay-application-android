.class final enum Lde/mateware/snacky/Snacky$Type;
.super Ljava/lang/Enum;
.source "Snacky.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mateware/snacky/Snacky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mateware/snacky/Snacky$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mateware/snacky/Snacky$Type;

.field public static final enum DEFAULT:Lde/mateware/snacky/Snacky$Type;

.field public static final enum ERROR:Lde/mateware/snacky/Snacky$Type;

.field public static final enum INFO:Lde/mateware/snacky/Snacky$Type;

.field public static final enum SUCCESS:Lde/mateware/snacky/Snacky$Type;

.field public static final enum WARNING:Lde/mateware/snacky/Snacky$Type;


# instance fields
.field private color:Ljava/lang/Integer;

.field private iconResId:Ljava/lang/Integer;

.field private standardTextColor:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 35
    new-instance v6, Lde/mateware/snacky/Snacky$Type;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lde/mateware/snacky/Snacky$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v6, Lde/mateware/snacky/Snacky$Type;->DEFAULT:Lde/mateware/snacky/Snacky$Type;

    new-instance v0, Lde/mateware/snacky/Snacky$Type;

    const-string v8, "SUCCESS"

    const-string v1, "#388E3C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget v1, Lde/mateware/snacky/R$drawable;->ic_check_black_24dp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lde/mateware/snacky/Snacky$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lde/mateware/snacky/Snacky$Type;->SUCCESS:Lde/mateware/snacky/Snacky$Type;

    new-instance v0, Lde/mateware/snacky/Snacky$Type;

    const-string v3, "ERROR"

    const-string v2, "#D50000"

    .line 36
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v2, Lde/mateware/snacky/R$drawable;->ic_clear_black_24dp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v4, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lde/mateware/snacky/Snacky$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lde/mateware/snacky/Snacky$Type;->ERROR:Lde/mateware/snacky/Snacky$Type;

    new-instance v0, Lde/mateware/snacky/Snacky$Type;

    const-string v9, "INFO"

    const-string v2, "#3F51B5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget v2, Lde/mateware/snacky/R$drawable;->ic_info_outline_black_24dp:I

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v10, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lde/mateware/snacky/Snacky$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lde/mateware/snacky/Snacky$Type;->INFO:Lde/mateware/snacky/Snacky$Type;

    new-instance v0, Lde/mateware/snacky/Snacky$Type;

    const-string v2, "WARNING"

    const-string v1, "#FFA900"

    .line 39
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v1, Lde/mateware/snacky/R$drawable;->ic_error_outline_black_24dp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lde/mateware/snacky/Snacky$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lde/mateware/snacky/Snacky$Type;->WARNING:Lde/mateware/snacky/Snacky$Type;

    const/4 v0, 0x5

    .line 34
    new-array v0, v0, [Lde/mateware/snacky/Snacky$Type;

    sget-object v1, Lde/mateware/snacky/Snacky$Type;->DEFAULT:Lde/mateware/snacky/Snacky$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lde/mateware/snacky/Snacky$Type;->SUCCESS:Lde/mateware/snacky/Snacky$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lde/mateware/snacky/Snacky$Type;->ERROR:Lde/mateware/snacky/Snacky$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lde/mateware/snacky/Snacky$Type;->INFO:Lde/mateware/snacky/Snacky$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lde/mateware/snacky/Snacky$Type;->WARNING:Lde/mateware/snacky/Snacky$Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lde/mateware/snacky/Snacky$Type;->$VALUES:[Lde/mateware/snacky/Snacky$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lde/mateware/snacky/Snacky$Type;->color:Ljava/lang/Integer;

    .line 47
    iput-object p4, p0, Lde/mateware/snacky/Snacky$Type;->iconResId:Ljava/lang/Integer;

    .line 48
    iput-object p5, p0, Lde/mateware/snacky/Snacky$Type;->standardTextColor:Ljava/lang/Integer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/mateware/snacky/Snacky$Type;
    .locals 1

    .line 34
    const-class v0, Lde/mateware/snacky/Snacky$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mateware/snacky/Snacky$Type;

    return-object p0
.end method

.method public static values()[Lde/mateware/snacky/Snacky$Type;
    .locals 1

    .line 34
    sget-object v0, Lde/mateware/snacky/Snacky$Type;->$VALUES:[Lde/mateware/snacky/Snacky$Type;

    invoke-virtual {v0}, [Lde/mateware/snacky/Snacky$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mateware/snacky/Snacky$Type;

    return-object v0
.end method


# virtual methods
.method public getColor()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lde/mateware/snacky/Snacky$Type;->color:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 56
    iget-object v0, p0, Lde/mateware/snacky/Snacky$Type;->iconResId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    iget-object v0, p0, Lde/mateware/snacky/Snacky$Type;->iconResId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lde/mateware/snacky/Snacky$Type;->standardTextColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lde/mateware/snacky/SnackyUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getStandardTextColor()Ljava/lang/Integer;
    .locals 1

    .line 64
    iget-object v0, p0, Lde/mateware/snacky/Snacky$Type;->standardTextColor:Ljava/lang/Integer;

    return-object v0
.end method
