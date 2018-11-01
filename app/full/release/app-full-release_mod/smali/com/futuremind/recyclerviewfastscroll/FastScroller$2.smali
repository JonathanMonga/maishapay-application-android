.class Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuremind/recyclerviewfastscroll/FastScroller;->initHandleMovement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;


# direct methods
.method constructor <init>(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 189
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->requestDisallowInterceptTouchEvent(Z)V

    .line 190
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v0, :cond_2

    .line 198
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1, p2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$302(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Z)Z

    .line 199
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$100(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$200(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->onHandleReleased()V

    :cond_1
    return v0

    :cond_2
    return p2

    .line 191
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$100(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$200(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->onHandleGrabbed()V

    .line 192
    :cond_4
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$302(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Z)Z

    .line 193
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1, p2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$400(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Landroid/view/MotionEvent;)F

    move-result p1

    .line 194
    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {p2, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setScrollerPosition(F)V

    .line 195
    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p2, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$500(Lcom/futuremind/recyclerviewfastscroll/FastScroller;F)V

    return v0
.end method
