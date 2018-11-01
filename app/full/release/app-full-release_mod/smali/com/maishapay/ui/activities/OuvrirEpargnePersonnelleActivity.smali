.class public Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;
.super Lcom/maishapay/ui/activities/BaseActivity;
.source "OuvrirEpargnePersonnelleActivity.java"

# interfaces
.implements Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;
.implements Lcom/maishapay/view/OuvrirEpargnePersonelleView;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maishapay/ui/activities/BaseActivity<",
        "Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;",
        "Lcom/maishapay/view/OuvrirEpargnePersonelleView;",
        ">;",
        "Lcom/maishapay/ui/dialog/PossitiveButtonConfirmListener;",
        "Lcom/maishapay/view/OuvrirEpargnePersonelleView;",
        "Landroid/app/DatePickerDialog$OnDateSetListener;"
    }
.end annotation


# static fields
.field private static CDF:Ljava/lang/String; = "Francs congolais (CDF)"

.field private static CDF_CURRENCY:Ljava/lang/String; = "FC"

.field private static USD:Ljava/lang/String; = "Dollars (USD)"

.field private static USD_CURRENCY:Ljava/lang/String; = "USD"

.field private static USD_FC:Ljava/lang/String; = "USD et CDF"

.field private static USD_FC_CURRENCY:Ljava/lang/String; = "USD_FC"


# instance fields
.field BTN_Valider:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09000d
    .end annotation
.end field

.field ET_CodeSecret:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09001a
    .end annotation
.end field

.field ET_Date:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09001c
    .end annotation
.end field

.field SP_TypeEnvoi:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090074
    .end annotation
.end field

.field private datePickerDialog:Landroid/app/DatePickerDialog;

.field private dayOfMonth:I

.field private dialogConfirmCreationEpargneFragment:Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;

.field private formatDate:Ljava/lang/String;

.field private longLocalDatePhone:J

.field private longUserLocalDate:J

.field private monthOfYear:I

.field private progressDialog:Landroid/app/ProgressDialog;

.field switchCompat:Landroid/support/v7/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090077
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090264
    .end annotation
.end field

.field private userCurrency:Ljava/lang/String;

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/maishapay/ui/activities/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->CDF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->userCurrency:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->userCurrency:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->CDF_CURRENCY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->USD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->USD_CURRENCY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->USD_FC_CURRENCY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->formatDate:Ljava/lang/String;

    return-object p0
.end method

