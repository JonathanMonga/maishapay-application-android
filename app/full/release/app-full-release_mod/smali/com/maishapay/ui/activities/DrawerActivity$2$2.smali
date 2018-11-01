.class Lcom/maishapay/ui/activities/DrawerActivity$2$2;
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

    .line 122
    iput-object p1, p0, Lcom/maishapay/ui/activities/DrawerActivity$2$2;->this$1:Lcom/maishapay/ui/activities/DrawerActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0
    .param p1    # Lcom/afollestad/materialdialogs/MaterialDialog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/afollestad/materialdialogs/DialogAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
