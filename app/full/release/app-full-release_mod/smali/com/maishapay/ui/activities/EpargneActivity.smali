.class public Lcom/maishapay/ui/activities/EpargneActivity;
.super Lcom/maishapay/ui/activities/BaseActivity;
.source "EpargneActivity.java"

# interfaces
.implements Lcom/maishapay/view/EpargneView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maishapay/ui/activities/BaseActivity<",
        "Lcom/maishapay/presenter/EpargnePresenter;",
        "Lcom/maishapay/view/EpargneView;",
        ">;",
        "Lcom/maishapay/view/EpargneView;"
    }
.end annotation


# static fields
.field private static CDF:Ljava/lang/String; = "Francs congolais (CDF)"

.field private static USD:Ljava/lang/String; = "Dollars (USD)"


# instance fields
.field LL_fitDollards:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090046
    .end annotation
.end field

.field LL_fitFrancs:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090047
    .end annotation
.end field

.field TV_Dollars:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007d
    .end annotation
.end field

.field TV_Francs:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007e
    .end annotation
.end field

.field private dialogForgotFragment:Lcom/maishapay/ui/dialog/DialogConfirmTransfertFragment;

.field dollarsChart:Lcom/txusballesteros/widgets/FitChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090128
    .end annotation
.end field

.field francsChart:Lcom/txusballesteros/widgets/FitChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090129
    .end annotation
.end field

.field progressBarSolde:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090205
    .end annotation
.end field

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

    .line 52
    invoke-direct {p0}, Lcom/maishapay/ui/activities/BaseActivity;-><init>()V

    return-void
.end method

.method private intProgressBar()V
    .locals 2

    .line 121
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maishapay/ui/activities/EpargneActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 122
    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargneActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 123
    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargneActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 124
    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargneActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Veuillez patienter..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 185
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public cardEpargnePersonelleClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900f3
        }
    .end annotation

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/maishapay/ui/activities/EpargnePersonnelleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/EpargneActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public enabledControls(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :goto_0
    return-void
.end method

.method public finishToLoadSolde(Lcom/maishapay/model/client/response/SoldeEpargneResponse;)V
    .locals 8

    .line 147
    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargneActivity;->LL_fitDollards:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargneActivity;->LL_fitFrancs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/maishapay/ui/activities/EpargneActivity;->progressBarSolde:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    invoke-virtual {p1}, Lcom/maishapay/model/client/response/SoldeEpargneResponse;->getFrancCongolais()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 153
    invoke-virtual {p1}, Lcom/maishapay/model/client/response/SoldeEpargneResponse;->getDollard()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/SoldeEpargneResponse;->getDollard()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 155
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/EpargneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 156
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v5, Lcom/txusballesteros/widgets/FitChartValue;

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    :goto_0
    const v6, 0x7f060001

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v5, v0, v7}, Lcom/txusballesteros/widgets/FitChartValue;-><init>(FI)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    new-instance v5, Lcom/txusballesteros/widgets/FitChartValue;

    mul-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v5, v2, v3}, Lcom/txusballesteros/widgets/FitChartValue;-><init>(FI)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v2, p0, Lcom/maishapay/ui/activities/EpargneActivity;->TV_Dollars:Landroid/widget/TextView;

    const-string v3, "%s $"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/SoldeEpargneResponse;->getDollard()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v2, p0, Lcom/maishapay/ui/activities/EpargneActivity;->TV_Francs:Landroid/widget/TextView;

    const-string v3, "%s Fc"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/SoldeEpargneResponse;->getFrancCongolais()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity;->francsChart:Lcom/txusballesteros/widgets/FitChart;

    invoke-virtual {p1, v4}, Lcom/txusballesteros/widgets/FitChart;->setValues(Ljava/util/Collection;)V

    .line 165
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity;->dollarsChart:Lcom/txusballesteros/widgets/FitChart;

    invoke-virtual {p1, v0}, Lcom/txusballesteros/widgets/FitChart;->setValues(Ljava/util/Collection;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 76
    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0049

    .line 77
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/EpargneActivity;->setContentView(I)V

    .line 78
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 80
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "Solde epargne"

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/EpargneActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 83
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity;->LL_fitDollards:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity;->LL_fitFrancs:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity;->progressBarSolde:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 87
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/EpargneActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/maishapay/ui/activities/EpargneActivity;->intProgressBar()V

    .line 96
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity;->francsChart:Lcom/txusballesteros/widgets/FitChart;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/txusballesteros/widgets/FitChart;->setMinValue(F)V

    .line 97
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity;->francsChart:Lcom/txusballesteros/widgets/FitChart;

    const v1, 0x49742400    # 1000000.0f

    invoke-virtual {p1, v1}, Lcom/txusballesteros/widgets/FitChart;->setMaxValue(F)V

    .line 99
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity;->dollarsChart:Lcom/txusballesteros/widgets/FitChart;

    invoke-virtual {p1, v0}, Lcom/txusballesteros/widgets/FitChart;->setMinValue(F)V

    .line 100
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity;->dollarsChart:Lcom/txusballesteros/widgets/FitChart;

    invoke-virtual {p1, v1}, Lcom/txusballesteros/widgets/FitChart;->setMaxValue(F)V

    .line 102
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/EpargneActivity;->getPresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;

    move-result-object p1

    check-cast p1, Lcom/maishapay/presenter/EpargnePresenter;

    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/maishapay/presenter/EpargnePresenter;->soldeEpargne(Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 117
    invoke-super {p0, p1}, Lcom/maishapay/ui/activities/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/EpargneActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public providePresenter()Lcom/maishapay/presenter/EpargnePresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 180
    new-instance v0, Lcom/maishapay/presenter/EpargnePresenter;

    invoke-direct {v0}, Lcom/maishapay/presenter/EpargnePresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic providePresenter()Lnet/grandcentrix/thirtyinch/TiPresenter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/EpargneActivity;->providePresenter()Lcom/maishapay/presenter/EpargnePresenter;

    move-result-object v0

    return-object v0
.end method

.method public showNetworkError()V
    .locals 2

    .line 129
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const v1, 0x7f090216

    .line 130
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/EpargneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "Vous avez besion d\'une connexion internet pour effectuer cette action!"

    .line 131
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const/4 v1, -0x2

    .line 132
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    const-string v1, "R\u00e9esseyer"

    .line 133
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    new-instance v1, Lcom/maishapay/ui/activities/EpargneActivity$1;

    invoke-direct {v1, p0}, Lcom/maishapay/ui/activities/EpargneActivity$1;-><init>(Lcom/maishapay/ui/activities/EpargneActivity;)V

    .line 134
    invoke-virtual {v0, v1}, Lde/mateware/snacky/Snacky$Builder;->setActionClickListener(Landroid/view/View$OnClickListener;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lde/mateware/snacky/Snacky$Builder;->error()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method
