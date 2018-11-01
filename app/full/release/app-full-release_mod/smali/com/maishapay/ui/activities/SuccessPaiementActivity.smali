.class public Lcom/maishapay/ui/activities/SuccessPaiementActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SuccessPaiementActivity.java"


# static fields
.field public static final EXTRA_TITLE_ACTIVITY:Ljava/lang/String; = "title_activity"


# instance fields
.field TV_Msg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090080
    .end annotation
.end field

.field private soundManager:Lorg/alfonz/media/SoundManager;

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090264
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public LL_SiteClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090045
        }
    .end annotation

    const/4 v0, 0x1

    .line 53
    invoke-static {p0, v0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->setUserRefresh(Landroid/content/Context;Z)V

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/maishapay/ui/activities/DrawerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->startActivity(Landroid/content/Intent;)V

    .line 55
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->finish()V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b00a7

    .line 33
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->setContentView(I)V

    .line 34
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 36
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maishapay/app/MaishapayApplication;->getmSoundManager()Lorg/alfonz/media/SoundManager;

    move-result-object p1

    iput-object p1, p0, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->soundManager:Lorg/alfonz/media/SoundManager;

    .line 38
    iget-object p1, p0, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "%s \u00e9ffectu\u00e9."

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title_activity"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p1, p0, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->TV_Msg:Landroid/widget/TextView;

    const-string v0, "Votre %s s\'est \u00e9ffectu\u00e9 avec succ\u00e9s."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title_activity"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object p1, p0, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->soundManager:Lorg/alfonz/media/SoundManager;

    const-string v0, "sounds/job-done.mp3"

    invoke-virtual {p1, v0}, Lorg/alfonz/media/SoundManager;->playAsset(Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 48
    iget-object v0, p0, Lcom/maishapay/ui/activities/SuccessPaiementActivity;->soundManager:Lorg/alfonz/media/SoundManager;

    invoke-virtual {v0}, Lorg/alfonz/media/SoundManager;->stopAll()V

    return-void
.end method
