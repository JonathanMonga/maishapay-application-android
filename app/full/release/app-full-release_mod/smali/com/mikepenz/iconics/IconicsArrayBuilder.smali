.class public Lcom/mikepenz/iconics/IconicsArrayBuilder;
.super Ljava/lang/Object;
.source "IconicsArrayBuilder.java"


# instance fields
.field private mIconBase:Lcom/mikepenz/iconics/IconicsDrawable;

.field private mIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mikepenz/iconics/IconicsDrawable;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    .line 18
    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIconBase:Lcom/mikepenz/iconics/IconicsDrawable;

    return-void
.end method


# virtual methods
.method public add(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/iconics/IconicsArrayBuilder;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/Typeface;

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Ljava/lang/Character;)Lcom/mikepenz/iconics/IconicsArrayBuilder;
    .locals 1

    .line 31
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/iconics/IconicsArrayBuilder;->add(Ljava/lang/Character;Landroid/graphics/Typeface;)Lcom/mikepenz/iconics/IconicsArrayBuilder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Character;Landroid/graphics/Typeface;)Lcom/mikepenz/iconics/IconicsArrayBuilder;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/mikepenz/iconics/IconicsArrayBuilder;
    .locals 1

    .line 27
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/iconics/IconicsArrayBuilder;->add(Ljava/lang/String;Landroid/graphics/Typeface;)Lcom/mikepenz/iconics/IconicsArrayBuilder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Landroid/graphics/Typeface;)Lcom/mikepenz/iconics/IconicsArrayBuilder;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()[Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/mikepenz/iconics/IconicsDrawable;

    const/4 v1, 0x0

    .line 47
    :goto_0
    iget-object v2, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 48
    iget-object v2, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 49
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v3, v3, Lcom/mikepenz/iconics/typeface/IIcon;

    if-eqz v3, :cond_0

    .line 50
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIconBase:Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v3}, Lcom/mikepenz/iconics/IconicsDrawable;->clone()Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v3

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/mikepenz/iconics/typeface/IIcon;

    invoke-virtual {v3, v2}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 51
    :cond_0
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Character;

    if-eqz v3, :cond_1

    .line 52
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIconBase:Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v3}, Lcom/mikepenz/iconics/IconicsDrawable;->clone()Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v3

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Character;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v2}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Ljava/lang/Character;Landroid/graphics/Typeface;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 53
    :cond_1
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 54
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIconBase:Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v3}, Lcom/mikepenz/iconics/IconicsDrawable;->clone()Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v3

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v2}, Lcom/mikepenz/iconics/IconicsDrawable;->iconText(Ljava/lang/String;Landroid/graphics/Typeface;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
