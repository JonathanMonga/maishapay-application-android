.class public Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ContactFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/maishapay/ui/fragment/ContactFragment;

.field private view7f090006:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/maishapay/ui/fragment/ContactFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding;->target:Lcom/maishapay/ui/fragment/ContactFragment;

    const-string v0, "field \'ET_Assunto\'"

    .line 25
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090017

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/fragment/ContactFragment;->ET_Assunto:Landroid/widget/EditText;

    const-string v0, "field \'ET_Mensagem\'"

    .line 26
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090024

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/maishapay/ui/fragment/ContactFragment;->ET_Mensagem:Landroid/widget/EditText;

    const-string v0, "method \'BTN_EnvoyerClicked\'"

    const v1, 0x7f090006

    .line 27
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding;->view7f090006:Landroid/view/View;

    .line 29
    new-instance v0, Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding$1;-><init>(Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding;Lcom/maishapay/ui/fragment/ContactFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding;->target:Lcom/maishapay/ui/fragment/ContactFragment;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding;->target:Lcom/maishapay/ui/fragment/ContactFragment;

    .line 44
    iput-object v1, v0, Lcom/maishapay/ui/fragment/ContactFragment;->ET_Assunto:Landroid/widget/EditText;

    .line 45
    iput-object v1, v0, Lcom/maishapay/ui/fragment/ContactFragment;->ET_Mensagem:Landroid/widget/EditText;

    .line 47
    iget-object v0, p0, Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding;->view7f090006:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iput-object v1, p0, Lcom/maishapay/ui/fragment/ContactFragment_ViewBinding;->view7f090006:Landroid/view/View;

    return-void
.end method
