.class public Lcom/maishapay/ui/activities/UpdateProfilActivity;
.super Lnet/grandcentrix/thirtyinch/TiActivity;
.source "UpdateProfilActivity.java"

# interfaces
.implements Lcom/maishapay/ui/dialog/PossitiveButtonListener;
.implements Lcom/maishapay/view/UpdateProfileView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/grandcentrix/thirtyinch/TiActivity<",
        "Lcom/maishapay/presenter/UpdateProfilePresenter;",
        "Lcom/maishapay/view/UpdateProfileView;",
        ">;",
        "Lcom/maishapay/ui/dialog/PossitiveButtonListener;",
        "Lcom/maishapay/view/UpdateProfileView;"
    }
.end annotation


# static fields
.field private static PIN:Ljava/lang/String;


# instance fields
.field adresseEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090016
    .end annotation
.end field

.field private dialogUpdateFragment:Lcom/maishapay/ui/dialog/DialogUpdateFragment;

.field emailEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090021
    .end annotation
.end field

.field nomEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09002c
    .end annotation
.end field

.field phoneEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090029
    .end annotation
.end field

.field prenomEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090027
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090264
    .end annotation
.end field

.field villeEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09002f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/TiActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->PIN:Ljava/lang/String;

    return-object v0
.end method

.method private intProgressBar()V
    .locals 2

    .line 204
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 205
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 206
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 207
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Veuillez patienter"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private toastMessage(Ljava/lang/String;I)V
    .locals 1

    .line 211
    invoke-virtual {p0, p2}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f010017

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p2, 0x1

    .line 212
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 217
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/grandcentrix/thirtyinch/TiActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public clickCriarConta()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090005
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->prenomEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f090027

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f0f011b

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, v4}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->prenomEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->nomEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0, v4}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->nomEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09002c

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->phoneEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {p0, v4}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->nomEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->emailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    invoke-virtual {p0, v4}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->emailEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090021

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->adresseEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {p0, v4}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->adresseEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090016

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->villeEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    invoke-virtual {p0, v4}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->villeEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09002f

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 124
    :cond_5
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/maishapay/ui/dialog/DialogUpdateFragment;->newInstance()Lcom/maishapay/ui/dialog/DialogUpdateFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->dialogUpdateFragment:Lcom/maishapay/ui/dialog/DialogUpdateFragment;

    .line 126
    iget-object v1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->dialogUpdateFragment:Lcom/maishapay/ui/dialog/DialogUpdateFragment;

    const-string v2, "DialogUpdateFragment"

    invoke-virtual {v1, v0, v2}, Lcom/maishapay/ui/dialog/DialogUpdateFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public enabledControls(Z)V
    .locals 1

    const v0, 0x7f090005

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 143
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 146
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public finishToUpdate()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->dialogUpdateFragment:Lcom/maishapay/ui/dialog/DialogUpdateFragment;

    invoke-virtual {v0}, Lcom/maishapay/ui/dialog/DialogUpdateFragment;->dismiss()V

    .line 195
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const v1, 0x7f090044

    .line 196
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "Vos donn\u00e9es ont \u00e9t\u00e9 modifi\u00e9s avec succ\u00e9s"

    .line 197
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 198
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lde/mateware/snacky/Snacky$Builder;->success()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lnet/grandcentrix/thirtyinch/TiActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b00ac

    .line 67
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->setContentView(I)V

    .line 68
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 70
    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "Modifier votre compte"

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 73
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->phoneEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->emailEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->nomEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getNom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->prenomEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getPrenom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->villeEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getVille()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->adresseEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getAdresse()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-direct {p0}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->intProgressBar()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 131
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 136
    invoke-super {p0, p1}, Lnet/grandcentrix/thirtyinch/TiActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public positiveClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 222
    sput-object p2, Lcom/maishapay/ui/activities/UpdateProfilActivity;->PIN:Ljava/lang/String;

    const/4 p1, 0x0

    .line 223
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->enabledControls(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/maishapay/presenter/UpdateProfilePresenter;

    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->nomEditText:Landroid/widget/EditText;

    .line 226
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->prenomEditText:Landroid/widget/EditText;

    .line 227
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->phoneEditText:Landroid/widget/EditText;

    .line 228
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->emailEditText:Landroid/widget/EditText;

    .line 229
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->adresseEditText:Landroid/widget/EditText;

    .line 230
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/maishapay/ui/activities/UpdateProfilActivity;->villeEditText:Landroid/widget/EditText;

    .line 231
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/maishapay/ui/activities/UpdateProfilActivity;->PIN:Ljava/lang/String;

    move-object v1, p0

    .line 224
    invoke-virtual/range {v0 .. v8}, Lcom/maishapay/presenter/UpdateProfilePresenter;->updateProfile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public providePresenter()Lcom/maishapay/presenter/UpdateProfilePresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 153
    new-instance v0, Lcom/maishapay/presenter/UpdateProfilePresenter;

    invoke-direct {v0}, Lcom/maishapay/presenter/UpdateProfilePresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic providePresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->providePresenter()Lcom/maishapay/presenter/UpdateProfilePresenter;

    move-result-object v0

    return-object v0
.end method

.method public showNetworkError()V
    .locals 2

    .line 158
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const v1, 0x7f090044

    .line 159
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "Vous avez besion d\'une connexion internet pour effectuer cette action!"

    .line 160
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const/4 v1, -0x2

    .line 161
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "R\u00e9esseyer"

    .line 162
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    new-instance v1, Lcom/maishapay/ui/activities/UpdateProfilActivity$1;

    invoke-direct {v1, p0}, Lcom/maishapay/ui/activities/UpdateProfilActivity$1;-><init>(Lcom/maishapay/ui/activities/UpdateProfilActivity;)V

    .line 163
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionClickListener(Landroid/view/View$OnClickListener;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lde/mateware/snacky/Snacky$Builder;->error()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public showResponseError()V
    .locals 2

    .line 184
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const v1, 0x7f090044

    .line 185
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/UpdateProfilActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "Le code Pin entr\u00e9 n\'est pas correct."

    .line 186
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 187
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method
