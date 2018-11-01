.class Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "EpargneActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding;-><init>(Lcom/maishapay/ui/activities/EpargneActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding;

.field final synthetic val$target:Lcom/maishapay/ui/activities/EpargneActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding;Lcom/maishapay/ui/activities/EpargneActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding$1;->this$0:Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding;

    iput-object p2, p0, Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding$1;->val$target:Lcom/maishapay/ui/activities/EpargneActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/maishapay/ui/activities/EpargneActivity_ViewBinding$1;->val$target:Lcom/maishapay/ui/activities/EpargneActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/EpargneActivity;->cardEpargnePersonelleClicked()V

    return-void
.end method
