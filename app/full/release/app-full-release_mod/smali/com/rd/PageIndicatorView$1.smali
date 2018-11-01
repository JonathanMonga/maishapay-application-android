.class Lcom/rd/PageIndicatorView$1;
.super Landroid/database/DataSetObserver;
.source "PageIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rd/PageIndicatorView;->registerSetObserver()V
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

    .line 700
    iput-object p1, p0, Lcom/rd/PageIndicatorView$1;->this$0:Lcom/rd/PageIndicatorView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/rd/PageIndicatorView$1;->this$0:Lcom/rd/PageIndicatorView;

    invoke-static {v0}, Lcom/rd/PageIndicatorView;->access$000(Lcom/rd/PageIndicatorView;)V

    return-void
.end method
