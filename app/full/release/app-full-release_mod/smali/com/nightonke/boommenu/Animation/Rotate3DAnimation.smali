.class public Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;
.super Landroid/view/animation/Animation;
.source "Rotate3DAnimation.java"


# instance fields
.field private camera:Landroid/graphics/Camera;

.field private centerX:F

.field private centerY:F

.field private startX:F

.field private startY:F

.field private view:Landroid/view/View;

.field private xs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private ys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(FFLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 34
    iput p1, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->centerX:F

    .line 35
    iput p2, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->centerY:F

    .line 36
    iput-object p3, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->xs:Ljava/util/ArrayList;

    .line 37
    iput-object p4, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->ys:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->camera:Landroid/graphics/Camera;

    .line 49
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->xs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v2, v1

    add-int/lit8 v3, v2, 0x1

    .line 61
    iget-object v4, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->xs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->xs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 62
    :cond_0
    iget-object v4, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->xs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->xs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v5, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->xs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v3, v5

    int-to-float v2, v2

    sub-float/2addr v1, v2

    mul-float/2addr v3, v1

    add-float v2, v4, v3

    .line 64
    iget-object v1, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->ys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int v1, p1

    add-int/lit8 v3, v1, 0x1

    .line 67
    iget-object v4, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->ys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->ys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 68
    :cond_1
    iget-object v4, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->ys:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->ys:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v5, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->ys:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v3, v5

    int-to-float v1, v1

    sub-float/2addr p1, v1

    mul-float/2addr v3, p1

    add-float p1, v4, v3

    goto :goto_0

    :cond_2
    move p1, v2

    .line 71
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 72
    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->rotateX(F)V

    .line 73
    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 74
    invoke-virtual {v0, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 77
    iget-object p1, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iget v0, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->startX:F

    sub-float/2addr p1, v0

    .line 78
    iget-object v0, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget v1, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->startY:F

    sub-float/2addr v0, v1

    neg-float v1, p1

    .line 80
    iget v2, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->centerX:F

    sub-float/2addr v1, v2

    neg-float v2, v0

    iget v3, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->centerY:F

    sub-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 81
    iget v1, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->centerX:F

    add-float/2addr p1, v1

    iget v1, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->centerY:F

    add-float/2addr v0, v1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 43
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->camera:Landroid/graphics/Camera;

    return-void
.end method

.method public set(Landroid/view/View;FF)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->view:Landroid/view/View;

    .line 86
    iput p2, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->startX:F

    .line 87
    iput p3, p0, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->startY:F

    return-void
.end method
