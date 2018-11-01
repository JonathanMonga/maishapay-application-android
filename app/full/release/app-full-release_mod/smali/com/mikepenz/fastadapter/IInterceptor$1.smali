.class final Lcom/mikepenz/fastadapter/IInterceptor$1;
.super Ljava/lang/Object;
.source "IInterceptor.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/IInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IInterceptor<",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItem;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic intercept(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/IInterceptor$1;->intercept(Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    return-object p1
.end method
