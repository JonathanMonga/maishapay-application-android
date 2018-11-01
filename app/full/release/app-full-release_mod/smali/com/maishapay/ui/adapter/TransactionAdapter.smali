.class public Lcom/maishapay/ui/adapter/TransactionAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TransactionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private transactionResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maishapay/model/client/response/TransactionResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maishapay/model/client/response/TransactionResponse;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/maishapay/ui/adapter/TransactionAdapter;->transactionResponseList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/maishapay/ui/adapter/TransactionAdapter;->transactionResponseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor",
            "NewApi"
        }
    .end annotation

    .line 21
    check-cast p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;

    invoke-virtual {p0, p1, p2}, Lcom/maishapay/ui/adapter/TransactionAdapter;->onBindViewHolder(Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor",
            "NewApi"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/maishapay/ui/adapter/TransactionAdapter;->transactionResponseList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/maishapay/model/client/response/TransactionResponse;

    .line 56
    invoke-virtual {p2}, Lcom/maishapay/model/client/response/TransactionResponse;->getType_jrn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->text_category_name:Landroid/widget/TextView;

    const-string v4, "Envoi \u00e0"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->TV_Telephone:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/TransactionResponse;->getTelephone_dest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->TV_Montant:Landroid/widget/TextView;

    const-string v4, "%s %s"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/TransactionResponse;->getMontant_jrn()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/TransactionResponse;->getMonnaie_jrn()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->TV_Montant:Landroid/widget/TextView;

    const-string v4, "#ffff4444"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v0, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->TV_Date:Landroid/widget/TextView;

    const-string v4, "%s %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/TransactionResponse;->getDate_jrn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/TransactionResponse;->getHeure_jrn()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p2, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->image_category_icon:Landroid/widget/ImageView;

    const v0, 0x7f0802a0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iget-object p1, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->image_category_icon_background:Landroid/widget/ImageView;

    const p2, 0x7f080077

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->text_category_name:Landroid/widget/TextView;

    const-string v4, "Reception de"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->TV_Telephone:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/TransactionResponse;->getTelephone_dest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->TV_Montant:Landroid/widget/TextView;

    const-string v4, "%s %s"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/TransactionResponse;->getMontant_jrn()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/TransactionResponse;->getMonnaie_jrn()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->TV_Montant:Landroid/widget/TextView;

    const-string v4, "#ff8bc34a"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v0, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->TV_Date:Landroid/widget/TextView;

    const-string v4, "%s %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/TransactionResponse;->getDate_jrn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p2}, Lcom/maishapay/model/client/response/TransactionResponse;->getHeure_jrn()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p2, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->image_category_icon:Landroid/widget/ImageView;

    const v0, 0x7f080297

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    iget-object p1, p1, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->image_category_icon_background:Landroid/widget/ImageView;

    const p2, 0x7f080079

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/maishapay/ui/adapter/TransactionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;
    .locals 2

    .line 46
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00ad

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;

    invoke-direct {p2, p0, p1}, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;-><init>(Lcom/maishapay/ui/adapter/TransactionAdapter;Landroid/view/View;)V

    return-object p2
.end method
