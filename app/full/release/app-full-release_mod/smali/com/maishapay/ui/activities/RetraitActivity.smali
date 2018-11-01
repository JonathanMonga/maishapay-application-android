.class public Lcom/maishapay/ui/activities/RetraitActivity;
.super Lcom/maishapay/ui/activities/BaseActivity;
.source "RetraitActivity.java"

# interfaces
.implements Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;
.implements Lcom/maishapay/ui/dialog/NumPadPossitiveButtonListener;
.implements Lcom/maishapay/view/RetraitView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maishapay/ui/activities/BaseActivity<",
        "Lcom/maishapay/presenter/RetraitConfirmationPresenter;",
        "Lcom/maishapay/view/RetraitView;",
        ">;",
        "Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;",
        "Lcom/maishapay/ui/dialog/NumPadPossitiveButtonListener;",
        "Lcom/maishapay/view/RetraitView;"
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

.field private confirmRetaritFragment:Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;

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
    sget-object v0, Lcom/maishapay/ui/activities/RetraitActivity;->CDF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/maishapay/ui/activities/RetraitActivity;->userCurrency:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    sput-object p0, Lcom/maishapay/ui/activities/RetraitActivity;->userCurrency:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/maishapay/ui/activities/RetraitActivity;->CDF_CURRENCY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/maishapay/ui/activities/RetraitActivity;->USD_CURRENCY:Ljava/lang/String;

    return-object v0
.end method

