.class Lcom/maishapay/ui/activities/RegisterMarchantActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RegisterMarchantActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/RegisterMarchantActivity_ViewBinding;-><init>(Lcom/maishapay/ui/activities/RegisterMarchantActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/RegisterMarchantActivity_ViewBinding;

.field final synthetic val$target:Lcom/maishapay/ui/activities/RegisterMarchantActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/RegisterMarchantActivity_ViewBinding;Lcom/maishapay/ui/activities/RegisterMarchantActivity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/maishapay/ui/activities/RegisterMarchantActivity_ViewBinding$1;->this$0:Lcom/maishapay/ui/activities/RegisterMarchantActivity_ViewBinding;

    iput-object p2, p0, Lcom/maishapay/ui/activities/RegisterMarchantActivity_ViewBinding$1;->val$target:Lcom/maishapay/ui/activities/RegisterMarchantActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/maishapay/ui/activities/RegisterMarchantActivity_ViewBinding$1;->val$target:Lcom/maishapay/ui/activities/RegisterMarchantActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/RegisterMarchantActivity;->clickCriarConta()V

    return-void
.end method