.method private intProgressBar()V
    .locals 2

    .line 194
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 195
    iget-object v0, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 196
    iget-object v0, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 197
    iget-object v0, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Veuillez patienter..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private toastMessage(Ljava/lang/String;I)V
    .locals 1

    .line 267
    invoke-virtual {p0, p2}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->findViewById(I)Landroid/view/View;

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
.method public ET_DateClicked()V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09001c
        }
    .end annotation

    .line 159
    new-instance v6, Landroid/app/DatePickerDialog;

    iget v3, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->year:I

    iget v0, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->monthOfYear:I

    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->dayOfMonth:I

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v6, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->datePickerDialog:Landroid/app/DatePickerDialog;

    .line 160
    iget-object v0, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->datePickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 280
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public enabledControls(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :goto_0
    return-void
.end method

.method public finishToConfirm(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public finishToOuvrir(Ljava/lang/Integer;)V
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 242
    invoke-static {}, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;->newInstance()Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->dialogConfirmCreationEpargneFragment:Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;

    .line 243
    iget-object v0, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->dialogConfirmCreationEpargneFragment:Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;

    const-string v1, "DialogConfirmTransfertFragment"

    invoke-virtual {v0, p1, v1}, Lcom/maishapay/ui/dialog/DialogConfirmCreationEpargneFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 92
    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b002f

    .line 93
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->setContentView(I)V

    .line 94
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 96
    iget-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "Epargne personnelle"

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 99
    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCreationCompteEpargne(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/maishapay/ui/activities/EpargneActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->finish()V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 108
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->intProgressBar()V

    .line 113
    iget-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->SP_TypeEnvoi:Landroid/widget/Spinner;

    new-instance v1, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$1;

    invoke-direct {v1, p0}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$1;-><init>(Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 132
    iget-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->switchCompat:Landroid/support/v7/widget/SwitchCompat;

    new-instance v1, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$2;

    invoke-direct {v1, p0}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$2;-><init>(Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    invoke-static {}, Lorg/joda/time/LocalDate;->now()Lorg/joda/time/LocalDate;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lorg/joda/time/LocalDate;->getYear()I

    move-result v1

    iput v1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->year:I

    .line 142
    invoke-virtual {p1}, Lorg/joda/time/LocalDate;->getMonthOfYear()I

    move-result v1

    iput v1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->monthOfYear:I

    .line 143
    invoke-virtual {p1}, Lorg/joda/time/LocalDate;->getDayOfMonth()I

    move-result v1

    iput v1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->dayOfMonth:I

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 146
    iget v2, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->year:I

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x2

    .line 147
    iget v2, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->monthOfYear:I

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 148
    iget v2, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->dayOfMonth:I

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 150
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->longLocalDatePhone:J

    .line 151
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->longUserLocalDate:J

    const-string v0, "dd/MM/yyyy"

    .line 153
    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/LocalDate;->toString(Lorg/joda/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->formatDate:Ljava/lang/String;

    .line 154
    iget-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->ET_Date:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->formatDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    .line 285
    iput p2, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->year:I

    .line 286
    iput p3, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->monthOfYear:I

    .line 287
    iput p4, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->dayOfMonth:I

    .line 289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    .line 290
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x2

    .line 291
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x5

    .line 292
    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 294
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->longUserLocalDate:J

    .line 296
    invoke-static {p1}, Lorg/joda/time/LocalDate;->fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/LocalDate;

    move-result-object p1

    const-string p2, "dd/MM/yyyy"

    .line 297
    invoke-static {p2}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/LocalDate;->toString(Lorg/joda/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->formatDate:Ljava/lang/String;

    .line 298
    iget-object p1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->ET_Date:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->formatDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 170
    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public positiveClicked(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x1

    .line 273
    invoke-static {p0, p1}, Lcom/maishapay/model/prefs/UserPrefencesManager;->setCreationCompteEpargne(Landroid/content/Context;Z)V

    .line 274
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/maishapay/ui/activities/EpargneActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->startActivity(Landroid/content/Intent;)V

    .line 275
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->finish()V

    return-void
.end method

.method public providePresenter()Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 263
    new-instance v0, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;

    invoke-direct {v0}, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic providePresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->providePresenter()Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;

    move-result-object v0

    return-object v0
.end method

.method public showConfirmEpargnePersonelleError(I)V
    .locals 1

    .line 231
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const v0, 0x7f090216

    .line 232
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v0, "Impossible de se connecter au serveur."

    .line 233
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public showNetworkError()V
    .locals 2

    .line 202
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const v1, 0x7f090216

    .line 203
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "Vous avez besion d\'une connexion internet pour effectuer cette action!"

    .line 204
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const/4 v1, -0x2

    .line 205
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "R\u00e9esseyer"

    .line 206
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    new-instance v1, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$3;

    invoke-direct {v1, p0}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity$3;-><init>(Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;)V

    .line 207
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionClickListener(Landroid/view/View$OnClickListener;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lde/mateware/snacky/Snacky$Builder;->error()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public showOuvrirEpargnePersonelleError(I)V
    .locals 1

    .line 221
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const v0, 0x7f090216

    .line 222
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v0, "Echec de cr\u00e9ation veuillez recommencer plutard."

    .line 223
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public transfertClicked()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09000d
        }
    .end annotation

    .line 175
    iget-wide v0, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->longLocalDatePhone:J

    iget-wide v2, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->longUserLocalDate:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "La date doit \u00eatre posterieur"

    const v1, 0x7f09001a

    .line 176
    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->SP_TypeEnvoi:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 184
    aget-object v0, v0, v1

    sget-object v1, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->CDF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    sget-object v0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->CDF_CURRENCY:Ljava/lang/String;

    goto :goto_0

    .line 187
    :cond_1
    sget-object v0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->USD_CURRENCY:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    .line 189
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->enabledControls(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v1

    check-cast v1, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;

    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->formatDate:Ljava/lang/String;

    iget-object v4, p0, Lcom/maishapay/ui/activities/OuvrirEpargnePersonnelleActivity;->ET_CodeSecret:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/maishapay/presenter/OuvrirEpargnePersonellePresenter;->ouvrirEpargne(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
