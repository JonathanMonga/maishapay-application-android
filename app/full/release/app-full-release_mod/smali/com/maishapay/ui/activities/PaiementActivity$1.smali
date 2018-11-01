.class Lcom/maishapay/ui/activities/PaiementActivity$1;
.super Ljava/lang/Object;
.source "PaiementActivity.java"

# interfaces
.implements Lcom/maishapay/ui/adapter/PaiementAdapter$ItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/PaiementActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/PaiementActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/PaiementActivity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/maishapay/ui/activities/PaiementActivity$1;->this$0:Lcom/maishapay/ui/activities/PaiementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked()V
    .locals 2

    .line 52
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lcom/maishapay/ui/activities/PaiementActivity$1;->this$0:Lcom/maishapay/ui/activities/PaiementActivity;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Type des transferts"

    .line 53
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f030005

    .line 54
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/maishapay/ui/activities/PaiementActivity$1$1;

    invoke-direct {v1, p0}, Lcom/maishapay/ui/activities/PaiementActivity$1$1;-><init>(Lcom/maishapay/ui/activities/PaiementActivity$1;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method
