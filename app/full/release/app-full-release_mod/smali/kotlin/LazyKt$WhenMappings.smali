.class public final synthetic Lkotlin/LazyKt$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lkotlin/LazyThreadSafetyMode;->values()[Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlin/LazyKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lkotlin/LazyKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v4, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    invoke-virtual {v4}, Lkotlin/LazyThreadSafetyMode;->ordinal()I

    move-result v4

    aput v1, v0, v4

    sget-object v0, Lkotlin/LazyKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    invoke-virtual {v1}, Lkotlin/LazyThreadSafetyMode;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lkotlin/LazyKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-virtual {v1}, Lkotlin/LazyThreadSafetyMode;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
