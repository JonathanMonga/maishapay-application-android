.class Lcom/maishapay/ui/activities/DrawerActivity$2;
.super Ljava/lang/Object;
.source "DrawerActivity.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/DrawerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/DrawerActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/DrawerActivity;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/maishapay/ui/activities/DrawerActivity$2;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 0

    .line 115
    new-instance p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p2, p0, Lcom/maishapay/ui/activities/DrawerActivity$2;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    invoke-direct {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "D\u00e9connexion"

    .line 116
    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const-string p2, "Voulez-vous, vous d\u00e9connectez ?"

    .line 117
    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 118
    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const-string p2, "Annuler"

    .line 119
    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const-string p2, "Valider"

    .line 120
    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const p2, 0x7f0601e2

    .line 121
    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/maishapay/ui/activities/DrawerActivity$2$2;

    invoke-direct {p2, p0}, Lcom/maishapay/ui/activities/DrawerActivity$2$2;-><init>(Lcom/maishapay/ui/activities/DrawerActivity$2;)V

    .line 122
    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/maishapay/ui/activities/DrawerActivity$2$1;

    invoke-direct {p2, p0}, Lcom/maishapay/ui/activities/DrawerActivity$2$1;-><init>(Lcom/maishapay/ui/activities/DrawerActivity$2;)V

    .line 127
    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    const/4 p1, 0x0

    return p1
.end method
