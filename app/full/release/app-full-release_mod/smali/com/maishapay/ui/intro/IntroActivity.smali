.class public Lcom/maishapay/ui/intro/IntroActivity;
.super Lcom/github/paolorotolo/appintro/AppIntro;
.source "IntroActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/github/paolorotolo/appintro/AppIntro;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-super {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getUserFirtRun(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/maishapay/ui/activities/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/intro/IntroActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurentUserLoginSuccess(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/maishapay/ui/activities/DrawerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/intro/IntroActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/maishapay/model/prefs/UserPrefencesManager;->setUserFirtRun(Landroid/content/Context;)V

    .line 34
    :goto_0
    new-instance p1, Lcom/github/paolorotolo/appintro/model/SliderPage;

    invoke-direct {p1}, Lcom/github/paolorotolo/appintro/model/SliderPage;-><init>()V

    const-string v0, "Bienvenue chez Maishapay"

    .line 35
    invoke-virtual {p1, v0}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f08031f

    .line 36
    invoke-virtual {p1, v0}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setImageDrawable(I)V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setBgColor(I)V

    .line 38
    invoke-static {p1}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->newInstance(Lcom/github/paolorotolo/appintro/model/SliderPage;)Lcom/github/paolorotolo/appintro/AppIntroFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/intro/IntroActivity;->addSlide(Landroid/support/v4/app/Fragment;)V

    .line 40
    new-instance p1, Lcom/github/paolorotolo/appintro/model/SliderPage;

    invoke-direct {p1}, Lcom/github/paolorotolo/appintro/model/SliderPage;-><init>()V

    const-string v1, "Transfert d\'argent."

    .line 41
    invoke-virtual {p1, v1}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Envoyez et recevez de l\'argent partout o\u00f9 vous \u00eates, et \u00e0 moindre frais."

    .line 42
    invoke-virtual {p1, v1}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0801a0

    .line 43
    invoke-virtual {p1, v1}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setImageDrawable(I)V

    .line 44
    invoke-virtual {p1, v0}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setBgColor(I)V

    .line 45
    invoke-static {p1}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->newInstance(Lcom/github/paolorotolo/appintro/model/SliderPage;)Lcom/github/paolorotolo/appintro/AppIntroFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/intro/IntroActivity;->addSlide(Landroid/support/v4/app/Fragment;)V

    .line 47
    new-instance p1, Lcom/github/paolorotolo/appintro/model/SliderPage;

    invoke-direct {p1}, Lcom/github/paolorotolo/appintro/model/SliderPage;-><init>()V

    const-string v1, "Achat et vente"

    .line 48
    invoke-virtual {p1, v1}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Effectuer vos achats ou vos ventes avec votre compte Maishapay."

    .line 49
    invoke-virtual {p1, v1}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0802d7

    .line 50
    invoke-virtual {p1, v1}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setImageDrawable(I)V

    .line 51
    invoke-virtual {p1, v0}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setBgColor(I)V

    .line 52
    invoke-static {p1}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->newInstance(Lcom/github/paolorotolo/appintro/model/SliderPage;)Lcom/github/paolorotolo/appintro/AppIntroFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/intro/IntroActivity;->addSlide(Landroid/support/v4/app/Fragment;)V

    .line 54
    new-instance p1, Lcom/github/paolorotolo/appintro/model/SliderPage;

    invoke-direct {p1}, Lcom/github/paolorotolo/appintro/model/SliderPage;-><init>()V

    const-string v1, "Compte d\'\u00e9pargne."

    .line 55
    invoke-virtual {p1, v1}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Vous voulez \u00e9pargner ? Alors faites-le sur Maishapay sans frais."

    .line 56
    invoke-virtual {p1, v1}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0802b4

    .line 57
    invoke-virtual {p1, v1}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setImageDrawable(I)V

    .line 58
    invoke-virtual {p1, v0}, Lcom/github/paolorotolo/appintro/model/SliderPage;->setBgColor(I)V

    .line 59
    invoke-static {p1}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->newInstance(Lcom/github/paolorotolo/appintro/model/SliderPage;)Lcom/github/paolorotolo/appintro/AppIntroFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/intro/IntroActivity;->addSlide(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onDonePressed(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro;->onDonePressed(Landroid/support/v4/app/Fragment;)V

    .line 72
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/maishapay/ui/activities/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/intro/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lcom/maishapay/ui/intro/IntroActivity;->finish()V

    return-void
.end method

.method public onSkipPressed(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro;->onSkipPressed(Landroid/support/v4/app/Fragment;)V

    .line 65
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/maishapay/ui/activities/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/intro/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/maishapay/ui/intro/IntroActivity;->finish()V

    return-void
.end method
