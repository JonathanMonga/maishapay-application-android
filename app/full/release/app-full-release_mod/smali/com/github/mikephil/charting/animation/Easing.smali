.class public Lcom/github/mikephil/charting/animation/Easing;
.super Ljava/lang/Object;
.source "Easing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;,
        Lcom/github/mikephil/charting/animation/Easing$EasingOption;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEasingFunctionFromOption(Lcom/github/mikephil/charting/animation/Easing$EasingOption;)Lcom/github/mikephil/charting/animation/EasingFunction;
    .locals 1

    .line 47
    sget-object v0, Lcom/github/mikephil/charting/animation/Easing$1;->$SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption:[I

    invoke-virtual {p0}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 50
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->Linear:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 104
    :pswitch_0
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInOutBounce:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 102
    :pswitch_1
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseOutBounce:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 100
    :pswitch_2
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInBounce:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 98
    :pswitch_3
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInOutBack:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 96
    :pswitch_4
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseOutBack:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 94
    :pswitch_5
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInBack:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 92
    :pswitch_6
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInOutElastic:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 90
    :pswitch_7
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseOutElastic:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 88
    :pswitch_8
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInElastic:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 86
    :pswitch_9
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInOutCirc:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 84
    :pswitch_a
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseOutCirc:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 82
    :pswitch_b
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInCirc:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 80
    :pswitch_c
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInOutExpo:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 78
    :pswitch_d
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseOutExpo:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 76
    :pswitch_e
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInExpo:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 74
    :pswitch_f
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInOutSine:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 72
    :pswitch_10
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseOutSine:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 70
    :pswitch_11
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInSine:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 68
    :pswitch_12
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInOutQuart:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 66
    :pswitch_13
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseOutQuart:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 64
    :pswitch_14
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInQuart:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 62
    :pswitch_15
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInOutCubic:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 60
    :pswitch_16
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseOutCubic:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 58
    :pswitch_17
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInCubic:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 56
    :pswitch_18
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInOutQuad:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 54
    :pswitch_19
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseOutQuad:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    .line 52
    :pswitch_1a
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;->EaseInQuad:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
