.class public Lcom/maishapay/ui/activities/RegisterNormalActivity;
.super Lnet/grandcentrix/thirtyinch/TiActivity;
.source "RegisterNormalActivity.java"

# interfaces
.implements Lcom/maishapay/view/RegisterMerchantView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/grandcentrix/thirtyinch/TiActivity<",
        "Lcom/maishapay/presenter/RegisterNormalPresenter;",
        "Lcom/maishapay/view/RegisterMerchantView;",
        ">;",
        "Lcom/maishapay/view/RegisterMerchantView;"
    }
.end annotation


# instance fields
.field adresseEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090016
    .end annotation
.end field

.field codePin1EditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09002b
    .end annotation
.end field

.field codePin2EditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09002a
    .end annotation
.end field

.field countryCodePicker:Lcom/hbb20/CountryCodePicker;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090018
    .end annotation
.end field

.field emailditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090021
    .end annotation
.end field

.field private maskText:Ljava/lang/String;

.field nomEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09002c
    .end annotation
.end field

.field phoneEditText:Lcom/santalu/widget/MaskEditText;
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

    .line 50
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/TiActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/maishapay/ui/activities/RegisterNormalActivity;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->maskText:Ljava/lang/String;

    return-object p0
.end method

.method private intProgressBar()V
    .locals 2

    .line 227
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 228
    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 229
    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 230
    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Veuillez patienter"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private toastMessage(Ljava/lang/String;I)V
    .locals 1

    .line 234
    invoke-virtual {p0, p2}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f010017

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p2, 0x1

    .line 235
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 240
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/grandcentrix/thirtyinch/TiActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public clickCriarConta()V
    .locals 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090005
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->prenomEditText:Landroid/widget/EditText;

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

    .line 90
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->prenomEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090027

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->nomEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->nomEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09002c

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    invoke-virtual {v0}, Lcom/santalu/widget/MaskEditText;->getRawText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v4, 0x7f090029

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    invoke-virtual {v2}, Lcom/santalu/widget/MaskEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    invoke-virtual {v0}, Lcom/santalu/widget/MaskEditText;->getRawText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x9

    if-ge v0, v5, :cond_3

    .line 105
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    invoke-virtual {v2}, Lcom/santalu/widget/MaskEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->emailditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->emailditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090021

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->adresseEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->adresseEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090016

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->villeEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->villeEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09002f

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->codePin1EditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 125
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->codePin1EditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09002b

    invoke-direct {p0, v0, v1}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 129
    :cond_7
    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->codePin2EditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v4, 0x7f09002a

    if-eqz v0, :cond_8

    .line 130
    invoke-virtual {p0, v2}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->codePin2EditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 134
    :cond_8
    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->codePin1EditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->codePin2EditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "Les code PIN sont differents"

    .line 135
    invoke-direct {p0, v0, v4}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->toastMessage(Ljava/lang/String;I)V

    return-void

    .line 140
    :cond_9
    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->countryCodePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->phoneEditText:Lcom/santalu/widget/MaskEditText;

    invoke-virtual {v1}, Lcom/santalu/widget/MaskEditText;->getRawText()Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->maskText:Ljava/lang/String;

    .line 145
    invoke-virtual {p0, v3}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->enabledControls(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/maishapay/presenter/RegisterNormalPresenter;

    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->nomEditText:Landroid/widget/EditText;

    .line 147
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->prenomEditText:Landroid/widget/EditText;

    .line 148
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->maskText:Ljava/lang/String;

    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->emailditText:Landroid/widget/EditText;

    .line 150
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->adresseEditText:Landroid/widget/EditText;

    .line 151
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->villeEditText:Landroid/widget/EditText;

    .line 152
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->codePin1EditText:Landroid/widget/EditText;

    .line 153
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 146
    invoke-virtual/range {v1 .. v8}, Lcom/maishapay/presenter/RegisterNormalPresenter;->inscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enabledControls(Z)V
    .locals 1

    const v0, 0x7f090005

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 170
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 173
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public finishToRegister(Lcom/maishapay/model/client/response/UserResponse;)V
    .locals 1

    .line 220
    invoke-static {p0, p1}, Lcom/maishapay/model/prefs/UserPrefencesManager;->setCurentUser(Landroid/content/Context;Lcom/maishapay/model/client/response/UserResponse;)V

    .line 221
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/maishapay/ui/activities/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, -0x1

    .line 222
    invoke-virtual {p0, v0, p1}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->setResult(ILandroid/content/Intent;)V

    .line 223
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lnet/grandcentrix/thirtyinch/TiActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b00a2

    .line 70
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->setContentView(I)V

    .line 71
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 73
    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "Cr\u00e9er un compte Maishapay"

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterNormalActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 76
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 80
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->intProgressBar()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 158
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 163
    invoke-super {p0, p1}, Lnet/grandcentrix/thirtyinch/TiActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public providePresenter()Lcom/maishapay/presenter/RegisterNormalPresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 180
    new-instance v0, Lcom/maishapay/presenter/RegisterNormalPresenter;

    invoke-direct {v0}, Lcom/maishapay/presenter/RegisterNormalPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic providePresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->providePresenter()Lcom/maishapay/presenter/RegisterNormalPresenter;

    move-result-object v0

    return-object v0
.end method

.method public showNetworkError()V
    .locals 2

    .line 185
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const v1, 0x7f090044

    .line 186
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "Vous avez besion d\'une connexion internet pour effectuer cette action!"

    .line 187
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const/4 v1, -0x2

    .line 188
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "R\u00e9esseyer"

    .line 189
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    new-instance v1, Lcom/maishapay/ui/activities/RegisterNormalActivity$1;

    invoke-direct {v1, p0}, Lcom/maishapay/ui/activities/RegisterNormalActivity$1;-><init>(Lcom/maishapay/ui/activities/RegisterNormalActivity;)V

    .line 190
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionClickListener(Landroid/view/View$OnClickListener;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lde/mateware/snacky/Snacky$Builder;->error()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public showResponseError()V
    .locals 2

    .line 210
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const v1, 0x7f090044

    .line 211
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/RegisterNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const v1, 0x7f0f05c6

    .line 212
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 213
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method
