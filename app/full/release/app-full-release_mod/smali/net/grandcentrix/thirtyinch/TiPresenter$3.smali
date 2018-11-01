.class synthetic Lnet/grandcentrix/thirtyinch/TiPresenter$3;
.super Ljava/lang/Object;
.source "TiPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/grandcentrix/thirtyinch/TiPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$grandcentrix$thirtyinch$TiPresenter$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 596
    invoke-static {}, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->values()[Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$3;->$SwitchMap$net$grandcentrix$thirtyinch$TiPresenter$State:[I

    :try_start_0
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$3;->$SwitchMap$net$grandcentrix$thirtyinch$TiPresenter$State:[I

    sget-object v1, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->INITIALIZED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    invoke-virtual {v1}, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$3;->$SwitchMap$net$grandcentrix$thirtyinch$TiPresenter$State:[I

    sget-object v1, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_DETACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    invoke-virtual {v1}, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$3;->$SwitchMap$net$grandcentrix$thirtyinch$TiPresenter$State:[I

    sget-object v1, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->VIEW_ATTACHED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    invoke-virtual {v1}, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lnet/grandcentrix/thirtyinch/TiPresenter$3;->$SwitchMap$net$grandcentrix$thirtyinch$TiPresenter$State:[I

    sget-object v1, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->DESTROYED:Lnet/grandcentrix/thirtyinch/TiPresenter$State;

    invoke-virtual {v1}, Lnet/grandcentrix/thirtyinch/TiPresenter$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
