.class public Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScrimInsetsFrameLayout.java"

# interfaces
.implements Lcom/mikepenz/materialize/view/IScrimInsetsLayout;


# instance fields
.field private mInsetForeground:Landroid/graphics/drawable/Drawable;

.field private mInsets:Landroid/graphics/Rect;

.field private mOnInsetsCallback:Lcom/mikepenz/materialize/view/OnInsetsCallback;

.field private mSystemUIVisible:Z

.field private mTempRect:Landroid/graphics/Rect;

.field private mTintNavigationBar:Z

.field private mTintStatusBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintStatusBar:Z

    .line 47
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintNavigationBar:Z

    .line 48
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mSystemUIVisible:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, v0, v1}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintStatusBar:Z

    .line 47
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintNavigationBar:Z

    .line 48
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mSystemUIVisible:Z

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintStatusBar:Z

    .line 47
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintNavigationBar:Z

    .line 48
    iput-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mSystemUIVisible:Z

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$002(Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;)Lcom/mikepenz/materialize/view/OnInsetsCallback;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mOnInsetsCallback:Lcom/mikepenz/materialize/view/OnInsetsCallback;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 66
    sget-object v0, Lcom/mikepenz/materialize/R$styleable;->ScrimInsetsView:[I

    sget v1, Lcom/mikepenz/materialize/R$style;->Widget_Materialize_ScrimInsetsRelativeLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    sget p2, Lcom/mikepenz/materialize/R$styleable;->ScrimInsetsView_siv_insetForeground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    .line 73
    new-instance p1, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout$1;

    invoke-direct {p1, p0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout$1;-><init>(Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;)V

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 96
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->getWidth()I

    move-result v0

    .line 99
    invoke-virtual {p0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->getHeight()I

    move-result v1

    .line 100
    iget-object v2, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 102
    invoke-virtual {p0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    iget-boolean v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mSystemUIVisible:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 106
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 107
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 108
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 112
    :cond_0
    iget-boolean v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintStatusBar:Z

    if-eqz v3, :cond_1

    .line 113
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 114
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 115
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    :cond_1
    iget-boolean v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintNavigationBar:Z

    if-eqz v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v1, v5

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 121
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 122
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 126
    :cond_2
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v1, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 127
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 128
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v0, v4

    iget-object v5, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v6

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 132
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 133
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 135
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public getInsetForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOnInsetsCallback()Lcom/mikepenz/materialize/view/OnInsetsCallback;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mOnInsetsCallback:Lcom/mikepenz/materialize/view/OnInsetsCallback;

    return-object v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public isSystemUIVisible()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mSystemUIVisible:Z

    return v0
.end method

.method public isTintNavigationBar()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintNavigationBar:Z

    return v0
.end method

.method public isTintStatusBar()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintStatusBar:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 141
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 142
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 149
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 150
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public setInsetForeground(I)V
    .locals 1

    .line 172
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setInsetForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnInsetsCallback(Lcom/mikepenz/materialize/view/OnInsetsCallback;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mOnInsetsCallback:Lcom/mikepenz/materialize/view/OnInsetsCallback;

    return-void
.end method

.method public setSystemUIVisible(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mSystemUIVisible:Z

    return-void
.end method

.method public setTintNavigationBar(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintNavigationBar:Z

    return-void
.end method

.method public setTintStatusBar(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->mTintStatusBar:Z

    return-void
.end method
