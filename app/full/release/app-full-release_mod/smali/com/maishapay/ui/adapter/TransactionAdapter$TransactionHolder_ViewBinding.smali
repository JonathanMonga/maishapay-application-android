.class public Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder_ViewBinding;
.super Ljava/lang/Object;
.source "TransactionAdapter$TransactionHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder_ViewBinding;->target:Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;

    const-string v0, "field \'text_category_name\'"

    .line 23
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090255

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->text_category_name:Landroid/widget/TextView;

    const-string v0, "field \'TV_Montant\'"

    .line 24
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09007f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->TV_Montant:Landroid/widget/TextView;

    const-string v0, "field \'TV_Telephone\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090082

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->TV_Telephone:Landroid/widget/TextView;

    const-string v0, "field \'TV_Date\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09007b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->TV_Date:Landroid/widget/TextView;

    const-string v0, "field \'image_category_icon_background\'"

    .line 27
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09013d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->image_category_icon_background:Landroid/widget/ImageView;

    const-string v0, "field \'image_category_icon\'"

    .line 28
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09013c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->image_category_icon:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder_ViewBinding;->target:Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder_ViewBinding;->target:Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;

    .line 38
    iput-object v1, v0, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->text_category_name:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->TV_Montant:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->TV_Telephone:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->TV_Date:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->image_category_icon_background:Landroid/widget/ImageView;

    .line 43
    iput-object v1, v0, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->image_category_icon:Landroid/widget/ImageView;

    return-void
.end method
