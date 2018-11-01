.class public Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;
.source "SectionDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/model/interfaces/Nameable;
.implements Lcom/mikepenz/materialdrawer/model/interfaces/Typefaceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem<",
        "Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;",
        "Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;",
        ">;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/Nameable<",
        "Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;",
        ">;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/Typefaceable<",
        "Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;",
        ">;"
    }
.end annotation


# instance fields
.field private divider:Z

.field private name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

.field private textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->divider:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->typeface:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->bindView(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public bindView(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;Ljava/util/List;)V
    .locals 5

    .line 107
    invoke-super {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 109
    iget-object p2, p1, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 112
    iget-object v0, p1, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 115
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 116
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->access$000(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 119
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->access$100(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->getTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object v2

    sget v3, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_secondary_text:I

    sget v4, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_secondary_text:I

    invoke-static {v2, p2, v3, v4}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->color(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->getName()Lcom/mikepenz/materialdrawer/holder/StringHolder;

    move-result-object v0

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->access$100(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mikepenz/materialdrawer/holder/StringHolder;->applyTo(Lcom/mikepenz/materialize/holder/StringHolder;Landroid/widget/TextView;)V

    .line 125
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->access$100(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->hasDivider()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->access$200(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->access$200(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :goto_0
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->access$200(Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_divider:I

    sget v2, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_divider:I

    invoke-static {p2, v1, v2}, Lcom/mikepenz/materialize/util/UIUtils;->getThemeColorFromAttrOrRes(Landroid/content/Context;II)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 140
    iget-object p1, p1, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p0, p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    return-void
.end method

.method public getLayoutRes()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 97
    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_item_section:I

    return v0
.end method

.method public getName()Lcom/mikepenz/materialdrawer/holder/StringHolder;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object v0
.end method

.method public getTextColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 91
    sget v0, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_item_section:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public bridge synthetic getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getViewHolder(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;
    .locals 2

    .line 145
    new-instance v0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$ViewHolder;-><init>(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/SectionDrawerItem$1;)V

    return-object v0
.end method

.method public hasDivider()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->divider:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public withDivider(Z)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->divider:Z

    return-object p0
.end method

.method public withName(I)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 43
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withName(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;
    .locals 1

    .line 38
    new-instance v0, Lcom/mikepenz/materialdrawer/holder/StringHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/holder/StringHolder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->name:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method

.method public bridge synthetic withName(I)Ljava/lang/Object;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 23
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->withName(I)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withName(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->withName(Lcom/mikepenz/materialdrawer/holder/StringHolder;)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->withName(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public withTextColor(I)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;
    .locals 0

    .line 53
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColor(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withTextColorRes(I)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;
    .locals 0

    .line 58
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->fromColorRes(I)Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->textColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object p0
.end method

.method public withTypeface(Landroid/graphics/Typeface;)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->typeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public bridge synthetic withTypeface(Landroid/graphics/Typeface;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->withTypeface(Landroid/graphics/Typeface;)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;

    move-result-object p1

    return-object p1
.end method
