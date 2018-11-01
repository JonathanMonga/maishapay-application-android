.class public Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;
.super Ljava/lang/Object;
.source "DrawerItemViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper$OnDrawerItemClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDivider:Z

.field private mDrawerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper$OnDrawerItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mDrawerItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mDivider:Z

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper$OnDrawerItemClickListener;

    .line 23
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;)Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper$OnDrawerItemClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper$OnDrawerItemClickListener;

    return-object p0
.end method


# virtual methods
.method public build()Landroid/view/View;
    .locals 6

    .line 54
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    iget-boolean v4, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mDivider:Z

    if-eqz v4, :cond_0

    .line 60
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 62
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mikepenz/materialize/util/UIUtils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 63
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_divider:I

    sget v3, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_divider:I

    invoke-static {v1, v2, v3}, Lcom/mikepenz/materialize/util/UIUtils;->getThemeColorFromAttrOrRes(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 65
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    .line 70
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->generateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 71
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    invoke-interface {v2}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mikepenz/materialize/util/UIUtils;->getSelectableBackgroundRes(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    new-instance v2, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper$1;

    invoke-direct {v2, p0}, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper$1;-><init>(Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public withDivider(Z)Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mDivider:Z

    return-object p0
.end method

.method public withDrawerItems(Ljava/util/ArrayList;)Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;)",
            "Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mDrawerItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public varargs withDrawerItems([Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mDrawerItems:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper$OnDrawerItemClickListener;)Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/util/DrawerItemViewHelper$OnDrawerItemClickListener;

    return-object p0
.end method
