.class Lcom/hbb20/CountryCodePicker$3;
.super Ljava/lang/Object;
.source "CountryCodePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hbb20/CountryCodePicker;->updateValidityTextWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hbb20/CountryCodePicker;


# direct methods
.method constructor <init>(Lcom/hbb20/CountryCodePicker;)V
    .locals 0

    .line 1087
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$3;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1100
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker$3;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {p1}, Lcom/hbb20/CountryCodePicker;->access$300(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1102
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker$3;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->isValidFullNumber()Z

    move-result p1

    .line 1103
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$3;->this$0:Lcom/hbb20/CountryCodePicker;

    iget-boolean v0, v0, Lcom/hbb20/CountryCodePicker;->reportedValidity:Z

    if-eq p1, v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$3;->this$0:Lcom/hbb20/CountryCodePicker;

    iput-boolean p1, v0, Lcom/hbb20/CountryCodePicker;->reportedValidity:Z

    .line 1105
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker$3;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {p1}, Lcom/hbb20/CountryCodePicker;->access$300(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$3;->this$0:Lcom/hbb20/CountryCodePicker;

    iget-boolean v0, v0, Lcom/hbb20/CountryCodePicker;->reportedValidity:Z

    invoke-interface {p1, v0}, Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;->onValidityChanged(Z)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
