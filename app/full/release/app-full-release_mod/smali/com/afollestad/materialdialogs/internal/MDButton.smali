.class public Lcom/afollestad/materialdialogs/internal/MDButton;
.super Landroid/widget/TextView;
.source "MDButton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private defaultBackground:Landroid/graphics/drawable/Drawable;

.field private stacked:Z

.field private stackedBackground:Landroid/graphics/drawable/Drawable;

.field private stackedEndPadding:I

.field private stackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 18
    iput-boolean p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stacked:Z

    .line 27
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 18
    iput-boolean p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stacked:Z

    .line 32
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/afollestad/materialdialogs/R$dimen;->md_dialog_frame_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedEndPadding:I

    .line 38
    sget-object p1, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    return-void
.end method


# virtual methods
.method public setAllCapsCompat(Z)V
    .locals 2

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setAllCaps(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 87
    new-instance p1, Lcom/afollestad/materialdialogs/internal/AllCapsTransformationMethod;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/afollestad/materialdialogs/internal/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 89
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    return-void
.end method

.method public setDefaultSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 76
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->defaultBackground:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stacked:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStacked(ZZ)V

    :cond_0
    return-void
.end method

.method setStacked(ZZ)V
    .locals 3

    .line 46
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stacked:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_6

    :cond_0
    const/16 p2, 0x11

    if-eqz p1, :cond_1

    const/16 v0, 0x10

    .line 48
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 49
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/GravityEnum;->getGravityInt()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 48
    :goto_0
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setGravity(I)V

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p2, :cond_3

    if-eqz p1, :cond_2

    .line 52
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/GravityEnum;->getTextAlignment()I

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x4

    :goto_1
    invoke-virtual {p0, p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTextAlignment(I)V

    :cond_3
    if-eqz p1, :cond_4

    .line 55
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->defaultBackground:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-static {p0, p2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_5

    .line 57
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedEndPadding:I

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedEndPadding:I

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->setPadding(IIII)V

    .line 60
    :cond_5
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stacked:Z

    :cond_6
    return-void
.end method

.method public setStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    return-void
.end method

.method public setStackedSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedBackground:Landroid/graphics/drawable/Drawable;

    .line 70
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stacked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStacked(ZZ)V

    :cond_0
    return-void
.end method
