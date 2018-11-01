.class Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager$MyHandler;
.super Landroid/os/Handler;
.source "AutoScrollViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;


# direct methods
.method private constructor <init>(Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager$MyHandler;->this$0:Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager$1;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager$MyHandler;-><init>(Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 216
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 218
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager$MyHandler;->this$0:Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;

    invoke-virtual {p1}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->scrollOnce()V

    .line 221
    iget-object p1, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager$MyHandler;->this$0:Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;

    iget-object v0, p0, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager$MyHandler;->this$0:Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;

    invoke-static {v0}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->access$100(Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;->access$200(Lcn/trinea/android/view/autoscrollviewpager/AutoScrollViewPager;J)V

    :goto_0
    return-void
.end method
