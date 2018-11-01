.class public Lcom/mikepenz/materialize/Materialize;
.super Ljava/lang/Object;
.source "Materialize.java"


# instance fields
.field private final mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

.field private mKeyboardUtil:Lcom/mikepenz/materialize/util/KeyboardUtil;


# direct methods
.method protected constructor <init>(Lcom/mikepenz/materialize/MaterializeBuilder;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/mikepenz/materialize/Materialize;->mKeyboardUtil:Lcom/mikepenz/materialize/util/KeyboardUtil;

    .line 22
    iput-object p1, p0, Lcom/mikepenz/materialize/Materialize;->mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/ViewGroup;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/mikepenz/materialize/Materialize;->mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContentRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getScrimInsetsFrameLayout()Lcom/mikepenz/materialize/view/IScrimInsetsLayout;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mikepenz/materialize/Materialize;->mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    return-object v0
.end method

.method public keyboardSupportEnabled(Landroid/app/Activity;Z)V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/mikepenz/materialize/Materialize;->getContent()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mikepenz/materialize/Materialize;->getContent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/mikepenz/materialize/Materialize;->mKeyboardUtil:Lcom/mikepenz/materialize/util/KeyboardUtil;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-virtual {p0}, Lcom/mikepenz/materialize/Materialize;->getContent()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/mikepenz/materialize/util/KeyboardUtil;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/mikepenz/materialize/Materialize;->mKeyboardUtil:Lcom/mikepenz/materialize/util/KeyboardUtil;

    .line 103
    iget-object p1, p0, Lcom/mikepenz/materialize/Materialize;->mKeyboardUtil:Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-virtual {p1}, Lcom/mikepenz/materialize/util/KeyboardUtil;->disable()V

    :cond_0
    if-eqz p2, :cond_1

    .line 107
    iget-object p1, p0, Lcom/mikepenz/materialize/Materialize;->mKeyboardUtil:Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-virtual {p1}, Lcom/mikepenz/materialize/util/KeyboardUtil;->enable()V

    goto :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/mikepenz/materialize/Materialize;->mKeyboardUtil:Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-virtual {p1}, Lcom/mikepenz/materialize/util/KeyboardUtil;->disable()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/mikepenz/materialize/Materialize;->mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/mikepenz/materialize/Materialize;->mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->setTintStatusBar(Z)V

    .line 34
    iget-object v0, p0, Lcom/mikepenz/materialize/Materialize;->mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->setTintNavigationBar(Z)V

    :cond_0
    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mikepenz/materialize/Materialize;->mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mikepenz/materialize/Materialize;->mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    invoke-interface {v0, p1}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->setInsetForeground(I)V

    .line 68
    iget-object p1, p0, Lcom/mikepenz/materialize/Materialize;->mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

    iget-object p1, p1, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    invoke-interface {p1}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTintNavigationBar(Z)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mikepenz/materialize/Materialize;->mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/mikepenz/materialize/Materialize;->mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    invoke-interface {v0, p1}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->setTintNavigationBar(Z)V

    :cond_0
    return-void
.end method

.method public setTintStatusBar(Z)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mikepenz/materialize/Materialize;->mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/mikepenz/materialize/Materialize;->mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    invoke-interface {v0, p1}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->setTintStatusBar(Z)V

    :cond_0
    return-void
.end method
