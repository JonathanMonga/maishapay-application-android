.class final Lcom/mikepenz/fastadapter/IAdapterNotifier$1;
.super Ljava/lang/Object;
.source "IAdapterNotifier.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IAdapterNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/IAdapterNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Lcom/mikepenz/fastadapter/FastAdapter;III)Z
    .locals 0

    if-le p2, p3, :cond_1

    if-lez p3, :cond_0

    .line 15
    invoke-virtual {p1, p4, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged(II)V

    :cond_0
    add-int/2addr p4, p3

    sub-int/2addr p2, p3

    .line 17
    invoke-virtual {p1, p4, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeInserted(II)V

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    .line 19
    invoke-virtual {p1, p4, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged(II)V

    if-ge p2, p3, :cond_4

    add-int/2addr p4, p2

    sub-int/2addr p3, p2

    .line 21
    invoke-virtual {p1, p4, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 24
    invoke-virtual {p1, p4, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
