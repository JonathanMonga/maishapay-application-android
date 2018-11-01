.class public Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder_ViewBinding;
.super Ljava/lang/Object;
.source "PaiementAdapter$ContentHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder_ViewBinding;->target:Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;

    const-string v0, "field \'nom\'"

    .line 23
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0901bb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;->nom:Landroid/widget/TextView;

    const-string v0, "field \'description\'"

    .line 24
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09010e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;->description:Landroid/widget/TextView;

    const-string v0, "field \'cardView\'"

    .line 25
    const-class v1, Landroid/support/v7/widget/CardView;

    const v2, 0x7f0900f4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/CardView;

    iput-object p2, p1, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;->cardView:Landroid/support/v7/widget/CardView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder_ViewBinding;->target:Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder_ViewBinding;->target:Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;

    .line 35
    iput-object v1, v0, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;->nom:Landroid/widget/TextView;

    .line 36
    iput-object v1, v0, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;->description:Landroid/widget/TextView;

    .line 37
    iput-object v1, v0, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;->cardView:Landroid/support/v7/widget/CardView;

    return-void
.end method
