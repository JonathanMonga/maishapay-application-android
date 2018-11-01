.class Lcom/afollestad/materialdialogs/DefaultRvAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DefaultRvAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;,
        Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;

.field private final dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private final itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field private final layout:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 31
    iput p2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->layout:I

    .line 32
    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    return-void
.end method

.method static synthetic access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->callback:Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;

    return-object p0
.end method

.method private isRTL()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    return v1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getBuilder()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private setupGravity(Landroid/view/ViewGroup;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 121
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 122
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/GravityEnum;->getGravityInt()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 125
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->isRTL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 133
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 135
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 136
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 137
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    .line 138
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 134
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 140
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v0, v1, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 148
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 151
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 152
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 153
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    .line 154
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 150
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;

    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->onBindViewHolder(Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;I)V
    .locals 8

    .line 48
    iget-object v0, p1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->itemView:Landroid/view/View;

    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->disabledIndices:[Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->isIn(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemColor:I

    const v3, 0x3ecccccd    # 0.4f

    .line 52
    invoke-static {v2, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->adjustAlpha(IF)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemColor:I

    .line 54
    :goto_0
    iget-object v3, p1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->itemView:Landroid/view/View;

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 56
    sget-object v3, Lcom/afollestad/materialdialogs/DefaultRvAdapter$1;->$SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType:[I

    iget-object v4, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    invoke-virtual {v4}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    goto :goto_4

    .line 74
    :pswitch_0
    iget-object v3, p1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->control:Landroid/widget/CompoundButton;

    check-cast v3, Landroid/widget/CheckBox;

    .line 75
    iget-object v6, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v6, v6, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 76
    iget-object v7, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->choiceWidgetColor:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_1

    .line 77
    iget-object v7, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->choiceWidgetColor:Landroid/content/res/ColorStateList;

    invoke-static {v3, v7}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/CheckBox;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 79
    :cond_1
    iget-object v7, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-static {v3, v7}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/CheckBox;I)V

    .line 81
    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    xor-int/2addr v1, v5

    .line 82
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_4

    .line 60
    :pswitch_1
    iget-object v3, p1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->control:Landroid/widget/CompoundButton;

    check-cast v3, Landroid/widget/RadioButton;

    .line 61
    iget-object v6, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v6, v6, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v6, v6, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    if-ne v6, p2, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v4

    .line 62
    :goto_2
    iget-object v7, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->choiceWidgetColor:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_3

    .line 63
    iget-object v7, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->choiceWidgetColor:Landroid/content/res/ColorStateList;

    invoke-static {v3, v7}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/RadioButton;Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 65
    :cond_3
    iget-object v7, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-static {v3, v7}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/RadioButton;I)V

    .line 67
    :goto_3
    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    xor-int/2addr v1, v5

    .line 68
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 87
    :goto_4
    iget-object v1, p1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v3, v3, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v3, v3, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, p1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 91
    move-object p1, v0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->setupGravity(Landroid/view/ViewGroup;)V

    .line 93
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemIds:[I

    if-eqz v1, :cond_5

    .line 94
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemIds:[I

    array-length v1, v1

    if-ge p2, v1, :cond_4

    .line 95
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemIds:[I

    aget p2, v1, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    goto :goto_5

    :cond_4
    const/4 p2, -0x1

    .line 97
    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    .line 101
    :cond_5
    :goto_5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_7

    .line 103
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_7

    .line 105
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/CompoundButton;

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 106
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 107
    :cond_6
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/CompoundButton;

    if-eqz p2, :cond_7

    .line 108
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/MaterialDialog;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 43
    new-instance p2, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;

    invoke-direct {p2, p1, p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;-><init>(Landroid/view/View;Lcom/afollestad/materialdialogs/DefaultRvAdapter;)V

    return-object p2
.end method

.method setCallback(Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->callback:Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;

    return-void
.end method
