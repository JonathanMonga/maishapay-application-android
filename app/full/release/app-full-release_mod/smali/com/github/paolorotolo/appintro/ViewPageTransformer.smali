.class Lcom/github/paolorotolo/appintro/ViewPageTransformer;
.super Ljava/lang/Object;
.source "ViewPageTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;
    }
.end annotation


# static fields
.field private static final MIN_ALPHA_SLIDE:F = 0.35f

.field private static final MIN_ALPHA_ZOOM:F = 0.5f

.field private static final MIN_SCALE_DEPTH:F = 0.75f

.field private static final MIN_SCALE_ZOOM:F = 0.85f

.field private static final SCALE_FACTOR_SLIDE:F = 0.85f


# instance fields
.field private final mTransformType:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;


# direct methods
.method constructor <init>(Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/ViewPageTransformer;->mTransformType:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 8

    .line 23
    sget-object v0, Lcom/github/paolorotolo/appintro/ViewPageTransformer$1;->$SwitchMap$com$github$paolorotolo$appintro$ViewPageTransformer$TransformType:[I

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/ViewPageTransformer;->mTransformType:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x3e199998    # 0.14999998f

    const v2, 0x3f59999a    # 0.85f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    cmpg-float v0, p2, v3

    if-lez v0, :cond_2

    cmpl-float v0, p2, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v0, p2, v4

    if-nez v0, :cond_1

    .line 85
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    const/4 p2, 0x1

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_3

    .line 89
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v5, p2

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_3

    .line 82
    :cond_2
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    const/4 p2, 0x0

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_3

    :pswitch_1
    cmpl-float v0, p2, v3

    if-ltz v0, :cond_4

    cmpg-float v0, p2, v5

    if-gtz v0, :cond_4

    .line 64
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v5, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v2, v0, v2

    div-float/2addr v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    add-float/2addr v1, v2

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v5, v0

    mul-float/2addr v2, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    div-float/2addr v6, v3

    cmpg-float p2, p2, v4

    if-gez p2, :cond_3

    div-float/2addr v2, v3

    sub-float/2addr v6, v2

    move v4, v6

    goto :goto_1

    :cond_3
    neg-float p2, v6

    div-float/2addr v2, v3

    add-float/2addr p2, v2

    move v4, p2

    :goto_1
    move v5, v1

    goto :goto_2

    :pswitch_2
    cmpl-float v0, p2, v4

    if-lez v0, :cond_4

    cmpg-float v0, p2, v5

    if-gez v0, :cond_4

    sub-float v0, v5, p2

    const/high16 v1, 0x3f400000    # 0.75f

    const/high16 v2, 0x3e800000    # 0.25f

    .line 52
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v5, v3

    mul-float/2addr v2, v5

    add-float v5, v1, v2

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    neg-float p2, p2

    mul-float v4, v1, p2

    move v7, v5

    move v5, v0

    move v0, v7

    goto :goto_2

    :pswitch_3
    cmpg-float v0, p2, v4

    if-gez v0, :cond_4

    cmpl-float v0, p2, v3

    if-lez v0, :cond_4

    .line 31
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    const v1, 0x3eb33333    # 0.35f

    .line 33
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v5, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr p2, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_5

    move v4, p2

    goto :goto_2

    :cond_4
    move v0, v5

    .line 96
    :cond_5
    :goto_2
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 97
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void

    :pswitch_4
    const/high16 v0, -0x3e100000    # -30.0f

    mul-float/2addr p2, v0

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    return-void

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
