.class public Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;
.super Lcom/maishapay/ui/activities/BaseActivity;
.source "EpargnePersonnelleActivity.java"

# interfaces
.implements Lcom/maishapay/ui/dialog/NumPadPossitiveButtonListener;
.implements Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;
.implements Lcom/maishapay/view/EpargnePersonelleView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maishapay/ui/activities/BaseActivity<",
        "Lcom/maishapay/presenter/EpargnePersonellePresenter;",
        "Lcom/maishapay/view/EpargnePersonelleView;",
        ">;",
        "Lcom/maishapay/ui/dialog/NumPadPossitiveButtonListener;",
        "Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;",
        "Lcom/maishapay/view/EpargnePersonelleView;"
    }
.end annotation


# static fields
.field private static CDF:Ljava/lang/String; = "Francs congolais (CDF)"

.field private static CDF_CURRENCY:Ljava/lang/String; = "FC"

.field private static final REQUEST_QRCODE:I = 0x1

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

.field private dialogConfirmEpargneFragment:Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;

.field private progressDialog:Landroid/app/ProgressDialog;

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

    .line 55
    invoke-direct {p0}, Lcom/maishapay/ui/activities/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->CDF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->userCurrency:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    sput-object p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->userCurrency:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->CDF_CURRENCY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->USD_CURRENCY:Ljava/lang/String;

    return-object v0
.end method

.method private intProgressBar()V
    .locals 2

    .line 151
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 152
    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 153
    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 154
    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Veuillez patienter..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private toastMessage(Ljava/lang/String;I)V
    .locals 1

    .line 237
    invoke-virtual {p0, p2}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f010017

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p2, 0x1

    .line 238
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public ET_MontantClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090025
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 255
    sget-object v1, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->userCurrency:Ljava/lang/String;

    invoke-static {v1}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->newInstance(Ljava/lang/String;)Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;

    move-result-object v1

    const-string v2, "DialogNumberPickerFragment"

    .line 256
    invoke-virtual {v1, v0, v2}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 249
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public enabledControls(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :goto_0
    return-void
.end method

.method public finishToConfirm()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->dialogConfirmEpargneFragment:Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;

    invoke-virtual {v0}, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->dismiss()V

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/maishapay/ui/activities/SuccessPaiementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title_activity"

    const-string v2, "Epargne"

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->startActivity(Landroid/content/Intent;)V

    .line 210
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->finish()V

    return-void
.end method

.method public finishToTranfert(Lcom/maishapay/model/client/response/EpargneResponse;)V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 216
    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {v0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->userCurrency:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->dialogConfirmEpargneFragment:Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;

    .line 217
    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->dialogConfirmEpargneFragment:Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;

    const-string v1, "DialogConfirmEpargneFragment"

    invoke-virtual {v0, p1, v1}, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public numPadPositiveClicked(Ljava/lang/String;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/fabiomsr/moneytextview/MoneyTextView;->setAmount(F)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "qrcode"

    .line 133
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0048

    .line 78
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->setContentView(I)V

    .line 79
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 81
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "Epargne personnelle"

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 84
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 88
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->intProgressBar()V

    .line 93
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->SP_TypeEnvoi:Landroid/widget/Spinner;

    new-instance v0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity$1;

    invoke-direct {v0, p0}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity$1;-><init>(Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 120
    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public positiveClicked(Ljava/lang/String;)V
    .locals 4

    const/4 p1, 0x0

    .line 243
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->enabledControls(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    check-cast p1, Lcom/maishapay/presenter/EpargnePersonellePresenter;

    const-string v0, ""

    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->userCurrency:Ljava/lang/String;

    iget-object v3, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {v3}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/maishapay/presenter/EpargnePersonellePresenter;->confirmTransfertEpargne(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public providePresenter()Lcom/maishapay/presenter/EpargnePersonellePresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 233
    new-instance v0, Lcom/maishapay/presenter/EpargnePersonellePresenter;

    invoke-direct {v0}, Lcom/maishapay/presenter/EpargnePersonellePresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic providePresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->providePresenter()Lcom/maishapay/presenter/EpargnePersonellePresenter;

    move-result-object v0

    return-object v0
.end method

.method public qrCodeClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090209
        }
    .end annotation

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/maishapay/ui/qrcode/DecoderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public showConfimationError(I)V
    .locals 1

    .line 195
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->dialogConfirmEpargneFragment:Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;

    invoke-virtual {p1}, Lcom/maishapay/ui/dialog/DialogConfirmEpargneFragment;->dismiss()V

    .line 196
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const v0, 0x7f090216

    .line 197
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v0, "Votre transfert \u00e0 echou\u00e9, veuillez recommencer."

    .line 198
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public showNetworkError()V
    .locals 2

    .line 159
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const v1, 0x7f090216

    .line 160
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "Vous avez besion d\'une connexion internet pour effectuer cette action!"

    .line 161
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const/4 v1, -0x2

    .line 162
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "R\u00e9esseyer"

    .line 163
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    new-instance v1, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity$2;

    invoke-direct {v1, p0}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity$2;-><init>(Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;)V

    .line 164
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionClickListener(Landroid/view/View$OnClickListener;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lde/mateware/snacky/Snacky$Builder;->error()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public showTranfertError(I)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f090216

    if-nez p1, :cond_0

    .line 178
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 179
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v1, "D\u00e9sol\u00e9, vous ne disposez pas de compte epargne, veuillez en cr\u00e9er pour faire ce tranfert."

    .line 180
    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 181
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 185
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 186
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v1, "D\u00e9sol\u00e9, votre solde est insuffisant pour ce transfert."

    .line 187
    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 188
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public transfertClicked()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09000c
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {v0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f0f011b

    .line 142
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Montant"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090025

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 146
    :cond_0
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->enabledControls(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v0

    check-cast v0, Lcom/maishapay/presenter/EpargnePersonellePresenter;

    const-string v1, ""

    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->userCurrency:Ljava/lang/String;

    iget-object v4, p0, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {v4}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/maishapay/presenter/EpargnePersonellePresenter;->transfertEpargnePersonelle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
