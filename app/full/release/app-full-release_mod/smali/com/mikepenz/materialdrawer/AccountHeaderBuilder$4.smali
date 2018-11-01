.class Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$4;
.super Ljava/lang/Object;
.source "AccountHeaderBuilder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 1265
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$4;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1268
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$4;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderProfileImageListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderProfileImageListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1269
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_profile_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 1270
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$4;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v2, v2, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mOnAccountHeaderProfileImageListener:Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderProfileImageListener;

    invoke-interface {v2, p1, v0, v1}, Lcom/mikepenz/materialdrawer/AccountHeader$OnAccountHeaderProfileImageListener;->onProfileImageLongClick(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;Z)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method
