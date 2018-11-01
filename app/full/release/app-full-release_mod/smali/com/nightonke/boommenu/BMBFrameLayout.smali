.class Lcom/nightonke/boommenu/BMBFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BMBFrameLayout.java"


# instance fields
.field private requestLayoutNotFinish:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BMBFrameLayout;->requestLayoutNotFinish:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BMBFrameLayout;->requestLayoutNotFinish:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BMBFrameLayout;->requestLayoutNotFinish:Z

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 40
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BMBFrameLayout;->requestLayoutNotFinish:Z

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BMBFrameLayout;->requestLayoutNotFinish:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BMBFrameLayout;->requestLayoutNotFinish:Z

    .line 35
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
