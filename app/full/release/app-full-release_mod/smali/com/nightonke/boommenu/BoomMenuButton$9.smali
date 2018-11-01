.class Lcom/nightonke/boommenu/BoomMenuButton$9;
.super Ljava/lang/Object;
.source "BoomMenuButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nightonke/boommenu/BoomMenuButton;->reLayoutAfterOrientationChanged()V
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

    .line 1103
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$9;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1106
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$9;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$1900(Lcom/nightonke/boommenu/BoomMenuButton;)Lcom/nightonke/boommenu/BackgroundView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$9;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$1900(Lcom/nightonke/boommenu/BoomMenuButton;)Lcom/nightonke/boommenu/BackgroundView;

    move-result-object v0

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton$9;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/BackgroundView;->reLayout(Lcom/nightonke/boommenu/BoomMenuButton;)V

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$9;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$2000(Lcom/nightonke/boommenu/BoomMenuButton;Z)V

    .line 1108
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$9;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$2100(Lcom/nightonke/boommenu/BoomMenuButton;)V

    .line 1109
    sget-object v0, Lcom/nightonke/boommenu/BoomMenuButton$12;->$SwitchMap$com$nightonke$boommenu$BoomStateEnum:[I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton$9;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {v2}, Lcom/nightonke/boommenu/BoomMenuButton;->access$1100(Lcom/nightonke/boommenu/BoomMenuButton;)Lcom/nightonke/boommenu/BoomStateEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nightonke/boommenu/BoomStateEnum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1117
    :pswitch_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$9;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton$9;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {v2}, Lcom/nightonke/boommenu/BoomMenuButton;->access$1100(Lcom/nightonke/boommenu/BoomMenuButton;)Lcom/nightonke/boommenu/BoomStateEnum;

    move-result-object v2

    sget-object v3, Lcom/nightonke/boommenu/BoomStateEnum;->WillBoom:Lcom/nightonke/boommenu/BoomStateEnum;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/nightonke/boommenu/BoomMenuButton;->access$2300(Lcom/nightonke/boommenu/BoomMenuButton;Z)V

    .line 1118
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$9;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$2200(Lcom/nightonke/boommenu/BoomMenuButton;)V

    goto :goto_1

    .line 1113
    :pswitch_1
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton$9;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-static {v0}, Lcom/nightonke/boommenu/BoomMenuButton;->access$2200(Lcom/nightonke/boommenu/BoomMenuButton;)V

    :goto_1
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
