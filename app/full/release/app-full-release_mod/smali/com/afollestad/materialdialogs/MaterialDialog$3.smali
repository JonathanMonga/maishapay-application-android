.class Lcom/afollestad/materialdialogs/MaterialDialog$3;
.super Ljava/lang/Object;
.source "MaterialDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/MaterialDialog;->setInternalInputCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .line 940
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$3;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

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
    .locals 1

    .line 946
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 948
    iget-object p3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$3;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object p3, p3, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean p3, p3, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputAllowEmpty:Z

    const/4 p4, 0x0

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x1

    move p4, p3

    .line 950
    :cond_0
    iget-object p3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$3;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    sget-object v0, Lcom/afollestad/materialdialogs/DialogAction;->POSITIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {p3, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getActionButton(Lcom/afollestad/materialdialogs/DialogAction;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p3

    xor-int/lit8 v0, p4, 0x1

    .line 951
    invoke-virtual {p3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 953
    :cond_1
    iget-object p3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$3;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p3, p2, p4}, Lcom/afollestad/materialdialogs/MaterialDialog;->invalidateInputMinMaxIndicator(IZ)V

    .line 954
    iget-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$3;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallInputCallback:Z

    if-eqz p2, :cond_2

    .line 955
    iget-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$3;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputCallback:Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;

    iget-object p3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$3;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-interface {p2, p3, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;->onInput(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
