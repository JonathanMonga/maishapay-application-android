.class Lcom/hbb20/CountryCodeAdapter$2;
.super Ljava/lang/Object;
.source "CountryCodeAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hbb20/CountryCodeAdapter;->setTextWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hbb20/CountryCodeAdapter;


# direct methods
.method constructor <init>(Lcom/hbb20/CountryCodeAdapter;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/hbb20/CountryCodeAdapter$2;->this$0:Lcom/hbb20/CountryCodeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 90
    iget-object p2, p0, Lcom/hbb20/CountryCodeAdapter$2;->this$0:Lcom/hbb20/CountryCodeAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/hbb20/CountryCodeAdapter;->access$000(Lcom/hbb20/CountryCodeAdapter;Ljava/lang/String;)V

    .line 91
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/hbb20/CountryCodeAdapter$2;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object p1, p1, Lcom/hbb20/CountryCodeAdapter;->imgClearQuery:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/hbb20/CountryCodeAdapter$2;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object p1, p1, Lcom/hbb20/CountryCodeAdapter;->imgClearQuery:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
