.class Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory2;
.super Ljava/lang/Object;
.source "InternalLayoutInflater.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/iconics/context/InternalLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrapperFactory2"
.end annotation


# instance fields
.field protected final mFactory2:Landroid/view/LayoutInflater$Factory2;

.field protected final mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory2;Lcom/mikepenz/iconics/context/IconicsFactory;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory2;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    .line 211
    iput-object p2, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory2;->mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory2;->mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

    iget-object v1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory2;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    .line 224
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    .line 223
    invoke-virtual {v0, p1, p3, p4}, Lcom/mikepenz/iconics/context/IconicsFactory;->onViewCreated(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory2;->mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

    iget-object v1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory2;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    .line 217
    invoke-interface {v1, p1, p2, p3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    .line 216
    invoke-virtual {v0, p1, p2, p3}, Lcom/mikepenz/iconics/context/IconicsFactory;->onViewCreated(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