.method private intProgressBar()V
    .locals 2

    .line 156
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 157
    iget-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 158
    iget-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 159
    iget-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Veuillez patienter..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private toastMessage(Ljava/lang/String;I)V
    .locals 1

    .line 241
    invoke-virtual {p0, p2}, Lcom/maishapay/ui/activities/RetraitActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f010017

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p2, 0x1

    .line 242
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

    .line 267
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/RetraitActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 268
    sget-object v1, Lcom/maishapay/ui/activities/RetraitActivity;->userCurrency:Ljava/lang/String;

    invoke-static {v1}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->newInstance(Ljava/lang/String;)Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;

    move-result-object v1

    const-string v2, "DialogNumberPickerFragment"

    .line 269
    invoke-virtual {v1, v0, v2}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 262
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public enabledControls(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/maishapay/ui/activities/RetraitActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/maishapay/ui/activities/RetraitActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :goto_0
    return-void
.end method

.method public finishToConfirm()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity;->confirmRetaritFragment:Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;

    invoke-virtual {v0}, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->dismiss()V

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/maishapay/ui/activities/SuccessPaiementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title_activity"

    const-string v2, "Retrait"

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/RetraitActivity;->startActivity(Landroid/content/Intent;)V

    .line 215
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/RetraitActivity;->finish()V

    return-void
.end method

.method public finishToRetrait(Lcom/maishapay/model/client/response/RetraitResponse;)V
    .locals 2

    .line 220
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/RetraitActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Lcom/maishapay/model/client/response/RetraitResponse;->getRetour()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->newInstance(Ljava/lang/String;)Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/maishapay/ui/activities/RetraitActivity;->confirmRetaritFragment:Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;

    .line 222
    iget-object p1, p0, Lcom/maishapay/ui/activities/RetraitActivity;->confirmRetaritFragment:Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;

    const-string v1, "DialogConfirmRetraitFragment"

    invoke-virtual {p1, v0, v1}, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public numPadPositiveClicked(Ljava/lang/String;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

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
    iget-object p2, p0, Lcom/maishapay/ui/activities/RetraitActivity;->ET_Destinataire:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b00a3

    .line 78
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/RetraitActivity;->setContentView(I)V

    .line 79
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 81
    iget-object p1, p0, Lcom/maishapay/ui/activities/RetraitActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "Retait d\'argent"

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Lcom/maishapay/ui/activities/RetraitActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/RetraitActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 84
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/RetraitActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 88
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/maishapay/ui/activities/RetraitActivity;->intProgressBar()V

    .line 93
    iget-object p1, p0, Lcom/maishapay/ui/activities/RetraitActivity;->SP_TypeEnvoi:Landroid/widget/Spinner;

    new-instance v0, Lcom/maishapay/ui/activities/RetraitActivity$1;

    invoke-direct {v0, p0}, Lcom/maishapay/ui/activities/RetraitActivity$1;-><init>(Lcom/maishapay/ui/activities/RetraitActivity;)V

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
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/RetraitActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public positiveClicked(Ljava/lang/String;)V
    .locals 7

    .line 247
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/RetraitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/maishapay/ui/activities/RetraitActivity;->SP_TypeEnvoi:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 251
    aget-object v0, v0, v1

    sget-object v1, Lcom/maishapay/ui/activities/RetraitActivity;->CDF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lcom/maishapay/ui/activities/RetraitActivity;->CDF_CURRENCY:Ljava/lang/String;

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 254
    :cond_0
    sget-object v0, Lcom/maishapay/ui/activities/RetraitActivity;->USD_CURRENCY:Ljava/lang/String;

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    .line 256
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/RetraitActivity;->enabledControls(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/RetraitActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity;->ET_Destinataire:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {v0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->confirmRetrait(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public providePresenter()Lcom/maishapay/presenter/RetraitConfirmationPresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 237
    new-instance v0, Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-direct {v0}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic providePresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/RetraitActivity;->providePresenter()Lcom/maishapay/presenter/RetraitConfirmationPresenter;

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
    invoke-virtual {p0, v0, v1}, Lcom/maishapay/ui/activities/RetraitActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public showConfimationError(I)V
    .locals 1

    .line 201
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity;->confirmRetaritFragment:Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;

    .line 202
    invoke-virtual {v0}, Lcom/maishapay/ui/dialog/DialogConfirmRetraitFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v0, "Le numero de l\'Agent n\'est pas correct."

    .line 203
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public showNetworkError()V
    .locals 2

    .line 164
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const v1, 0x7f090216

    .line 165
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/RetraitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "Vous avez besion d\'une connexion internet pour effectuer cette action!"

    .line 166
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const/4 v1, -0x2

    .line 167
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "R\u00e9esseyer"

    .line 168
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    new-instance v1, Lcom/maishapay/ui/activities/RetraitActivity$2;

    invoke-direct {v1, p0}, Lcom/maishapay/ui/activities/RetraitActivity$2;-><init>(Lcom/maishapay/ui/activities/RetraitActivity;)V

    .line 169
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionClickListener(Landroid/view/View$OnClickListener;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lde/mateware/snacky/Snacky$Builder;->error()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public showRetraitError(I)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f090216

    if-nez p1, :cond_0

    .line 183
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 184
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/RetraitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v1, "Le numero de l\'Agent n\'est pas correct."

    .line 185
    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 186
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 190
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 191
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/RetraitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v1, "Desol\u00e9, votre solde est insuffisant."

    .line 192
    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 193
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public transfertClicked()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09000a
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity;->ET_Destinataire:Landroid/widget/EditText;

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

    .line 142
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/activities/RetraitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/maishapay/ui/activities/RetraitActivity;->ET_Destinataire:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/RetraitActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/maishapay/ui/activities/RetraitActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {v0}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    .line 147
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/activities/RetraitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Montant"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090025

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/RetraitActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 151
    :cond_1
    invoke-virtual {p0, v3}, Lcom/maishapay/ui/activities/RetraitActivity;->enabledControls(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/RetraitActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v0

    check-cast v0, Lcom/maishapay/presenter/RetraitConfirmationPresenter;

    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/maishapay/ui/activities/RetraitActivity;->ET_Destinataire:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/maishapay/ui/activities/RetraitActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {v3}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/maishapay/ui/activities/RetraitActivity;->userCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/maishapay/presenter/RetraitConfirmationPresenter;->retrait(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
