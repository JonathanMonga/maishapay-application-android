.class public Lde/mateware/snacky/Snacky$Builder;
.super Ljava/lang/Object;
.source "Snacky.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mateware/snacky/Snacky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private actionClickListener:Landroid/view/View$OnClickListener;

.field private actionText:Ljava/lang/CharSequence;

.field private actionTextColor:Ljava/lang/Integer;

.field private actionTextColors:Landroid/content/res/ColorStateList;

.field private actionTextResId:I

.field private actionTextSize:Ljava/lang/Float;

.field private actionTextSizeUnit:Ljava/lang/Integer;

.field private actionTextTypefaceStyle:Ljava/lang/Integer;

.field private backgroundColor:Ljava/lang/Integer;

.field private centerText:Z

.field private duration:I

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconResId:I

.field private maxLines:I

.field private text:Ljava/lang/CharSequence;

.field private textColor:Ljava/lang/Integer;

.field private textColors:Landroid/content/res/ColorStateList;

.field private textResId:I

.field private textSize:Ljava/lang/Float;

.field private textSizeUnit:Ljava/lang/Integer;

.field private textTypefaceStyle:Ljava/lang/Integer;

.field private type:Lde/mateware/snacky/Snacky$Type;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->view:Landroid/view/View;

    .line 162
    sget-object v1, Lde/mateware/snacky/Snacky$Type;->DEFAULT:Lde/mateware/snacky/Snacky$Type;

    iput-object v1, p0, Lde/mateware/snacky/Snacky$Builder;->type:Lde/mateware/snacky/Snacky$Type;

    const/4 v1, -0x1

    .line 163
    iput v1, p0, Lde/mateware/snacky/Snacky$Builder;->duration:I

    const-string v1, ""

    .line 164
    iput-object v1, p0, Lde/mateware/snacky/Snacky$Builder;->text:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 165
    iput v1, p0, Lde/mateware/snacky/Snacky$Builder;->textResId:I

    .line 166
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->textColor:Ljava/lang/Integer;

    .line 167
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->textColors:Landroid/content/res/ColorStateList;

    .line 168
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->textSizeUnit:Ljava/lang/Integer;

    .line 169
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->textSize:Ljava/lang/Float;

    .line 170
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->textTypefaceStyle:Ljava/lang/Integer;

    .line 171
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextSizeUnit:Ljava/lang/Integer;

    .line 172
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextSize:Ljava/lang/Float;

    const-string v2, ""

    .line 173
    iput-object v2, p0, Lde/mateware/snacky/Snacky$Builder;->actionText:Ljava/lang/CharSequence;

    .line 174
    iput v1, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextResId:I

    .line 175
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextTypefaceStyle:Ljava/lang/Integer;

    .line 176
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->actionClickListener:Landroid/view/View$OnClickListener;

    .line 177
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextColor:Ljava/lang/Integer;

    .line 178
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextColors:Landroid/content/res/ColorStateList;

    const v2, 0x7fffffff

    .line 179
    iput v2, p0, Lde/mateware/snacky/Snacky$Builder;->maxLines:I

    .line 180
    iput-boolean v1, p0, Lde/mateware/snacky/Snacky$Builder;->centerText:Z

    .line 181
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->icon:Landroid/graphics/drawable/Drawable;

    .line 182
    iput v1, p0, Lde/mateware/snacky/Snacky$Builder;->iconResId:I

    .line 183
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->backgroundColor:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lde/mateware/snacky/Snacky$1;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lde/mateware/snacky/Snacky$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lde/mateware/snacky/Snacky$Builder;)Landroid/view/View;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1000(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextSizeUnit:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1100(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextTypefaceStyle:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1200(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Float;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->textSize:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$1300(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->textSizeUnit:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1400(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->textTypefaceStyle:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1500(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->textColor:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1502(Lde/mateware/snacky/Snacky$Builder;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 159
    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->textColor:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1600(Lde/mateware/snacky/Snacky$Builder;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->textColors:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$1700(Lde/mateware/snacky/Snacky$Builder;)I
    .locals 0

    .line 159
    iget p0, p0, Lde/mateware/snacky/Snacky$Builder;->maxLines:I

    return p0
.end method

.method static synthetic access$1800(Lde/mateware/snacky/Snacky$Builder;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lde/mateware/snacky/Snacky$Builder;->centerText:Z

    return p0
.end method

.method static synthetic access$1900(Lde/mateware/snacky/Snacky$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1902(Lde/mateware/snacky/Snacky$Builder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 159
    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$200(Lde/mateware/snacky/Snacky$Builder;)I
    .locals 0

    .line 159
    iget p0, p0, Lde/mateware/snacky/Snacky$Builder;->duration:I

    return p0
.end method

.method static synthetic access$300(Lde/mateware/snacky/Snacky$Builder;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->actionClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$302(Lde/mateware/snacky/Snacky$Builder;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 159
    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->actionClickListener:Landroid/view/View$OnClickListener;

    return-object p1
.end method

.method static synthetic access$400(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->actionText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$500(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextColor:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$502(Lde/mateware/snacky/Snacky$Builder;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 159
    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextColor:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$600(Lde/mateware/snacky/Snacky$Builder;)Lde/mateware/snacky/Snacky$Type;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->type:Lde/mateware/snacky/Snacky$Type;

    return-object p0
.end method

.method static synthetic access$700(Lde/mateware/snacky/Snacky$Builder;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextColors:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$800(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->backgroundColor:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$802(Lde/mateware/snacky/Snacky$Builder;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 159
    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->backgroundColor:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$900(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Float;
    .locals 0

    .line 159
    iget-object p0, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextSize:Ljava/lang/Float;

    return-object p0
.end method

.method private make()Landroid/support/design/widget/Snackbar;
    .locals 2

    .line 335
    iget-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->view:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Snacky Error: you must set Activtyt or view before make a snack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    iget v0, p0, Lde/mateware/snacky/Snacky$Builder;->textResId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lde/mateware/snacky/Snacky$Builder;->textResId:I

    .line 337
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->text:Ljava/lang/CharSequence;

    .line 338
    :cond_1
    iget v0, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextResId:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextResId:I

    .line 339
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->actionText:Ljava/lang/CharSequence;

    .line 340
    :cond_2
    iget v0, p0, Lde/mateware/snacky/Snacky$Builder;->iconResId:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lde/mateware/snacky/Snacky$Builder;->iconResId:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->icon:Landroid/graphics/drawable/Drawable;

    .line 341
    :cond_3
    new-instance v0, Lde/mateware/snacky/Snacky;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lde/mateware/snacky/Snacky;-><init>(Lde/mateware/snacky/Snacky$Builder;Lde/mateware/snacky/Snacky$1;)V

    invoke-static {v0}, Lde/mateware/snacky/Snacky;->access$2200(Lde/mateware/snacky/Snacky;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Landroid/support/design/widget/Snackbar;
    .locals 1

    .line 311
    invoke-direct {p0}, Lde/mateware/snacky/Snacky$Builder;->make()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public centerText()Lde/mateware/snacky/Snacky$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lde/mateware/snacky/Snacky$Builder;->centerText:Z

    return-object p0
.end method

.method public error()Landroid/support/design/widget/Snackbar;
    .locals 1

    .line 330
    sget-object v0, Lde/mateware/snacky/Snacky$Type;->ERROR:Lde/mateware/snacky/Snacky$Type;

    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->type:Lde/mateware/snacky/Snacky$Type;

    .line 331
    invoke-direct {p0}, Lde/mateware/snacky/Snacky$Builder;->make()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public info()Landroid/support/design/widget/Snackbar;
    .locals 1

    .line 320
    sget-object v0, Lde/mateware/snacky/Snacky$Type;->INFO:Lde/mateware/snacky/Snacky$Type;

    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->type:Lde/mateware/snacky/Snacky$Type;

    .line 321
    invoke-direct {p0}, Lde/mateware/snacky/Snacky$Builder;->make()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setActionClickListener(Landroid/view/View$OnClickListener;)Lde/mateware/snacky/Snacky$Builder;
    .locals 0

    .line 281
    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->actionClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setActionText(I)Lde/mateware/snacky/Snacky$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 253
    iput p1, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextResId:I

    return-object p0
.end method

.method public setActionText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 258
    iput v0, p0, Lde/mateware/snacky/Snacky$Builder;->textResId:I

    .line 259
    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->actionText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setActionTextColor(I)Lde/mateware/snacky/Snacky$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 248
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setActionTextColor(Landroid/content/res/ColorStateList;)Lde/mateware/snacky/Snacky$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextColor:Ljava/lang/Integer;

    .line 243
    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextColors:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public setActionTextSize(F)Lde/mateware/snacky/Snacky$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextSizeUnit:Ljava/lang/Integer;

    .line 265
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextSize:Ljava/lang/Float;

    return-object p0
.end method

.method public setActionTextSize(IF)Lde/mateware/snacky/Snacky$Builder;
    .locals 0

    .line 270
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextSizeUnit:Ljava/lang/Integer;

    .line 271
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextSize:Ljava/lang/Float;

    return-object p0
.end method

.method public setActionTextTypefaceStyle(I)Lde/mateware/snacky/Snacky$Builder;
    .locals 0

    .line 276
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->actionTextTypefaceStyle:Ljava/lang/Integer;

    return-object p0
.end method

.method public setActivty(Landroid/app/Activity;)Lde/mateware/snacky/Snacky$Builder;
    .locals 1

    const v0, 0x1020002

    .line 189
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundColor(I)Lde/mateware/snacky/Snacky$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 306
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->backgroundColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDuration(I)Lde/mateware/snacky/Snacky$Builder;
    .locals 0

    .line 291
    iput p1, p0, Lde/mateware/snacky/Snacky$Builder;->duration:I

    return-object p0
.end method

.method public setIcon(I)Lde/mateware/snacky/Snacky$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 296
    iput p1, p0, Lde/mateware/snacky/Snacky$Builder;->iconResId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lde/mateware/snacky/Snacky$Builder;
    .locals 0

    .line 301
    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setMaxLines(I)Lde/mateware/snacky/Snacky$Builder;
    .locals 0

    .line 286
    iput p1, p0, Lde/mateware/snacky/Snacky$Builder;->maxLines:I

    return-object p0
.end method

.method public setText(I)Lde/mateware/snacky/Snacky$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 198
    iput p1, p0, Lde/mateware/snacky/Snacky$Builder;->textResId:I

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lde/mateware/snacky/Snacky$Builder;->textResId:I

    .line 204
    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTextColor(I)Lde/mateware/snacky/Snacky$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 209
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->textColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)Lde/mateware/snacky/Snacky$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->textColor:Ljava/lang/Integer;

    .line 215
    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->textColors:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public setTextSize(F)Lde/mateware/snacky/Snacky$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->textSizeUnit:Ljava/lang/Integer;

    .line 221
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->textSize:Ljava/lang/Float;

    return-object p0
.end method

.method public setTextSize(IF)Lde/mateware/snacky/Snacky$Builder;
    .locals 0

    .line 226
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->textSizeUnit:Ljava/lang/Integer;

    .line 227
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->textSize:Ljava/lang/Float;

    return-object p0
.end method

.method public setTextTypefaceStyle(I)Lde/mateware/snacky/Snacky$Builder;
    .locals 0

    .line 232
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->textTypefaceStyle:Ljava/lang/Integer;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;
    .locals 0

    .line 193
    iput-object p1, p0, Lde/mateware/snacky/Snacky$Builder;->view:Landroid/view/View;

    return-object p0
.end method

.method public success()Landroid/support/design/widget/Snackbar;
    .locals 1

    .line 315
    sget-object v0, Lde/mateware/snacky/Snacky$Type;->SUCCESS:Lde/mateware/snacky/Snacky$Type;

    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->type:Lde/mateware/snacky/Snacky$Type;

    .line 316
    invoke-direct {p0}, Lde/mateware/snacky/Snacky$Builder;->make()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public warning()Landroid/support/design/widget/Snackbar;
    .locals 1

    .line 325
    sget-object v0, Lde/mateware/snacky/Snacky$Type;->WARNING:Lde/mateware/snacky/Snacky$Type;

    iput-object v0, p0, Lde/mateware/snacky/Snacky$Builder;->type:Lde/mateware/snacky/Snacky$Type;

    .line 326
    invoke-direct {p0}, Lde/mateware/snacky/Snacky$Builder;->make()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method
