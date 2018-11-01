.class Lcom/maishapay/ui/activities/DrawerActivity$2$1;
.super Ljava/lang/Object;
.source "DrawerActivity.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/DrawerActivity$2;->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maishapay/ui/activities/DrawerActivity$2;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/DrawerActivity$2;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/maishapay/ui/activities/DrawerActivity$2$1;->this$1:Lcom/maishapay/ui/activities/DrawerActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 2
    .param p1    # Lcom/afollestad/materialdialogs/MaterialDialog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/afollestad/materialdialogs/DialogAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 130
    iget-object p1, p0, Lcom/maishapay/ui/activities/DrawerActivity$2$1;->this$1:Lcom/maishapay/ui/activities/DrawerActivity$2;

    iget-object p1, p1, Lcom/maishapay/ui/activities/DrawerActivity$2;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    invoke-static {p1}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/maishapay/ui/activities/DrawerActivity$2$1;->this$1:Lcom/maishapay/ui/activities/DrawerActivity$2;

    iget-object p2, p2, Lcom/maishapay/ui/activities/DrawerActivity$2;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    invoke-static {p2}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 131
    iget-object p2, p0, Lcom/maishapay/ui/activities/DrawerActivity$2$1;->this$1:Lcom/maishapay/ui/activities/DrawerActivity$2;

    iget-object p2, p2, Lcom/maishapay/ui/activities/DrawerActivity$2;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    invoke-static {p2}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 133
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->clearAll(Landroid/content/Context;)V

    .line 135
    iget-object v0, p0, Lcom/maishapay/ui/activities/DrawerActivity$2$1;->this$1:Lcom/maishapay/ui/activities/DrawerActivity$2;

    iget-object v0, v0, Lcom/maishapay/ui/activities/DrawerActivity$2;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    invoke-static {v0, p1}, Lcom/maishapay/model/prefs/UserPrefencesManager;->setUserPhone(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/maishapay/ui/activities/DrawerActivity$2$1;->this$1:Lcom/maishapay/ui/activities/DrawerActivity$2;

    iget-object p1, p1, Lcom/maishapay/ui/activities/DrawerActivity$2;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    invoke-static {p1, p2}, Lcom/maishapay/model/prefs/UserPrefencesManager;->setUserCountryCodePhone(Landroid/content/Context;I)V

    .line 138
    iget-object p1, p0, Lcom/maishapay/ui/activities/DrawerActivity$2$1;->this$1:Lcom/maishapay/ui/activities/DrawerActivity$2;

    iget-object p1, p1, Lcom/maishapay/ui/activities/DrawerActivity$2;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/maishapay/model/prefs/UserPrefencesManager;->setCurrentUserDisconnect(Landroid/content/Context;Z)V

    .line 140
    iget-object p1, p0, Lcom/maishapay/ui/activities/DrawerActivity$2$1;->this$1:Lcom/maishapay/ui/activities/DrawerActivity$2;

    iget-object p1, p1, Lcom/maishapay/ui/activities/DrawerActivity$2;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/maishapay/ui/activities/DrawerActivity$2$1;->this$1:Lcom/maishapay/ui/activities/DrawerActivity$2;

    iget-object v0, v0, Lcom/maishapay/ui/activities/DrawerActivity$2;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    const-class v1, Lcom/maishapay/ui/activities/LoginActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/maishapay/ui/activities/DrawerActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    iget-object p1, p0, Lcom/maishapay/ui/activities/DrawerActivity$2$1;->this$1:Lcom/maishapay/ui/activities/DrawerActivity$2;

    iget-object p1, p1, Lcom/maishapay/ui/activities/DrawerActivity$2;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/DrawerActivity;->finish()V

    return-void
.end method
