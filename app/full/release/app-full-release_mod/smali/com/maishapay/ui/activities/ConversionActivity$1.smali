.class Lcom/maishapay/ui/activities/ConversionActivity$1;
.super Ljava/lang/Object;
.source "ConversionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/ConversionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/ConversionActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/ConversionActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/maishapay/ui/activities/ConversionActivity$1;->this$0:Lcom/maishapay/ui/activities/ConversionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 86
    iget-object p1, p0, Lcom/maishapay/ui/activities/ConversionActivity$1;->this$0:Lcom/maishapay/ui/activities/ConversionActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/ConversionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030001

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 88
    aget-object p1, p1, p3

    invoke-static {}, Lcom/maishapay/ui/activities/ConversionActivity;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    invoke-static {}, Lcom/maishapay/ui/activities/ConversionActivity;->access$200()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/maishapay/ui/activities/ConversionActivity;->access$102(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lcom/maishapay/ui/activities/ConversionActivity;->access$300()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/maishapay/ui/activities/ConversionActivity;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/maishapay/ui/activities/ConversionActivity$1;->this$0:Lcom/maishapay/ui/activities/ConversionActivity;

    iget-object p1, p1, Lcom/maishapay/ui/activities/ConversionActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    iget-object p2, p0, Lcom/maishapay/ui/activities/ConversionActivity$1;->this$0:Lcom/maishapay/ui/activities/ConversionActivity;

    iget-object p2, p2, Lcom/maishapay/ui/activities/ConversionActivity;->ET_Montant:Lorg/fabiomsr/moneytextview/MoneyTextView;

    invoke-virtual {p2}, Lorg/fabiomsr/moneytextview/MoneyTextView;->getAmount()F

    move-result p2

    invoke-static {}, Lcom/maishapay/ui/activities/ConversionActivity;->access$100()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/fabiomsr/moneytextview/MoneyTextView;->setAmount(FLjava/lang/String;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
