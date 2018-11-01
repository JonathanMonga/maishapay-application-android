.class Lcom/nightonke/boommenu/BoomMenuButton$8;
.super Landroid/view/OrientationEventListener;
.source "BoomMenuButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nightonke/boommenu/BoomMenuButton;->initOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nightonke/boommenu/BoomMenuButton;


# direct methods
.method constructor <init>(Lcom/nightonke/boommenu/BoomMenuButton;Landroid/content/Context;)V
    .locals 0

    .line 1087
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$8;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    .line 1090
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$8;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$1700(Lcom/nightonke/boommenu/BoomMenuButton;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$8;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$1700(Lcom/nightonke/boommenu/BoomMenuButton;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$8;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$1802(Lcom/nightonke/boommenu/BoomMenuButton;Z)Z

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$8;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {v0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$1702(Lcom/nightonke/boommenu/BoomMenuButton;I)I

    return-void
.end method
