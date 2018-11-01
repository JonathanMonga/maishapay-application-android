.class public Lcom/maishapay/ui/activities/ProfilActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ProfilActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/activities/ProfilActivity;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/activities/ProfilActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 22
    invoke-virtual {p1}, Lcom/maishapay/ui/activities/ProfilActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/maishapay/ui/activities/ProfilActivity_ViewBinding;-><init>(Lcom/maishapay/ui/activities/ProfilActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/maishapay/ui/activities/ProfilActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/maishapay/ui/activities/ProfilActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/ProfilActivity;

    const-string v0, "field \'toolbar\'"

    .line 29
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f090263

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/maishapay/ui/activities/ProfilActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'collapsingToolbar\'"

    .line 30
    const-class v1, Landroid/support/design/widget/CollapsingToolbarLayout;

    const v2, 0x7f090101

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object v0, p1, Lcom/maishapay/ui/activities/ProfilActivity;->collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string v0, "field \'ET_Noms\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090028

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/activities/ProfilActivity;->ET_Noms:Landroid/widget/TextView;

    const-string v0, "field \'ET_Phone\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090029

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/activities/ProfilActivity;->ET_Phone:Landroid/widget/TextView;

    const-string v0, "field \'ET_Email\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090021

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/activities/ProfilActivity;->ET_Email:Landroid/widget/TextView;

    const-string v0, "field \'ET_Adresse\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090015

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/activities/ProfilActivity;->ET_Adresse:Landroid/widget/TextView;

    const-string v0, "field \'ET_Ville\'"

    .line 35
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09002f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/activities/ProfilActivity;->ET_Ville:Landroid/widget/TextView;

    const-string v0, "field \'IV_QRCode\'"

    .line 36
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09003e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/maishapay/ui/activities/ProfilActivity;->IV_QRCode:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/maishapay/ui/activities/ProfilActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/ProfilActivity;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/maishapay/ui/activities/ProfilActivity_ViewBinding;->target:Lcom/maishapay/ui/activities/ProfilActivity;

    .line 46
    iput-object v1, v0, Lcom/maishapay/ui/activities/ProfilActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 47
    iput-object v1, v0, Lcom/maishapay/ui/activities/ProfilActivity;->collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 48
    iput-object v1, v0, Lcom/maishapay/ui/activities/ProfilActivity;->ET_Noms:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/maishapay/ui/activities/ProfilActivity;->ET_Phone:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/maishapay/ui/activities/ProfilActivity;->ET_Email:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/maishapay/ui/activities/ProfilActivity;->ET_Adresse:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/maishapay/ui/activities/ProfilActivity;->ET_Ville:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/maishapay/ui/activities/ProfilActivity;->IV_QRCode:Landroid/widget/ImageView;

    return-void
.end method
