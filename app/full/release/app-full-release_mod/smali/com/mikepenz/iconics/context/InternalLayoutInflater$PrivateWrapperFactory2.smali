.class Lcom/mikepenz/iconics/context/InternalLayoutInflater$PrivateWrapperFactory2;
.super Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory2;
.source "InternalLayoutInflater.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/iconics/context/InternalLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivateWrapperFactory2"
.end annotation


# instance fields
.field private final mInflater:Lcom/mikepenz/iconics/context/InternalLayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory2;Lcom/mikepenz/iconics/context/InternalLayoutInflater;Lcom/mikepenz/iconics/context/IconicsFactory;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1, p3}, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory2;-><init>(Landroid/view/LayoutInflater$Factory2;Lcom/mikepenz/iconics/context/IconicsFactory;)V

    .line 240
    iput-object p2, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$PrivateWrapperFactory2;->mInflater:Lcom/mikepenz/iconics/context/InternalLayoutInflater;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .line 245
    iget-object v0, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$PrivateWrapperFactory2;->mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

    iget-object v1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$PrivateWrapperFactory2;->mInflater:Lcom/mikepenz/iconics/context/InternalLayoutInflater;

    iget-object v2, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$PrivateWrapperFactory2;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    .line 248
    invoke-interface {v2, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 246
    invoke-static/range {v1 .. v6}, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->access$000(Lcom/mikepenz/iconics/context/InternalLayoutInflater;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    .line 245
    invoke-virtual {v0, p1, p3, p4}, Lcom/mikepenz/iconics/context/IconicsFactory;->onViewCreated(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
