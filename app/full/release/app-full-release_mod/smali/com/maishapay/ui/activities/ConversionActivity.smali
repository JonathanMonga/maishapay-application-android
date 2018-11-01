.class public Lcom/maishapay/ui/activities/ConversionActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ConversionActivity.java"

# interfaces
.implements Lcom/maishapay/ui/dialog/NumPadPossitiveButtonListener;


# static fields
.field private static CDF:Ljava/lang/String; = "Francs congolais (CDF)"

.field private static CDF_CURRENCY:Ljava/lang/String; = "FC"

.field private static USD:Ljava/lang/String; = "Dollars (USD)"

.field private static USD_CURRENCY:Ljava/lang/String; = "USD"

.field private static userCurrency:Ljava/lang/String;


# instance fields
.field ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090025
    .end annotation
.end field

.field SP_TypeEnvoi:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090074
    .end annotation
.end field

.field TV_Taux:Lorg/fabiomsr/moneytextview/MoneyTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090081
    .end annotation
.end field

.field private soundManager:Lorg/alfonz/media/SoundManager;

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090264
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/maishapay/ui/activities/ConversionActivity;->CDF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/maishapay/ui/activities/ConversionActivity;->userCurrency:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    sput-object p0, Lcom/maishapay/ui/activities/ConversionActivity;->userCurrency:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/maishapay/ui/activities/ConversionActivity;->CDF_CURRENCY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/maishapay/ui/activities/ConversionActivity;->USD_CURRENCY:Ljava/lang/String;

    return-object v0
.end method

.method private toastMessage(Ljava/lang/String;I)V
    .locals 1

    .line 143
    invoke-virtual {p0, p2}, Lcom/maishapay/ui/activities/ConversionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f010017

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p2, 0x1

    .line 144
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public BTN_ConversionClicked()V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090004
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/maishapay/ui/activities/ConversionActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {v0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f0f011b

    .line 116
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/ConversionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Montant"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090025

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/ConversionActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 120
    :cond_0
    sget-object v0, Lcom/maishapay/ui/activities/ConversionActivity;->userCurrency:Ljava/lang/String;

    const-string v3, "USD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/ConversionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v3, "%s"

    .line 122
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/maishapay/ui/activities/ConversionActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    .line 123
    invoke-virtual {v4}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result v4

    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentTaux(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FC"

    invoke-static {v1, v2}, Lcom/maishapay/ui/dialog/DialogConversionFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/maishapay/ui/dialog/DialogConversionFragment;

    move-result-object v1

    const-string v2, "DialogConversionFragment"

    .line 124
    invoke-virtual {v1, v0, v2}, Lcom/maishapay/ui/dialog/DialogConversionFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/ConversionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v3, "%s"

    .line 128
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/maishapay/ui/activities/ConversionActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    .line 129
    invoke-virtual {v4}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result v4

    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentTaux(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USD"

    invoke-static {v1, v2}, Lcom/maishapay/ui/dialog/DialogConversionFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/maishapay/ui/dialog/DialogConversionFragment;

    move-result-object v1

    const-string v2, "DialogConversionFragment"

    .line 130
    invoke-virtual {v1, v0, v2}, Lcom/maishapay/ui/dialog/DialogConversionFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/maishapay/ui/activities/ConversionActivity;->soundManager:Lorg/alfonz/media/SoundManager;

    const-string v1, "sounds/pull-out.mp3"

    invoke-virtual {v0, v1}, Lorg/alfonz/media/SoundManager;->playAsset(Ljava/lang/String;)V

    return-void
.end method

.method public ET_MontantClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090025
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/ConversionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/maishapay/ui/activities/ConversionActivity;->userCurrency:Ljava/lang/String;

    invoke-static {v1}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->newInstance(Ljava/lang/String;)Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;

    move-result-object v1

    const-string v2, "DialogNumberPickerFragment"

    .line 156
    invoke-virtual {v1, v0, v2}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 149
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public numPadPositiveClicked(Ljava/lang/String;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/maishapay/ui/activities/ConversionActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/fabiomsr/moneytextview/MoneyTextView;->setAmount(F)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b002d

    .line 66
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/ConversionActivity;->setContentView(I)V

    .line 67
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 69
    iget-object p1, p0, Lcom/maishapay/ui/activities/ConversionActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "Conversion"

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p1, p0, Lcom/maishapay/ui/activities/ConversionActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/ConversionActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 72
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/ConversionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 76
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 79
    :cond_0
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maishapay/app/MaishapayApplication;->getmSoundManager()Lorg/alfonz/media/SoundManager;

    move-result-object p1

    iput-object p1, p0, Lcom/maishapay/ui/activities/ConversionActivity;->soundManager:Lorg/alfonz/media/SoundManager;

    .line 81
    iget-object p1, p0, Lcom/maishapay/ui/activities/ConversionActivity;->TV_Taux:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentTaux(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->setAmount(F)V

    .line 83
    iget-object p1, p0, Lcom/maishapay/ui/activities/ConversionActivity;->SP_TypeEnvoi:Landroid/widget/Spinner;

    new-instance v0, Lcom/maishapay/ui/activities/ConversionActivity$1;

    invoke-direct {v0, p0}, Lcom/maishapay/ui/activities/ConversionActivity$1;-><init>(Lcom/maishapay/ui/activities/ConversionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 110
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/ConversionActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onStop()V
    .locals 1

    .line 138
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 139
    iget-object v0, p0, Lcom/maishapay/ui/activities/ConversionActivity;->soundManager:Lorg/alfonz/media/SoundManager;

    invoke-virtual {v0}, Lorg/alfonz/media/SoundManager;->stopAll()V

    return-void
.end method
