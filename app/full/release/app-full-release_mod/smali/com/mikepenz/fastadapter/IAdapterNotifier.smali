.class public interface abstract Lcom/mikepenz/fastadapter/IAdapterNotifier;
.super Ljava/lang/Object;
.source "IAdapterNotifier.java"


# static fields
.field public static final DEFAULT:Lcom/mikepenz/fastadapter/IAdapterNotifier;

.field public static final LEGACY_DEFAULT:Lcom/mikepenz/fastadapter/IAdapterNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/mikepenz/fastadapter/IAdapterNotifier$1;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/IAdapterNotifier$1;-><init>()V

    sput-object v0, Lcom/mikepenz/fastadapter/IAdapterNotifier;->DEFAULT:Lcom/mikepenz/fastadapter/IAdapterNotifier;

    .line 33
    new-instance v0, Lcom/mikepenz/fastadapter/IAdapterNotifier$2;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/IAdapterNotifier$2;-><init>()V

    sput-object v0, Lcom/mikepenz/fastadapter/IAdapterNotifier;->LEGACY_DEFAULT:Lcom/mikepenz/fastadapter/IAdapterNotifier;

    return-void
.end method


# virtual methods
.method public abstract notify(Lcom/mikepenz/fastadapter/FastAdapter;III)Z
.end method
