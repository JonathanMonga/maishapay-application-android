.class public Lcom/mikepenz/iconics/Iconics$IconicsBuilder;
.super Ljava/lang/Object;
.source "Iconics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/iconics/Iconics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconicsBuilder"
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private fonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mikepenz/iconics/typeface/ITypeface;",
            ">;"
        }
    .end annotation
.end field

.field private styles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private stylesFor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->styles:Ljava/util/List;

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->stylesFor:Ljava/util/HashMap;

    .line 299
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->fonts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public ctx(Landroid/content/Context;)Lcom/mikepenz/iconics/Iconics$IconicsBuilder;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->ctx:Landroid/content/Context;

    return-object p0
.end method

.method public font(Lcom/mikepenz/iconics/typeface/ITypeface;)Lcom/mikepenz/iconics/Iconics$IconicsBuilder;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->fonts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public on(Landroid/text/Spanned;)Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;
    .locals 7

    .line 368
    new-instance v6, Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;

    iget-object v1, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->fonts:Ljava/util/List;

    iget-object v4, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->styles:Ljava/util/List;

    iget-object v5, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->stylesFor:Ljava/util/HashMap;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/text/Spanned;Ljava/util/List;Ljava/util/HashMap;)V

    return-object v6
.end method

.method public on(Ljava/lang/CharSequence;)Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;
    .locals 0

    .line 388
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->on(Ljava/lang/String;)Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;

    move-result-object p1

    return-object p1
.end method

.method public on(Ljava/lang/String;)Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;
    .locals 1

    .line 378
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->on(Landroid/text/Spanned;)Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;

    move-result-object p1

    return-object p1
.end method

.method public on(Ljava/lang/StringBuilder;)Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;
    .locals 0

    .line 398
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->on(Ljava/lang/String;)Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;

    move-result-object p1

    return-object p1
.end method

.method public on(Landroid/widget/Button;)Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;
    .locals 7

    .line 418
    new-instance v6, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;

    iget-object v1, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->fonts:Ljava/util/List;

    iget-object v4, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->styles:Ljava/util/List;

    iget-object v5, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->stylesFor:Ljava/util/HashMap;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/TextView;Ljava/util/List;Ljava/util/HashMap;)V

    return-object v6
.end method

.method public on(Landroid/widget/TextView;)Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;
    .locals 7

    .line 408
    new-instance v6, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;

    iget-object v1, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->fonts:Ljava/util/List;

    iget-object v4, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->styles:Ljava/util/List;

    iget-object v5, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->stylesFor:Ljava/util/HashMap;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/TextView;Ljava/util/List;Ljava/util/HashMap;)V

    return-object v6
.end method

.method public varargs style([Landroid/text/style/CharacterStyle;)Lcom/mikepenz/iconics/Iconics$IconicsBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 311
    array-length v0, p1

    if-lez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->styles:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public varargs styleFor(Lcom/mikepenz/iconics/typeface/IIcon;[Landroid/text/style/CharacterStyle;)Lcom/mikepenz/iconics/Iconics$IconicsBuilder;
    .locals 0

    .line 325
    invoke-interface {p1}, Lcom/mikepenz/iconics/typeface/IIcon;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->styleFor(Ljava/lang/String;[Landroid/text/style/CharacterStyle;)Lcom/mikepenz/iconics/Iconics$IconicsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs styleFor(Ljava/lang/String;[Landroid/text/style/CharacterStyle;)Lcom/mikepenz/iconics/Iconics$IconicsBuilder;
    .locals 4

    const-string v0, "-"

    const-string v1, "_"

    .line 336
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 338
    iget-object v0, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->stylesFor:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->stylesFor:Ljava/util/HashMap;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 342
    array-length v0, p2

    if-lez v0, :cond_1

    .line 343
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 344
    iget-object v3, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->stylesFor:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
