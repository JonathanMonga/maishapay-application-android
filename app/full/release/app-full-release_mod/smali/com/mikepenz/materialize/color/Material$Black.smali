.class public final enum Lcom/mikepenz/materialize/color/Material$Black;
.super Ljava/lang/Enum;
.source "Material.java"

# interfaces
.implements Lcom/mikepenz/materialize/color/IColor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialize/color/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Black"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mikepenz/materialize/color/Material$Black;",
        ">;",
        "Lcom/mikepenz/materialize/color/IColor;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mikepenz/materialize/color/Material$Black;

.field public static final enum _1000:Lcom/mikepenz/materialize/color/Material$Black;


# instance fields
.field color:Ljava/lang/String;

.field resource:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 856
    new-instance v0, Lcom/mikepenz/materialize/color/Material$Black;

    const-string v1, "_1000"

    const-string v2, "#000000"

    sget v3, Lcom/mikepenz/materialize/R$color;->md_black_1000:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/mikepenz/materialize/color/Material$Black;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Black;->_1000:Lcom/mikepenz/materialize/color/Material$Black;

    const/4 v0, 0x1

    .line 854
    new-array v0, v0, [Lcom/mikepenz/materialize/color/Material$Black;

    sget-object v1, Lcom/mikepenz/materialize/color/Material$Black;->_1000:Lcom/mikepenz/materialize/color/Material$Black;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Black;->$VALUES:[Lcom/mikepenz/materialize/color/Material$Black;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 861
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 862
    iput-object p3, p0, Lcom/mikepenz/materialize/color/Material$Black;->color:Ljava/lang/String;

    .line 863
    iput p4, p0, Lcom/mikepenz/materialize/color/Material$Black;->resource:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mikepenz/materialize/color/Material$Black;
    .locals 1

    .line 854
    const-class v0, Lcom/mikepenz/materialize/color/Material$Black;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mikepenz/materialize/color/Material$Black;

    return-object p0
.end method

.method public static values()[Lcom/mikepenz/materialize/color/Material$Black;
    .locals 1

    .line 854
    sget-object v0, Lcom/mikepenz/materialize/color/Material$Black;->$VALUES:[Lcom/mikepenz/materialize/color/Material$Black;

    invoke-virtual {v0}, [Lcom/mikepenz/materialize/color/Material$Black;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mikepenz/materialize/color/Material$Black;

    return-object v0
.end method


# virtual methods
.method public getAsColor()I
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/mikepenz/materialize/color/Material$Black;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAsResource()I
    .locals 1

    .line 878
    iget v0, p0, Lcom/mikepenz/materialize/color/Material$Black;->resource:I

    return v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/mikepenz/materialize/color/Material$Black;->color:Ljava/lang/String;

    return-object v0
.end method
