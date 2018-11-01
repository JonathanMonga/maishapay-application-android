.class public Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;
.super Ljava/lang/Object;
.source "Iconics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/iconics/Iconics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconicsBuilderView"
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

.field private view:Landroid/widget/TextView;

.field private withStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private withStylesFor:Ljava/util/HashMap;
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/TextView;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mikepenz/iconics/typeface/ITypeface;",
            ">;",
            "Landroid/widget/TextView;",
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;>;)V"
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->ctx:Landroid/content/Context;

    .line 266
    iput-object p2, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->fonts:Ljava/util/List;

    .line 267
    iput-object p3, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->view:Landroid/widget/TextView;

    .line 268
    iput-object p4, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->withStyles:Ljava/util/List;

    .line 269
    iput-object p5, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->withStylesFor:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public build()V
    .locals 6

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 274
    iget-object v1, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->fonts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/iconics/typeface/ITypeface;

    .line 275
    invoke-interface {v2}, Lcom/mikepenz/iconics/typeface/ITypeface;->getMappingPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->view:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->view:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spanned;

    iget-object v4, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->withStyles:Ljava/util/List;

    iget-object v5, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->withStylesFor:Ljava/util/HashMap;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/mikepenz/iconics/Iconics;->style(Landroid/content/Context;Ljava/util/HashMap;Landroid/text/Spanned;Ljava/util/List;Ljava/util/HashMap;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->view:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->ctx:Landroid/content/Context;

    new-instance v3, Landroid/text/SpannableString;

    iget-object v4, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->view:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->withStyles:Ljava/util/List;

    iget-object v5, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->withStylesFor:Ljava/util/HashMap;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/mikepenz/iconics/Iconics;->style(Landroid/content/Context;Ljava/util/HashMap;Landroid/text/Spanned;Ljava/util/List;Ljava/util/HashMap;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :goto_1
    iget-object v0, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->view:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->view:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_2
    return-void
.end method
