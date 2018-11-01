.class Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;
.super Ljava/lang/Object;
.source "MDRootLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

.field final synthetic val$setForBottom:Z

.field final synthetic val$setForTop:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/View;ZZ)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$setForTop:Z

    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$setForBottom:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 515
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$view:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$000(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$setForTop:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$102(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z

    .line 520
    :cond_0
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$setForBottom:Z

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$202(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$view:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$setForTop:Z

    iget-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$setForBottom:Z

    invoke-static {v0, v1, v2, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$300(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V

    .line 526
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
