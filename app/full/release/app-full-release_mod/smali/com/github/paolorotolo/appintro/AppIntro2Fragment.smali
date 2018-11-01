.class public final Lcom/github/paolorotolo/appintro/AppIntro2Fragment;
.super Lcom/github/paolorotolo/appintro/AppIntroBaseFragment;
.source "AppIntro2Fragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/github/paolorotolo/appintro/AppIntroBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Lcom/github/paolorotolo/appintro/AppIntroFragment;
    .locals 6
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/github/paolorotolo/appintro/AppIntro2Fragment;->newInstance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIII)Lcom/github/paolorotolo/appintro/AppIntroFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIII)Lcom/github/paolorotolo/appintro/AppIntroFragment;
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 17
    new-instance v0, Lcom/github/paolorotolo/appintro/AppIntroFragment;

    invoke-direct {v0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;-><init>()V

    .line 18
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 19
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "title_typeface"

    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "desc"

    .line 21
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "desc_typeface"

    .line 22
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "drawable"

    .line 23
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "bg_color"

    .line 24
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "title_color"

    .line 25
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "desc_color"

    .line 26
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
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

    .line 36
    invoke-static/range {v0 .. v7}, Lcom/github/paolorotolo/appintro/AppIntro2Fragment;->newInstance(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IIII)Lcom/github/paolorotolo/appintro/AppIntroFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IIII)Lcom/github/paolorotolo/appintro/AppIntroFragment;
    .locals 3
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

    .line 44
    new-instance v0, Lcom/github/paolorotolo/appintro/AppIntroFragment;

    invoke-direct {v0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;-><init>()V

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 46
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "title_typeface"

    .line 47
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "desc"

    .line 48
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "desc_typeface"

    .line 49
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "drawable"

    .line 50
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "bg_color"

    .line 51
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "title_color"

    .line 52
    invoke-virtual {v1, p0, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "desc_color"

    .line 53
    invoke-virtual {v1, p0, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 61
    sget v0, Lcom/github/paolorotolo/appintro/R$layout;->fragment_intro2:I

    return v0
.end method
