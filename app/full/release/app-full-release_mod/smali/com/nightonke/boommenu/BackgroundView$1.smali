.class Lcom/nightonke/boommenu/BackgroundView$1;
.super Ljava/lang/Object;
.source "BackgroundView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nightonke/boommenu/BackgroundView;-><init>(Landroid/content/Context;Lcom/nightonke/boommenu/BoomMenuButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nightonke/boommenu/BackgroundView;

.field final synthetic val$bmb:Lcom/nightonke/boommenu/BoomMenuButton;


# direct methods
.method constructor <init>(Lcom/nightonke/boommenu/BackgroundView;Lcom/nightonke/boommenu/BoomMenuButton;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/nightonke/boommenu/BackgroundView$1;->this$0:Lcom/nightonke/boommenu/BackgroundView;

    iput-object p2, p0, Lcom/nightonke/boommenu/BackgroundView$1;->val$bmb:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/nightonke/boommenu/BackgroundView$1;->val$bmb:Lcom/nightonke/boommenu/BoomMenuButton;

    invoke-virtual {p1}, Lcom/nightonke/boommenu/BoomMenuButton;->onBackgroundClicked()V

    return-void
.end method
