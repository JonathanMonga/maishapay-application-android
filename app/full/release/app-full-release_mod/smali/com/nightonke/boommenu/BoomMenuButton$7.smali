.class Lcom/nightonke/boommenu/BoomMenuButton$7;
.super Ljava/lang/Object;
.source "BoomMenuButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nightonke/boommenu/BoomMenuButton;->delayToDoLayoutJobs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nightonke/boommenu/BoomMenuButton;


# direct methods
.method constructor <init>(Lcom/nightonke/boommenu/BoomMenuButton;)V
    .locals 0

    .line 1013
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$7;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$7;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$1600(Lcom/nightonke/boommenu/BoomMenuButton;)V

    return-void
.end method
