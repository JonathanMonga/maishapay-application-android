.class Lcom/maishapay/ui/fragment/AccueilFragment$1;
.super Ljava/lang/Object;
.source "AccueilFragment.java"

# interfaces
.implements Lcom/nightonke/boommenu/OnBoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/fragment/AccueilFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public paieMoiDialogFragment:Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;

.field final synthetic this$0:Lcom/maishapay/ui/fragment/AccueilFragment;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/fragment/AccueilFragment;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment$1;->this$0:Lcom/maishapay/ui/fragment/AccueilFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundClick()V
    .locals 0

    return-void
.end method

.method public onBoomDidHide()V
    .locals 0

    return-void
.end method

.method public onBoomDidShow()V
    .locals 0

    return-void
.end method

.method public onBoomWillHide()V
    .locals 0

    return-void
.end method

.method public onBoomWillShow()V
    .locals 0

    return-void
.end method

.method public onClicked(ILcom/nightonke/boommenu/BoomButtons/BoomButton;)V
    .locals 2

    const-wide/16 v0, 0x1ae

    packed-switch p1, :pswitch_data_0

    .line 160
    iget-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment$1;->this$0:Lcom/maishapay/ui/fragment/AccueilFragment;

    invoke-virtual {p1}, Lcom/maishapay/ui/fragment/AccueilFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 161
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;->newInstance(Ljava/lang/String;)Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;

    move-result-object p2

    iput-object p2, p0, Lcom/maishapay/ui/fragment/AccueilFragment$1;->paieMoiDialogFragment:Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;

    .line 162
    iget-object p2, p0, Lcom/maishapay/ui/fragment/AccueilFragment$1;->paieMoiDialogFragment:Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;

    const-string v0, "PaieMoiDialogFragment"

    invoke-virtual {p2, p1, v0}, Lcom/maishapay/ui/dialog/PaieMoiDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :pswitch_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/maishapay/ui/fragment/AccueilFragment$1$3;

    invoke-direct {p2, p0}, Lcom/maishapay/ui/fragment/AccueilFragment$1$3;-><init>(Lcom/maishapay/ui/fragment/AccueilFragment$1;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 140
    :pswitch_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/maishapay/ui/fragment/AccueilFragment$1$2;

    invoke-direct {p2, p0}, Lcom/maishapay/ui/fragment/AccueilFragment$1$2;-><init>(Lcom/maishapay/ui/fragment/AccueilFragment$1;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 130
    :pswitch_2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/maishapay/ui/fragment/AccueilFragment$1$1;

    invoke-direct {p2, p0}, Lcom/maishapay/ui/fragment/AccueilFragment$1$1;-><init>(Lcom/maishapay/ui/fragment/AccueilFragment$1;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
