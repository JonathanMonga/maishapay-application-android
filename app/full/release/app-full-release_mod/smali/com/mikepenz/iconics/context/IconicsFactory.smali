.class Lcom/mikepenz/iconics/context/IconicsFactory;
.super Ljava/lang/Object;
.source "IconicsFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    if-eqz p1, :cond_0

    .line 26
    sget v0, Lcom/mikepenz/iconics/core/R$id;->iconics_tag_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/mikepenz/iconics/context/IconicsFactory;->onViewCreatedInternal(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    sget p2, Lcom/mikepenz/iconics/core/R$id;->iconics_tag_id:I

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method onViewCreatedInternal(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 43
    :cond_0
    instance-of v0, p1, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v0, :cond_1

    .line 44
    invoke-static {p2, p3}, Lcom/mikepenz/iconics/context/IconicsAttrsApplier;->getIconicsDrawable(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 46
    check-cast p1, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 48
    :cond_1
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 50
    new-instance p3, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;

    invoke-direct {p3}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;-><init>()V

    invoke-virtual {p3, p2}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->ctx(Landroid/content/Context;)Lcom/mikepenz/iconics/Iconics$IconicsBuilder;

    move-result-object p2

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->on(Landroid/widget/TextView;)Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->build()V

    goto :goto_0

    .line 53
    :cond_2
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 55
    new-instance p3, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;

    invoke-direct {p3}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;-><init>()V

    invoke-virtual {p3, p2}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->ctx(Landroid/content/Context;)Lcom/mikepenz/iconics/Iconics$IconicsBuilder;

    move-result-object p3

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->on(Landroid/widget/TextView;)Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->build()V

    .line 57
    new-instance p3, Lcom/mikepenz/iconics/context/IconicsFactory$1;

    invoke-direct {p3, p0, p2}, Lcom/mikepenz/iconics/context/IconicsFactory$1;-><init>(Lcom/mikepenz/iconics/context/IconicsFactory;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 73
    :cond_3
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 74
    invoke-static {p2, p3}, Lcom/mikepenz/iconics/context/IconicsAttrsApplier;->getIconicsDrawable(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 76
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    return-void
.end method
