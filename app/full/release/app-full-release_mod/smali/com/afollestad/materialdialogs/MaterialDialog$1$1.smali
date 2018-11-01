.class Lcom/afollestad/materialdialogs/MaterialDialog$1$1;
.super Ljava/lang/Object;
.source "MaterialDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/MaterialDialog$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/afollestad/materialdialogs/MaterialDialog$1;

.field final synthetic val$fSelectedIndex:I


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog$1;I)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;->this$1:Lcom/afollestad/materialdialogs/MaterialDialog$1;

    iput p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;->val$fSelectedIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;->this$1:Lcom/afollestad/materialdialogs/MaterialDialog$1;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    .line 153
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;->this$1:Lcom/afollestad/materialdialogs/MaterialDialog$1;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;->val$fSelectedIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    return-void
.end method
