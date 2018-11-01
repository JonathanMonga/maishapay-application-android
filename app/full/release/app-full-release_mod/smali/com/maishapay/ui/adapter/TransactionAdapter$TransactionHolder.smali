.class public Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TransactionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maishapay/ui/adapter/TransactionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransactionHolder"
.end annotation


# instance fields
.field TV_Date:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007b
    .end annotation
.end field

.field TV_Montant:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007f
    .end annotation
.end field

.field TV_Telephone:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090082
    .end annotation
.end field

.field image_category_icon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09013c
    .end annotation
.end field

.field image_category_icon_background:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09013d
    .end annotation
.end field

.field text_category_name:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090255
    .end annotation
.end field

.field final synthetic this$0:Lcom/maishapay/ui/adapter/TransactionAdapter;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/adapter/TransactionAdapter;Landroid/view/View;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/maishapay/ui/adapter/TransactionAdapter$TransactionHolder;->this$0:Lcom/maishapay/ui/adapter/TransactionAdapter;

    .line 34
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
