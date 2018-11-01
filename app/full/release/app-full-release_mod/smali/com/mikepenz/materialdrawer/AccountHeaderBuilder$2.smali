.class Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$2;
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

    .line 1221
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$2;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1224
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder$2;->this$0:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->access$000(Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;Landroid/view/View;Z)V

    return-void
.end method
