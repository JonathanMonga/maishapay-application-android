.class public interface abstract Lcom/mikepenz/fastadapter/IInterceptor;
.super Ljava/lang/Object;
.source "IInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Element:",
        "Ljava/lang/Object;",
        "Item:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/mikepenz/fastadapter/IInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IInterceptor<",
            "Lcom/mikepenz/fastadapter/IItem;",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/mikepenz/fastadapter/IInterceptor$1;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/IInterceptor$1;-><init>()V

    sput-object v0, Lcom/mikepenz/fastadapter/IInterceptor;->DEFAULT:Lcom/mikepenz/fastadapter/IInterceptor;

    return-void
.end method


# virtual methods
.method public abstract intercept(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElement;)TItem;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
