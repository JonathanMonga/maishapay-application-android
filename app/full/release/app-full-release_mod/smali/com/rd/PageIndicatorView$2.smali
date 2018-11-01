.class Lcom/rd/PageIndicatorView$2;
.super Ljava/lang/Object;
.source "PageIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rd/PageIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rd/PageIndicatorView;


# direct methods
.method constructor <init>(Lcom/rd/PageIndicatorView;)V
    .locals 0

    .line 878
    iput-object p1, p0, Lcom/rd/PageIndicatorView$2;->this$0:Lcom/rd/PageIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/rd/PageIndicatorView$2;->this$0:Lcom/rd/PageIndicatorView;

    invoke-static {v0}, Lcom/rd/PageIndicatorView;->access$100(Lcom/rd/PageIndicatorView;)Lcom/rd/IndicatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setIdle(Z)V

    .line 882
    iget-object v0, p0, Lcom/rd/PageIndicatorView$2;->this$0:Lcom/rd/PageIndicatorView;

    invoke-static {v0}, Lcom/rd/PageIndicatorView;->access$200(Lcom/rd/PageIndicatorView;)V

    return-void
.end method
