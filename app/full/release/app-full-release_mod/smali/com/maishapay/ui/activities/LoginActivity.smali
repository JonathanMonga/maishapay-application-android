.class public Lcom/maishapay/ui/activities/LoginActivity;
.super Lcom/maishapay/ui/activities/BaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Lcom/maishapay/view/LoginView;
.implements Lcom/maishapay/ui/dialog/PossitiveButtonListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maishapay/ui/activities/BaseActivity<",
        "Lcom/maishapay/presenter/LoginPresenter;",
        "Lcom/maishapay/view/LoginView;",
        ">;",
        "Lcom/maishapay/view/LoginView;",
        "Lcom/maishapay/ui/dialog/PossitiveButtonListener;"
    }
.end annotation


# static fields
.field private static maskText:Ljava/lang/String;


# instance fields
.field codePinEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09001b
    .end annotation
.end field

.field countryCodePicker:Lcom/hbb20/CountryCodePicker;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090018
    .end annotation
.end field

.field private dialogForgotFragment:Lcom/maishapay/ui/dialog/DialogForgotFragment;

.field phoneEditText:Lcom/santalu/widget/MaskEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09002e
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;

.field textInputCodePin:Landroid/support/design/widget/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025d
    .end annotation
.end field

.field textInputTelephone:Landroid/support/design/widget/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025e
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/maishapay/ui/activities/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/maishapay/ui/activities/LoginActivity;->maskText:Ljava/lang/String;

    return-object v0
.end method

.method private intProgressBar()V
    .locals 2

    .line 287
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 288
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 289
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 290
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Veuillez patienter"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 301
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public clickCriarConta()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090005
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Type des comptes"

    .line 112
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f030006

    .line 113
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/maishapay/ui/activities/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/maishapay/ui/activities/LoginActivity$1;-><init>(Lcom/maishapay/ui/activities/LoginActivity;)V

    .line 114
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method public clickForgot()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090007
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    invoke-virtual {v0}, Lcom/santalu/widget/MaskEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->textInputTelephone:Landroid/support/design/widget/TextInputLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->textInputTelephone:Landroid/support/design/widget/TextInputLayout;

    const v3, 0x7f0f011b

    invoke-virtual {p0, v3}, Lcom/maishapay/ui/activities/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const v4, 0x7f0f068a

    invoke-virtual {p0, v4}, Lcom/maishapay/ui/activities/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 142
    sget-object v2, Lcom/maishapay/ui/activities/LoginActivity;->maskText:Ljava/lang/String;

    invoke-static {v2}, Lcom/maishapay/ui/dialog/DialogForgotFragment;->newInstance(Ljava/lang/String;)Lcom/maishapay/ui/dialog/DialogForgotFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/maishapay/ui/activities/LoginActivity;->dialogForgotFragment:Lcom/maishapay/ui/dialog/DialogForgotFragment;

    .line 143
    iget-object v2, p0, Lcom/maishapay/ui/activities/LoginActivity;->dialogForgotFragment:Lcom/maishapay/ui/dialog/DialogForgotFragment;

    const-string v3, "DialogForgotFragment"

    invoke-virtual {v2, v0, v3}, Lcom/maishapay/ui/dialog/DialogForgotFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->textInputTelephone:Landroid/support/design/widget/TextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->textInputTelephone:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    return-void
.end method

