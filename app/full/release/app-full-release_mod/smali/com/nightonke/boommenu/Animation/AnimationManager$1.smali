.class synthetic Lcom/nightonke/boommenu/Animation/AnimationManager$1;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nightonke/boommenu/Animation/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nightonke$boommenu$Animation$BoomEnum:[I

.field static final synthetic $SwitchMap$com$nightonke$boommenu$Animation$OrderEnum:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 119
    invoke-static {}, Lcom/nightonke/boommenu/Animation/BoomEnum;->values()[Lcom/nightonke/boommenu/Animation/BoomEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$BoomEnum:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$BoomEnum:[I

    sget-object v2, Lcom/nightonke/boommenu/Animation/BoomEnum;->LINE:Lcom/nightonke/boommenu/Animation/BoomEnum;

    invoke-virtual {v2}, Lcom/nightonke/boommenu/Animation/BoomEnum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$BoomEnum:[I

    sget-object v3, Lcom/nightonke/boommenu/Animation/BoomEnum;->PARABOLA_1:Lcom/nightonke/boommenu/Animation/BoomEnum;

    invoke-virtual {v3}, Lcom/nightonke/boommenu/Animation/BoomEnum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$BoomEnum:[I

    sget-object v4, Lcom/nightonke/boommenu/Animation/BoomEnum;->PARABOLA_2:Lcom/nightonke/boommenu/Animation/BoomEnum;

    invoke-virtual {v4}, Lcom/nightonke/boommenu/Animation/BoomEnum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$BoomEnum:[I

    sget-object v4, Lcom/nightonke/boommenu/Animation/BoomEnum;->PARABOLA_3:Lcom/nightonke/boommenu/Animation/BoomEnum;

    invoke-virtual {v4}, Lcom/nightonke/boommenu/Animation/BoomEnum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$BoomEnum:[I

    sget-object v4, Lcom/nightonke/boommenu/Animation/BoomEnum;->PARABOLA_4:Lcom/nightonke/boommenu/Animation/BoomEnum;

    invoke-virtual {v4}, Lcom/nightonke/boommenu/Animation/BoomEnum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$BoomEnum:[I

    sget-object v4, Lcom/nightonke/boommenu/Animation/BoomEnum;->HORIZONTAL_THROW_1:Lcom/nightonke/boommenu/Animation/BoomEnum;

    invoke-virtual {v4}, Lcom/nightonke/boommenu/Animation/BoomEnum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$BoomEnum:[I

    sget-object v4, Lcom/nightonke/boommenu/Animation/BoomEnum;->HORIZONTAL_THROW_2:Lcom/nightonke/boommenu/Animation/BoomEnum;

    invoke-virtual {v4}, Lcom/nightonke/boommenu/Animation/BoomEnum;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$BoomEnum:[I

    sget-object v4, Lcom/nightonke/boommenu/Animation/BoomEnum;->RANDOM:Lcom/nightonke/boommenu/Animation/BoomEnum;

    invoke-virtual {v4}, Lcom/nightonke/boommenu/Animation/BoomEnum;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$BoomEnum:[I

    sget-object v4, Lcom/nightonke/boommenu/Animation/BoomEnum;->Unknown:Lcom/nightonke/boommenu/Animation/BoomEnum;

    invoke-virtual {v4}, Lcom/nightonke/boommenu/Animation/BoomEnum;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 79
    :catch_8
    invoke-static {}, Lcom/nightonke/boommenu/Animation/OrderEnum;->values()[Lcom/nightonke/boommenu/Animation/OrderEnum;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$OrderEnum:[I

    :try_start_9
    sget-object v3, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$OrderEnum:[I

    sget-object v4, Lcom/nightonke/boommenu/Animation/OrderEnum;->DEFAULT:Lcom/nightonke/boommenu/Animation/OrderEnum;

    invoke-virtual {v4}, Lcom/nightonke/boommenu/Animation/OrderEnum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$OrderEnum:[I

    sget-object v3, Lcom/nightonke/boommenu/Animation/OrderEnum;->REVERSE:Lcom/nightonke/boommenu/Animation/OrderEnum;

    invoke-virtual {v3}, Lcom/nightonke/boommenu/Animation/OrderEnum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/nightonke/boommenu/Animation/AnimationManager$1;->$SwitchMap$com$nightonke$boommenu$Animation$OrderEnum:[I

    sget-object v1, Lcom/nightonke/boommenu/Animation/OrderEnum;->RANDOM:Lcom/nightonke/boommenu/Animation/OrderEnum;

    invoke-virtual {v1}, Lcom/nightonke/boommenu/Animation/OrderEnum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
