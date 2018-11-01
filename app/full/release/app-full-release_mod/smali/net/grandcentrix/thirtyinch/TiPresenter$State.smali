.class public final enum Lnet/grandcentrix/thirtyinch/TiPresenter$State;
.super Ljava/lang/Enum;
.source "TiPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/grandcentrix/thirtyinch/TiPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/grandcentrix/thirtyinch/TiPresenter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/grandcentrix/thirtyinch/TiPresenter$State;

.field public static final enum DESTROYED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

.field public static final enum INITIALIZED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

.field public static final enum VIEW_ATTACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

.field public static final enum VIEW_DETACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 52
    new-instance v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/grandcentrix/thirtyinch/TiPresenter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->INITIALIZED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    .line 59
    new-instance v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    const-string v1, "VIEW_DETACHED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lnet/grandcentrix/thirtyinch/TiPresenter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_DETACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    .line 64
    new-instance v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    const-string v1, "VIEW_ATTACHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lnet/grandcentrix/thirtyinch/TiPresenter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_ATTACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    .line 68
    new-instance v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    const-string v1, "DESTROYED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lnet/grandcentrix/thirtyinch/TiPresenter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->DESTROYED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    const/4 v0, 0x4

    .line 48
    new-array v0, v0, [Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    sget-object v1, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->INITIALIZED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    aput-object v1, v0, v2

    sget-object v1, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_DETACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    aput-object v1, v0, v3

    sget-object v1, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_ATTACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    aput-object v1, v0, v4

    sget-object v1, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->DESTROYED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    aput-object v1, v0, v5

    sput-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->$VALUES:[Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/grandcentrix/thirtyinch/TiPresenter$State;
    .locals 1

    .line 48
    const-class v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    return-object p0
.end method

.method public static values()[Lnet/grandcentrix/thirtyinch/TiPresenter$State;
    .locals 1

    .line 48
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->$VALUES:[Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    invoke-virtual {v0}, [Lnet/grandcentrix/thirtyinch/TiPresenter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    return-object v0
.end method
