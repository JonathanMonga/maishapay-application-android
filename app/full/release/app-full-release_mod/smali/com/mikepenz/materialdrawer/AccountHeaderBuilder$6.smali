.class Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$6;
.super Ljava/lang/Object;
.source "AccountHeaderBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;)V
    .locals 0

    .line 1333
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$6;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1337
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$6;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderSelectionViewClickListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderSelectionViewClickListener;

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$6;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderSelectionViewClickListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderSelectionViewClickListener;

    sget v1, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_profile_header:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderSelectionViewClickListener;->onClick(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1341
    :goto_0
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$6;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountSwitcherArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 1342
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$6;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->toggleSelectionList(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
