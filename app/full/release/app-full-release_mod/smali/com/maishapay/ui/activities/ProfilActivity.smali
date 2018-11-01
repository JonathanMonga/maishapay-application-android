.class public Lcom/maishapay/ui/activities/ProfilActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ProfilActivity.java"


# instance fields
.field ET_Adresse:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090015
    .end annotation
.end field

.field ET_Email:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090021
    .end annotation
.end field

.field ET_Noms:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090028
    .end annotation
.end field

.field ET_Phone:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090029
    .end annotation
.end field

.field ET_Ville:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09002f
    .end annotation
.end field

.field IV_QRCode:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09003e
    .end annotation
.end field

.field collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090101
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090263
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private setupWindowAnimations()V
    .locals 2

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 86
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    .line 87
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/ProfilActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setReturnTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b009f

    .line 48
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/ProfilActivity;->setContentView(I)V

    .line 50
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 52
    invoke-direct {p0}, Lcom/maishapay/ui/activities/ProfilActivity;->setupWindowAnimations()V

    .line 54
    iget-object p1, p0, Lcom/maishapay/ui/activities/ProfilActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/ProfilActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 55
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/ProfilActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    iget-object p1, p0, Lcom/maishapay/ui/activities/ProfilActivity;->collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string v1, "Profil"

    invoke-virtual {p1, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object p1

    const-string v1, "window"

    .line 60
    invoke-virtual {p0, v1}, Lcom/maishapay/ui/activities/ProfilActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 61
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 62
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 63
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 64
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 65
    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x3

    .line 67
    div-int/lit8 v1, v1, 0x6

    .line 70
    new-instance v2, Landroidmads/library/qrgenearator/QRGEncoder;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "TEXT_TYPE"

    invoke-direct {v2, v3, v4, v5, v1}, Landroidmads/library/qrgenearator/QRGEncoder;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/maishapay/ui/activities/ProfilActivity;->IV_QRCode:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroidmads/library/qrgenearator/QRGEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 74
    invoke-virtual {v1}, Lcom/google/zxing/WriterException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maishapay/util/LogCat;->e(Ljava/lang/String;)V

    .line 77
    :goto_1
    iget-object v1, p0, Lcom/maishapay/ui/activities/ProfilActivity;->ET_Noms:Landroid/widget/TextView;

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getPrenom()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getNom()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/maishapay/ui/activities/ProfilActivity;->ET_Phone:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/maishapay/ui/activities/ProfilActivity;->ET_Email:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/maishapay/ui/activities/ProfilActivity;->ET_Adresse:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getAdresse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/maishapay/ui/activities/ProfilActivity;->ET_Ville:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getVille()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/ProfilActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f09009b

    if-ne v0, v2, :cond_0

    .line 110
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/maishapay/ui/activities/UpdateProfilActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/ProfilActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_0
    const v2, 0x102002c

    if-ne v0, v2, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/ProfilActivity;->finish()V

    return v1

    .line 118
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
