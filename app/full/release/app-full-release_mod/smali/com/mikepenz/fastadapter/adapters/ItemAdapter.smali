.class public Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
.super Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
        "TItem;TItem;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    sget-object v0, Lcom/mikepenz/fastadapter/IInterceptor;->DEFAULT:Lcom/mikepenz/fastadapter/IInterceptor;

    invoke-direct {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;-><init>(Lcom/mikepenz/fastadapter/IInterceptor;)V

    return-void
.end method

.method public static items()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">()",
            "Lcom/mikepenz/fastadapter/adapters/ItemAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    return-object v0
.end method
