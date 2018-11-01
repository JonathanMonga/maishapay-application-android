.class public final Lcom/github/paolorotolo/appintro/AppIntroFragment;
.super Lcom/github/paolorotolo/appintro/AppIntroBaseFragment;
.source "AppIntroFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/github/paolorotolo/appintro/AppIntroBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/github/paolorotolo/appintro/model/SliderPage;)Lcom/github/paolorotolo/appintro/AppIntroFragment;
    .locals 4

    .line 49
    new-instance v0, Lcom/github/paolorotolo/appintro/AppIntroFragment;

    invoke-direct {v0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 51
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/model/SliderPage;->getTitleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title_typeface"

    .line 52
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/model/SliderPage;->getTitleTypeface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "desc"

    .line 53
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/model/SliderPage;->getDescriptionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "desc_typeface"

    .line 54
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/model/SliderPage;->getDescTypeface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "drawable"

    .line 55
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/model/SliderPage;->getImageDrawable()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "bg_color"

    .line 56
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/model/SliderPage;->getBgColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "title_color"

    .line 57
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/model/SliderPage;->getTitleColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "desc_color"

    .line 58
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/model/SliderPage;->getDescColor()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Lcom/github/paolorotolo/appintro/AppIntroFragment;
    .locals 8
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    .line 17
    invoke-static/range {v0 .. v7}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->newInstance(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IIII)Lcom/github/paolorotolo/appintro/AppIntroFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;II)Lcom/github/paolorotolo/appintro/AppIntroFragment;
    .locals 8
    .param p4    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 27
    invoke-static/range {v0 .. v7}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->newInstance(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IIII)Lcom/github/paolorotolo/appintro/AppIntroFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IIII)Lcom/github/paolorotolo/appintro/AppIntroFragment;
    .locals 1
    .param p4    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 35
    new-instance v0, Lcom/github/paolorotolo/appintro/model/SliderPage;

    invoke-direct {v0}, Lcom/github/paolorotolo/appintro/model/SliderPage;-><init>()V

    .line 36
    invoke-virtual {v0, p0}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v0, p1}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setTitleTypeface(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p2}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setDescription(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v0, p3}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setDescTypeface(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, p4}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setImageDrawable(I)V

    .line 41
    invoke-virtual {v0, p5}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setBgColor(I)V

    .line 42
    invoke-virtual {v0, p6}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setTitleColor(I)V

    .line 43
    invoke-virtual {v0, p7}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setDescColor(I)V

    .line 45
    invoke-static {v0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->newInstance(Lcom/github/paolorotolo/appintro/model/SliderPage;)Lcom/github/paolorotolo/appintro/AppIntroFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 66
    sget v0, Lcom/github/paolorotolo/appintro/R$layout;->fragment_intro:I

    return v0
.end method
