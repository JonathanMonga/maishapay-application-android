.class public Lcom/maishapay/ui/adapter/PaiementAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PaiementAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maishapay/ui/adapter/PaiementAdapter$ItemClickedListener;,
        Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;,
        Lcom/maishapay/ui/adapter/PaiementAdapter$HeaderHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private itemClickedListener:Lcom/maishapay/ui/adapter/PaiementAdapter$ItemClickedListener;

.field private paiementModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maishapay/model/domain/PaiementModel;",
            ">;"
        }
    .end annotation
.end field

.field private totalTypes:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/maishapay/ui/adapter/PaiementAdapter$ItemClickedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maishapay/model/domain/PaiementModel;",
            ">;",
            "Lcom/maishapay/ui/adapter/PaiementAdapter$ItemClickedListener;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/maishapay/ui/adapter/PaiementAdapter;->paiementModels:Ljava/util/List;

    .line 54
    iput-object p2, p0, Lcom/maishapay/ui/adapter/PaiementAdapter;->itemClickedListener:Lcom/maishapay/ui/adapter/PaiementAdapter$ItemClickedListener;

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/maishapay/ui/adapter/PaiementAdapter;->totalTypes:I

    return-void
.end method

.method static synthetic access$000(Lcom/maishapay/ui/adapter/PaiementAdapter;)Lcom/maishapay/ui/adapter/PaiementAdapter$ItemClickedListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/maishapay/ui/adapter/PaiementAdapter;->itemClickedListener:Lcom/maishapay/ui/adapter/PaiementAdapter$ItemClickedListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/maishapay/ui/adapter/PaiementAdapter;->totalTypes:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/maishapay/ui/adapter/PaiementAdapter;->paiementModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/maishapay/model/domain/PaiementModel;

    invoke-virtual {p1}, Lcom/maishapay/model/domain/PaiementModel;->getType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor",
            "NewApi"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/maishapay/ui/adapter/PaiementAdapter;->paiementModels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/maishapay/model/domain/PaiementModel;

    .line 85
    invoke-virtual {p2}, Lcom/maishapay/model/domain/PaiementModel;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    check-cast p1, Lcom/maishapay/ui/adapter/PaiementAdapter$HeaderHolder;

    iget-object p1, p1, Lcom/maishapay/ui/adapter/PaiementAdapter$HeaderHolder;->nom:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/maishapay/model/domain/PaiementModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_0
    check-cast p1, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;

    iget-object v0, p1, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;->nom:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/maishapay/model/domain/PaiementModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p1, p1, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/maishapay/model/domain/PaiementModel;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 63
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b008e

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 64
    new-instance p2, Lcom/maishapay/ui/adapter/PaiementAdapter$HeaderHolder;

    invoke-direct {p2, p1}, Lcom/maishapay/ui/adapter/PaiementAdapter$HeaderHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 66
    :cond_0
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b008d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    new-instance p2, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;

    invoke-direct {p2, p0, p1}, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;-><init>(Lcom/maishapay/ui/adapter/PaiementAdapter;Landroid/view/View;)V

    return-object p2
.end method
