.class Lcom/maishapay/ui/fragment/AccueilFragment$1$2;
.super Ljava/lang/Object;
.source "AccueilFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/fragment/AccueilFragment$1;->onClicked(ILcom/nightonke/boommenu/BoomButtons/BoomButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maishapay/ui/fragment/AccueilFragment$1;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/fragment/AccueilFragment$1;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/maishapay/ui/fragment/AccueilFragment$1$2;->this$1:Lcom/maishapay/ui/fragment/AccueilFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/maishapay/ui/fragment/AccueilFragment$1$2;->this$1:Lcom/maishapay/ui/fragment/AccueilFragment$1;

    iget-object v0, v0, Lcom/maishapay/ui/fragment/AccueilFragment$1;->this$0:Lcom/maishapay/ui/fragment/AccueilFragment;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v2

    const-class v3, Lcom/maishapay/ui/activities/RetraitActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/maishapay/ui/fragment/AccueilFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
