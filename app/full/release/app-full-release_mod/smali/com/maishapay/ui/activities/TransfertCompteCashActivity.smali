.class public Lcom/maishapay/ui/activities/TransfertCompteCashActivity;
.super Lcom/maishapay/ui/activities/BaseActivity;
.source "TransfertCompteCashActivity.java"

# interfaces
.implements Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;
.implements Lcom/maishapay/ui/dialog/NumPadPossitiveButtonListener;
.implements Lcom/maishapay/view/TransfertView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maishapay/ui/activities/BaseActivity<",
        "Lcom/maishapay/presenter/TranfertConfirmationPresenter;",
        "Lcom/maishapay/view/TransfertView;",
        ">;",
        "Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;",
        "Lcom/maishapay/ui/dialog/NumPadPossitiveButtonListener;",
        "Lcom/maishapay/view/TransfertView;"
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
.field ET_Destinataire:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09001d
    .end annotation
.end field

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

.field private dialogForgotFragment:Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;

.field private dialogNumberPickerFragment:Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;

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

    .line 57
    invoke-direct {p0}, Lcom/maishapay/ui/activities/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->CDF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->userCurrency:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    sput-object p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->userCurrency:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->CDF_CURRENCY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->USD_CURRENCY:Ljava/lang/String;

    return-object v0
.end method

.method private intProgressBar()V
    .locals 2

    .line 161
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 162
    iget-object v0, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 163
    iget-object v0, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 164
    iget-object v0, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Veuillez patienter..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private toastMessage(Ljava/lang/String;I)V
    .locals 1

    .line 267
    invoke-virtual {p0, p2}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f010017

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p2, 0x1

    .line 268
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

    .line 284
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 285
    sget-object v1, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->userCurrency:Ljava/lang/String;

    invoke-static {v1}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->newInstance(Ljava/lang/String;)Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->dialogNumberPickerFragment:Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;

    .line 286
    iget-object v1, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->dialogNumberPickerFragment:Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;

    const-string v2, "DialogNumberPickerFragment"

    invoke-virtual {v1, v0, v2}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 279
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public enabledControls(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :goto_0
    return-void
.end method

.method public finishToConfirm()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->dialogForgotFragment:Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;

    invoke-virtual {v0}, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->dismiss()V

    .line 238
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/maishapay/ui/activities/SuccessPaiementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title_activity"

    const-string v2, "Transfert"

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->startActivity(Landroid/content/Intent;)V

    .line 241
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->finish()V

    return-void
.end method

.method public finishToTranfert(Lcom/maishapay/model/client/response/TransfertResponse;)V
    .locals 2

    .line 246
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 247
    invoke-virtual {p1}, Lcom/maishapay/model/client/response/TransfertResponse;->getPrenom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/TransfertResponse;->getNom()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->dialogForgotFragment:Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;

    .line 248
    iget-object p1, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->dialogForgotFragment:Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;

    const-string v1, "DialogConfirmTransfertFragment"

    invoke-virtual {p1, v0, v1}, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public numPadPositiveClicked(Ljava/lang/String;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

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

    .line 138
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object p2, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->ET_Destinataire:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b00ab

    .line 83
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->setContentView(I)V

    .line 84
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 86
    iget-object p1, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "Transfert d\'argent"

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 89
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 93
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->intProgressBar()V

    .line 98
    iget-object p1, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->SP_TypeEnvoi:Landroid/widget/Spinner;

    new-instance v0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity$1;

    invoke-direct {v0, p0}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity$1;-><init>(Lcom/maishapay/ui/activities/TransfertCompteCashActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 125
    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public positiveClicked(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->enabledControls(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->ET_Destinataire:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->userCurrency:Ljava/lang/String;

    iget-object v0, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {v0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->confirmTransfert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public providePresenter()Lcom/maishapay/presenter/TranfertConfirmationPresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 263
    new-instance v0, Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-direct {v0}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic providePresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->providePresenter()Lcom/maishapay/presenter/TranfertConfirmationPresenter;

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

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/maishapay/ui/qrcode/DecoderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public showConfimationError(I)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->dialogForgotFragment:Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;

    invoke-virtual {v0}, Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;->dismiss()V

    const/4 v0, 0x0

    const v1, 0x7f090216

    if-nez p1, :cond_0

    .line 220
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 221
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v1, "Le code Pin saisi n\'est pas correct."

    .line 222
    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 223
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 227
    :cond_0
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 228
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v1, "Echec de transfert."

    .line 229
    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 230
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    :goto_0
    return-void
.end method

.method public showNetworkError()V
    .locals 2

    .line 169
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const v1, 0x7f090216

    .line 170
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "Vous avez besion d\'une connexion internet pour effectuer cette action!"

    .line 171
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const/4 v1, -0x2

    .line 172
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "R\u00e9esseyer"

    .line 173
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    new-instance v1, Lcom/maishapay/ui/activities/TransfertCompteCashActivity$2;

    invoke-direct {v1, p0}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity$2;-><init>(Lcom/maishapay/ui/activities/TransfertCompteCashActivity;)V

    .line 174
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionClickListener(Landroid/view/View$OnClickListener;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lde/mateware/snacky/Snacky$Builder;->error()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public showTranfertError(I)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f090216

    if-nez p1, :cond_0

    .line 187
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 188
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v1, "Le numero de destinataire n\'existe pas dans Maishapay."

    .line 189
    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 190
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 194
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 195
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v1, "Desol\u00e9, votre compte ne dispose pas beaucoup de solde pour effectuer ce transfert."

    .line 196
    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 197
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 201
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 202
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v1, "Le compte de votre destinataire est indisponible pour le moment."

    .line 203
    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 204
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 208
    :cond_2
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 209
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v1, "Desol\u00e9, vous n\'\u00eates pas autoris\u00e9 \u00e0 effectuer cette operation, veuillez contacter le service Maishpay."

    .line 210
    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 211
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

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

    .line 146
    iget-object v0, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->ET_Destinataire:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0f011b

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->ET_Destinataire:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {v0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Montant"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090025

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 156
    :cond_1
    invoke-virtual {p0, v3}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->enabledControls(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v0

    check-cast v0, Lcom/maishapay/presenter/TranfertConfirmationPresenter;

    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->ET_Destinataire:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->userCurrency:Ljava/lang/String;

    iget-object v4, p0, Lcom/maishapay/ui/activities/TransfertCompteCashActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {v4}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/maishapay/presenter/TranfertConfirmationPresenter;->transfert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
