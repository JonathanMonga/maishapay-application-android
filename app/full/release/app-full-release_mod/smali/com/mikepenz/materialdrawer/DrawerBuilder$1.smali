.class Lcom/mikepenz/materialdrawer/DrawerBuilder$1;
.super Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;
.source "DrawerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/materialdrawer/DrawerBuilder;->handleShowOnLaunch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hasBeenDragged:Z

.field final synthetic this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1269
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$1;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iput-object p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;-><init>()V

    const/4 p1, 0x0

    .line 1270
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$1;->hasBeenDragged:Z

    return-void
.end method


# virtual methods
.method public onDrawerStateChanged(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1276
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$1;->hasBeenDragged:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    .line 1280
    iget-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$1;->hasBeenDragged:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$1;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object p1, p1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$1;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1282
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "navigation_drawer_dragged_open"

    .line 1283
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1284
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1287
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$1;->hasBeenDragged:Z

    :cond_2
    :goto_0
    return-void
.end method
