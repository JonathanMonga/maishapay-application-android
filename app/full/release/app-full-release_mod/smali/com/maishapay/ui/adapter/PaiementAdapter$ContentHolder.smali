.class public Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PaiementAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maishapay/ui/adapter/PaiementAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentHolder"
.end annotation


# instance fields
.field cardView:Landroid/support/v7/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f4
    .end annotation
.end field

.field description:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09010e
    .end annotation
.end field

.field nom:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901bb
    .end annotation
.end field

.field final synthetic this$0:Lcom/maishapay/ui/adapter/PaiementAdapter;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/adapter/PaiementAdapter;Landroid/view/View;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;->this$0:Lcom/maishapay/ui/adapter/PaiementAdapter;

    .line 41
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 42
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 43
    iget-object p1, p0, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;->cardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/maishapay/ui/adapter/PaiementAdapter$ContentHolder;->this$0:Lcom/maishapay/ui/adapter/PaiementAdapter;

    invoke-static {p1}, Lcom/maishapay/ui/adapter/PaiementAdapter;->access$000(Lcom/maishapay/ui/adapter/PaiementAdapter;)Lcom/maishapay/ui/adapter/PaiementAdapter$ItemClickedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/maishapay/ui/adapter/PaiementAdapter$ItemClickedListener;->clicked()V

    return-void
.end method
