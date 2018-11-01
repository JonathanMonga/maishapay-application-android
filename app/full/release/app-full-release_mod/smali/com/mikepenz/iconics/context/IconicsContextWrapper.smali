.class public Lcom/mikepenz/iconics/context/IconicsContextWrapper;
.super Landroid/content/ContextWrapper;
.source "IconicsContextWrapper.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;
    .locals 1

    .line 21
    new-instance v0, Lcom/mikepenz/iconics/context/IconicsContextWrapper;

    invoke-direct {v0, p0}, Lcom/mikepenz/iconics/context/IconicsContextWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 26
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, "layout_inflater"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object p1, p0, Lcom/mikepenz/iconics/context/IconicsContextWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lcom/mikepenz/iconics/context/InternalLayoutInflater;

    invoke-virtual {p0}, Lcom/mikepenz/iconics/context/IconicsContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/mikepenz/iconics/context/InternalLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/mikepenz/iconics/context/IconicsContextWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/mikepenz/iconics/context/IconicsContextWrapper;->mInflater:Landroid/view/LayoutInflater;

    return-object p1

    .line 37
    :cond_1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