.method public clickLogin()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090008
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    invoke-virtual {v0}, Lcom/santalu/widget/MaskEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f0f011b

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->textInputTelephone:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->textInputTelephone:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0f068a

    invoke-virtual {p0, v4}, Lcom/maishapay/ui/activities/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->codePinEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->textInputCodePin:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    const v0, 0x7f09001b

    .line 92
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f010017

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "Code pin"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->countryCodePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/maishapay/ui/activities/LoginActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    invoke-virtual {v1}, Lcom/santalu/widget/MaskEditText;->getRawText()Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/maishapay/ui/activities/LoginActivity;->maskText:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/activities/LoginActivity;->enabledControls(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/LoginActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v0

    check-cast v0, Lcom/maishapay/presenter/LoginPresenter;

    sget-object v1, Lcom/maishapay/ui/activities/LoginActivity;->maskText:Ljava/lang/String;

    iget-object v3, p0, Lcom/maishapay/ui/activities/LoginActivity;->codePinEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/maishapay/presenter/LoginPresenter;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->textInputTelephone:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->textInputTelephone:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    return-void
.end method

.method public enabledControls(Z)V
    .locals 4

    const v0, 0x7f090007

    const v1, 0x7f090005

    const v2, 0x7f090008

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/maishapay/ui/activities/LoginActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 190
    iget-object p1, p0, Lcom/maishapay/ui/activities/LoginActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/santalu/widget/MaskEditText;->setEnabled(Z)V

    .line 191
    iget-object p1, p0, Lcom/maishapay/ui/activities/LoginActivity;->codePinEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 192
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 193
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 194
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/maishapay/ui/activities/LoginActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 197
    iget-object p1, p0, Lcom/maishapay/ui/activities/LoginActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/santalu/widget/MaskEditText;->setEnabled(Z)V

    .line 198
    iget-object p1, p0, Lcom/maishapay/ui/activities/LoginActivity;->codePinEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 199
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 200
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public finishToForgot()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->dialogForgotFragment:Lcom/maishapay/ui/dialog/DialogForgotFragment;

    invoke-virtual {v0}, Lcom/maishapay/ui/dialog/DialogForgotFragment;->dismiss()V

    .line 278
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const v1, 0x7f090216

    .line 279
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "Vous avez recu un mail avec votre code PIN."

    .line 280
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 281
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lde/mateware/snacky/Snacky$Builder;->success()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public finishToLogin(Lcom/maishapay/model/client/response/UserResponse;)V
    .locals 1

    const/4 v0, 0x1

    .line 269
    invoke-static {p0, v0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->setCurentUserLoginSuccess(Landroid/content/Context;Z)V

    .line 270
    invoke-static {p0, p1}, Lcom/maishapay/model/prefs/UserPrefencesManager;->setCurentUser(Landroid/content/Context;Lcom/maishapay/model/client/response/UserResponse;)V

    .line 271
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/maishapay/ui/activities/DrawerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 272
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/LoginActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/maishapay/ui/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const p3, 0x7f090216

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    if-ne p2, v2, :cond_1

    .line 155
    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 158
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->countryCodePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0, p2}, Lcom/hbb20/CountryCodePicker;->setCountryForPhoneCode(I)V

    .line 159
    iget-object p2, p0, Lcom/maishapay/ui/activities/LoginActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    invoke-virtual {p2, p1}, Lcom/santalu/widget/MaskEditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 162
    invoke-virtual {p0, p3}, Lcom/maishapay/ui/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string p2, "Votre compte a \u00e9t\u00e9 cr\u00e9er avec succ\u00e9s."

    .line 163
    invoke-virtual {p1, p2}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 164
    invoke-virtual {p1, v3}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->success()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_1

    .line 170
    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 173
    iget-object v0, p0, Lcom/maishapay/ui/activities/LoginActivity;->countryCodePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0, p2}, Lcom/hbb20/CountryCodePicker;->setCountryForPhoneCode(I)V

    .line 174
    iget-object p2, p0, Lcom/maishapay/ui/activities/LoginActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    invoke-virtual {p2, p1}, Lcom/santalu/widget/MaskEditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 177
    invoke-virtual {p0, p3}, Lcom/maishapay/ui/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string p2, "Votre compte a \u00e9t\u00e9 cr\u00e9er avec succ\u00e9s."

    .line 178
    invoke-virtual {p1, p2}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 179
    invoke-virtual {p1, v3}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->success()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b005b

    .line 66
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/LoginActivity;->setContentView(I)V

    .line 67
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 69
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurentUserLoginSuccess(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/maishapay/ui/activities/DrawerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/LoginActivity;->finish()V

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUserDisconnect(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/maishapay/ui/activities/LoginActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getUserPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/santalu/widget/MaskEditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p1, p0, Lcom/maishapay/ui/activities/LoginActivity;->countryCodePicker:Lcom/hbb20/CountryCodePicker;

    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getUserCountryCodePhone(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hbb20/CountryCodePicker;->setCountryForPhoneCode(I)V

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/maishapay/ui/activities/LoginActivity;->intProgressBar()V

    return-void
.end method

.method public positiveClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/LoginActivity;->enabledControls(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/LoginActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v0

    check-cast v0, Lcom/maishapay/presenter/LoginPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/maishapay/presenter/LoginPresenter;->forgot(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public providePresenter()Lcom/maishapay/presenter/LoginPresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 208
    new-instance v0, Lcom/maishapay/presenter/LoginPresenter;

    invoke-direct {v0}, Lcom/maishapay/presenter/LoginPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic providePresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/LoginActivity;->providePresenter()Lcom/maishapay/presenter/LoginPresenter;

    move-result-object v0

    return-object v0
.end method

.method public showForgotError(I)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f090216

    if-nez p1, :cond_0

    .line 214
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 215
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v1, "Les donn\u00e9es que vous avez saisies ne sont pas correctes."

    .line 216
    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 217
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 222
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v1, "Echec d\'envoie E-mail, veuillez reessayer."

    .line 223
    invoke-virtual {p1, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 224
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    :goto_0
    return-void
.end method

.method public showLoginError(I)V
    .locals 1

    .line 259
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const v0, 0x7f090216

    .line 260
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string v0, "Les informations entr\u00e9es ne sont pas correctes, verifiez votre code PIN."

    .line 261
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p1, v0}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public showNetworkForgotError()V
    .locals 2

    .line 249
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const v1, 0x7f090216

    .line 250
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "Il y a un probleme lors de l\'envoi de votre code PIN."

    .line 251
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 252
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public showNetworkLoginError()V
    .locals 2

    .line 231
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const v1, 0x7f090216

    .line 232
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "Vous avez besion d\'une connexion internet pour effectuer cette action!"

    .line 233
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const/4 v1, -0x2

    .line 234
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "R\u00e9esseyer"

    .line 235
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    new-instance v1, Lcom/maishapay/ui/activities/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/maishapay/ui/activities/LoginActivity$2;-><init>(Lcom/maishapay/ui/activities/LoginActivity;)V

    .line 236
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionClickListener(Landroid/view/View$OnClickListener;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lde/mateware/snacky/Snacky$Builder;->error()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method
