.class Lcom/nightonke/boommenu/BoomMenuButton$1;
.super Ljava/lang/Object;
.source "BoomMenuButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nightonke/boommenu/BoomMenuButton;->initButton()V
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

    .line 317
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$1;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 320
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton$1;->this$0:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-virtual {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->boom()V

    return-void
.end method
