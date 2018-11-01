.class Lcom/maishapay/ui/dialog/DialogNumberPickerFragment$1;
.super Ljava/lang/Object;
.source "DialogNumberPickerFragment.java"

# interfaces
.implements Lcom/fxn769/TextGetListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment$1;->this$0:Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChange(Ljava/lang/String;I)V
    .locals 0

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    .line 71
    iget-object p1, p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment$1;->this$0:Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;

    iget-object p1, p1, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->moneyTextView:Landroid/widget/TextView;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "0.0"

    .line 72
    invoke-static {p1}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->access$002(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_0
    iget-object p2, p0, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment$1;->this$0:Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;

    iget-object p2, p2, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->moneyTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static {p1}, Lcom/maishapay/ui/dialog/DialogNumberPickerFragment;->access$002(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method
