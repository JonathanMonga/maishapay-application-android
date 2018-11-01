.class public Lcom/mikepenz/iconics/context/IconicsLayoutInflater2;
.super Ljava/lang/Object;
.source "IconicsLayoutInflater2.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field private appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

.field private final mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatDelegate;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mikepenz/iconics/context/IconicsLayoutInflater2;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    .line 17
    new-instance p1, Lcom/mikepenz/iconics/context/IconicsFactory;

    invoke-direct {p1}, Lcom/mikepenz/iconics/context/IconicsFactory;-><init>()V

    iput-object p1, p0, Lcom/mikepenz/iconics/context/IconicsLayoutInflater2;->mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/mikepenz/iconics/context/IconicsLayoutInflater2;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegate;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/mikepenz/iconics/context/IconicsLayoutInflater2;->mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

    invoke-virtual {p2, p1, p3, p4}, Lcom/mikepenz/iconics/context/IconicsFactory;->onViewCreated(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/mikepenz/iconics/context/IconicsLayoutInflater2;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegate;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/mikepenz/iconics/context/IconicsLayoutInflater2;->mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mikepenz/iconics/context/IconicsFactory;->onViewCreated(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
