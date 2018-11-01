.class public Lcom/mikepenz/iconics/context/IconicsAttrsApplier;
.super Ljava/lang/Object;
.source "IconicsAttrsApplier.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconicsDrawable(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 38
    sget-object v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 40
    :try_start_0
    new-instance v0, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;

    invoke-direct {v0, p0, p1}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    sget p0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_icon:I

    .line 41
    invoke-virtual {v0, p0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->iconId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;

    move-result-object p0

    sget v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_color:I

    .line 42
    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->colorsId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;

    move-result-object p0

    sget v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_size:I

    .line 43
    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->sizeId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;

    move-result-object p0

    sget v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_padding:I

    .line 44
    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->paddingId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;

    move-result-object p0

    sget v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_contour_color:I

    .line 45
    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->contourColorId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;

    move-result-object p0

    sget v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_contour_width:I

    .line 46
    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->contourWidthId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;

    move-result-object p0

    sget v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_background_color:I

    .line 47
    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->backgroundColorId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;

    move-result-object p0

    sget v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_corner_radius:I

    .line 48
    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->cornerRadiusId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;

    move-result-object p0

    sget v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_background_contour_color:I

    .line 49
    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->backgroundContourColorId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;

    move-result-object p0

    sget v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_background_contour_width:I

    .line 50
    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->backgroundContourWidthId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;

    move-result-object p0

    sget v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_offset_x:I

    .line 51
    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->offsetXId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;

    move-result-object p0

    sget v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_offset_y:I

    .line 52
    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->offsetYId(I)Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/mikepenz/iconics/context/IconicsAttrsExtractor;->extractWithOffsets()Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method
