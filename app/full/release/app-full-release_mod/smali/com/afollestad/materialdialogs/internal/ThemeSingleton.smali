.class public Lcom/afollestad/materialdialogs/internal/ThemeSingleton;
.super Ljava/lang/Object;
.source "ThemeSingleton.java"


# static fields
.field private static singleton:Lcom/afollestad/materialdialogs/internal/ThemeSingleton;


# instance fields
.field public backgroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public btnSelectorNegative:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public btnSelectorNeutral:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public btnSelectorPositive:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public btnSelectorStacked:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public contentColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public darkTheme:Z

.field public dividerColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public icon:Landroid/graphics/drawable/Drawable;

.field public itemColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public linkColor:Landroid/content/res/ColorStateList;

.field public listSelector:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public negativeColor:Landroid/content/res/ColorStateList;

.field public neutralColor:Landroid/content/res/ColorStateList;

.field public positiveColor:Landroid/content/res/ColorStateList;

.field public titleColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public widgetColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->darkTheme:Z

    .line 17
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->titleColor:I

    .line 18
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->contentColor:I

    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->positiveColor:Landroid/content/res/ColorStateList;

    .line 20
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->neutralColor:Landroid/content/res/ColorStateList;

    .line 21
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->negativeColor:Landroid/content/res/ColorStateList;

    .line 22
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->widgetColor:I

    .line 23
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->itemColor:I

    .line 24
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->icon:Landroid/graphics/drawable/Drawable;

    .line 25
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->backgroundColor:I

    .line 26
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->dividerColor:I

    .line 27
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->linkColor:Landroid/content/res/ColorStateList;

    .line 28
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->listSelector:I

    .line 29
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnSelectorStacked:I

    .line 30
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnSelectorPositive:I

    .line 31
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnSelectorNeutral:I

    .line 32
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnSelectorNegative:I

    .line 33
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 34
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 35
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 36
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 37
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    return-void
.end method

.method public static get()Lcom/afollestad/materialdialogs/internal/ThemeSingleton;
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->get(Z)Lcom/afollestad/materialdialogs/internal/ThemeSingleton;

    move-result-object v0

    return-object v0
.end method

.method public static get(Z)Lcom/afollestad/materialdialogs/internal/ThemeSingleton;
    .locals 1

    .line 40
    sget-object v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->singleton:Lcom/afollestad/materialdialogs/internal/ThemeSingleton;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 41
    new-instance p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;-><init>()V

    sput-object p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->singleton:Lcom/afollestad/materialdialogs/internal/ThemeSingleton;

    .line 43
    :cond_0
    sget-object p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->singleton:Lcom/afollestad/materialdialogs/internal/ThemeSingleton;

    return-object p0
.end method
