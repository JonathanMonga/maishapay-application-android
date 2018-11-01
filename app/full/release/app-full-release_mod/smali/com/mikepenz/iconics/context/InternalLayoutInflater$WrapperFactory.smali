.class Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory;
.super Ljava/lang/Object;
.source "InternalLayoutInflater.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/iconics/context/InternalLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrapperFactory"
.end annotation


# instance fields
.field private final mFactory:Landroid/view/LayoutInflater$Factory;

.field private final mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

.field private final mInflater:Lcom/mikepenz/iconics/context/InternalLayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory;Lcom/mikepenz/iconics/context/InternalLayoutInflater;Lcom/mikepenz/iconics/context/IconicsFactory;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 188
    iput-object p2, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory;->mInflater:Lcom/mikepenz/iconics/context/InternalLayoutInflater;

    .line 189
    iput-object p3, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory;->mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory;->mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

    iget-object v1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 195
    invoke-interface {v1, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    .line 194
    invoke-virtual {v0, p1, p2, p3}, Lcom/mikepenz/iconics/context/IconicsFactory;->onViewCreated(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
