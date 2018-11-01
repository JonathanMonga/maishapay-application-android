.class public Lcom/fxn769/Numpad;
.super Landroid/widget/FrameLayout;
.source "Numpad.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private BackgroundResource:I

.field private FontFaceString:Ljava/lang/String;

.field private GridBackgroundColor:I

.field private GridThickness:I

.field private GridVisible:Z

.field private ImageResource:I

.field private TextColor:I

.field private TextLengthLimit:I

.field private TextSize:F

.field private context:Landroid/content/Context;

.field private delete:Landroid/widget/ImageView;

.field private delete_layout:Landroid/widget/FrameLayout;

.field private digits:Ljava/lang/String;

.field private line:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private num:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private textGetListner:Lcom/fxn769/TextGetListner;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fxn769/Numpad;->num:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/fxn769/Numpad;->digits:Ljava/lang/String;

    const/4 v0, 0x6

    .line 28
    iput v0, p0, Lcom/fxn769/Numpad;->TextLengthLimit:I

    const/high16 v0, 0x41400000    # 12.0f

    .line 29
    iput v0, p0, Lcom/fxn769/Numpad;->TextSize:F

    const/high16 v0, -0x1000000

    .line 30
    iput v0, p0, Lcom/fxn769/Numpad;->TextColor:I

    .line 31
    sget v0, Lcom/fxn769/R$drawable;->numpad_background:I

    iput v0, p0, Lcom/fxn769/Numpad;->BackgroundResource:I

    .line 32
    sget v0, Lcom/fxn769/R$drawable;->ic_backspace:I

    iput v0, p0, Lcom/fxn769/Numpad;->ImageResource:I

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/fxn769/Numpad;->GridVisible:Z

    const v0, -0x777778

    .line 34
    iput v0, p0, Lcom/fxn769/Numpad;->GridBackgroundColor:I

    const/4 v0, 0x3

    .line 35
    iput v0, p0, Lcom/fxn769/Numpad;->GridThickness:I

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/fxn769/Numpad;->FontFaceString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/fxn769/Numpad;->initialise(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fxn769/Numpad;->num:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/fxn769/Numpad;->digits:Ljava/lang/String;

    const/4 v0, 0x6

    .line 28
    iput v0, p0, Lcom/fxn769/Numpad;->TextLengthLimit:I

    const/high16 v0, 0x41400000    # 12.0f

    .line 29
    iput v0, p0, Lcom/fxn769/Numpad;->TextSize:F

    const/high16 v0, -0x1000000

    .line 30
    iput v0, p0, Lcom/fxn769/Numpad;->TextColor:I

    .line 31
    sget v0, Lcom/fxn769/R$drawable;->numpad_background:I

    iput v0, p0, Lcom/fxn769/Numpad;->BackgroundResource:I

    .line 32
    sget v0, Lcom/fxn769/R$drawable;->ic_backspace:I

    iput v0, p0, Lcom/fxn769/Numpad;->ImageResource:I

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/fxn769/Numpad;->GridVisible:Z

    const v0, -0x777778

    .line 34
    iput v0, p0, Lcom/fxn769/Numpad;->GridBackgroundColor:I

    const/4 v0, 0x3

    .line 35
    iput v0, p0, Lcom/fxn769/Numpad;->GridThickness:I

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/fxn769/Numpad;->FontFaceString:Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/fxn769/Numpad;->initialise(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/fxn769/Numpad;->num:Ljava/util/ArrayList;

    .line 26
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    const-string p3, ""

    .line 27
    iput-object p3, p0, Lcom/fxn769/Numpad;->digits:Ljava/lang/String;

    const/4 p3, 0x6

    .line 28
    iput p3, p0, Lcom/fxn769/Numpad;->TextLengthLimit:I

    const/high16 p3, 0x41400000    # 12.0f

    .line 29
    iput p3, p0, Lcom/fxn769/Numpad;->TextSize:F

    const/high16 p3, -0x1000000

    .line 30
    iput p3, p0, Lcom/fxn769/Numpad;->TextColor:I

    .line 31
    sget p3, Lcom/fxn769/R$drawable;->numpad_background:I

    iput p3, p0, Lcom/fxn769/Numpad;->BackgroundResource:I

    .line 32
    sget p3, Lcom/fxn769/R$drawable;->ic_backspace:I

    iput p3, p0, Lcom/fxn769/Numpad;->ImageResource:I

    const/4 p3, 0x1

    .line 33
    iput-boolean p3, p0, Lcom/fxn769/Numpad;->GridVisible:Z

    const p3, -0x777778

    .line 34
    iput p3, p0, Lcom/fxn769/Numpad;->GridBackgroundColor:I

    const/4 p3, 0x3

    .line 35
    iput p3, p0, Lcom/fxn769/Numpad;->GridThickness:I

    const-string p3, ""

    .line 36
    iput-object p3, p0, Lcom/fxn769/Numpad;->FontFaceString:Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/fxn769/Numpad;->initialise(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initialise(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 83
    iput-object p1, p0, Lcom/fxn769/Numpad;->context:Landroid/content/Context;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/fxn769/R$styleable;->Numpad:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 85
    sget v0, Lcom/fxn769/R$styleable;->Numpad_numpad_digits:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fxn769/Numpad;->digits:Ljava/lang/String;

    .line 86
    sget v0, Lcom/fxn769/R$styleable;->Numpad_numpad_text_limit:I

    const/4 v1, 0x5

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/fxn769/Numpad;->TextLengthLimit:I

    .line 87
    sget v0, Lcom/fxn769/R$styleable;->Numpad_numpad_text_size:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/fxn769/Numpad;->TextSize:F

    .line 88
    sget v0, Lcom/fxn769/R$styleable;->Numpad_numpad_text_color:I

    const/high16 v1, -0x1000000

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/fxn769/Numpad;->TextColor:I

    .line 89
    sget v0, Lcom/fxn769/R$styleable;->Numpad_numpad_background_resource:I

    sget v1, Lcom/fxn769/R$drawable;->numpad_background:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/fxn769/Numpad;->BackgroundResource:I

    .line 90
    sget v0, Lcom/fxn769/R$styleable;->Numpad_numpad_image_resource:I

    sget v1, Lcom/fxn769/R$drawable;->ic_backspace:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/fxn769/Numpad;->ImageResource:I

    .line 91
    sget v0, Lcom/fxn769/R$styleable;->Numpad_numpad_grid_visible:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fxn769/Numpad;->GridVisible:Z

    .line 92
    sget v0, Lcom/fxn769/R$styleable;->Numpad_numpad_grid_background_color:I

    const v1, -0x777778

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/fxn769/Numpad;->GridBackgroundColor:I

    .line 93
    sget v0, Lcom/fxn769/R$styleable;->Numpad_numpad_grid_line_thickness:I

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/fxn769/Numpad;->GridThickness:I

    .line 94
    sget v0, Lcom/fxn769/R$styleable;->Numpad_numpad_fontpath:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/fxn769/Numpad;->FontFaceString:Ljava/lang/String;

    .line 95
    iget-object p2, p0, Lcom/fxn769/Numpad;->digits:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    .line 96
    iput-object p2, p0, Lcom/fxn769/Numpad;->digits:Ljava/lang/String;

    .line 99
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/fxn769/R$layout;->numlock_view:I

    invoke-virtual {p2, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 100
    iget-object v0, p0, Lcom/fxn769/Numpad;->num:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->one:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/fxn769/Numpad;->num:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->two:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/fxn769/Numpad;->num:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->three:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/fxn769/Numpad;->num:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->four:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/fxn769/Numpad;->num:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->five:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/fxn769/Numpad;->num:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->six:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/fxn769/Numpad;->num:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->seven:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/fxn769/Numpad;->num:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->eight:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/fxn769/Numpad;->num:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->nine:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/fxn769/Numpad;->num:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->zero:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->line1:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->line2:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->line3:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->line4:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->line5:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->line6:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->line7:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->line8:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->line9:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->line10:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    sget v1, Lcom/fxn769/R$id;->line11:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget v0, Lcom/fxn769/R$id;->delete:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fxn769/Numpad;->delete:Landroid/widget/ImageView;

    .line 122
    sget v0, Lcom/fxn769/R$id;->delete_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/fxn769/Numpad;->delete_layout:Landroid/widget/FrameLayout;

    .line 123
    iget-object v0, p0, Lcom/fxn769/Numpad;->FontFaceString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 124
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/fxn769/Numpad;->typeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iget-object v0, p0, Lcom/fxn769/Numpad;->FontFaceString:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/fxn769/Numpad;->typeface:Landroid/graphics/Typeface;

    .line 128
    :goto_0
    invoke-direct {p0}, Lcom/fxn769/Numpad;->setup()V

    .line 129
    invoke-virtual {p0, p2}, Lcom/fxn769/Numpad;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setup()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/fxn769/Numpad;->num:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 135
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget v2, p0, Lcom/fxn769/Numpad;->TextSize:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 137
    iget v2, p0, Lcom/fxn769/Numpad;->TextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget v2, p0, Lcom/fxn769/Numpad;->BackgroundResource:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 139
    iget-object v2, p0, Lcom/fxn769/Numpad;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/fxn769/Numpad;->GridVisible:Z

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 144
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget v2, p0, Lcom/fxn769/Numpad;->GridBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_1

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/fxn769/Numpad;->GridThickness:I

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/fxn769/Numpad;->GridThickness:I

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/fxn769/Numpad;->GridThickness:I

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/fxn769/Numpad;->GridThickness:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/fxn769/Numpad;->GridThickness:I

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/fxn769/Numpad;->GridThickness:I

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/fxn769/Numpad;->GridThickness:I

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/fxn769/Numpad;->GridThickness:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/fxn769/Numpad;->GridThickness:I

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/fxn769/Numpad;->GridThickness:I

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v0, p0, Lcom/fxn769/Numpad;->line:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/fxn769/Numpad;->GridThickness:I

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/fxn769/Numpad;->delete_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/fxn769/Numpad;->delete_layout:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/fxn769/Numpad;->BackgroundResource:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 162
    iget-object v0, p0, Lcom/fxn769/Numpad;->delete:Landroid/widget/ImageView;

    iget v1, p0, Lcom/fxn769/Numpad;->ImageResource:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public getBackgroundResource()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/fxn769/Numpad;->BackgroundResource:I

    return v0
.end method

.method public getDigits()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/fxn769/Numpad;->digits:Ljava/lang/String;

    return-object v0
.end method

.method public getGridBackgroundColor()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/fxn769/Numpad;->GridBackgroundColor:I

    return v0
.end method

.method public getGridThickness()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/fxn769/Numpad;->GridThickness:I

    return v0
.end method

.method public getImageResource()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/fxn769/Numpad;->ImageResource:I

    return v0
.end method

.method public getImageResourceView()Landroid/widget/ImageView;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/fxn769/Numpad;->delete:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/fxn769/Numpad;->TextColor:I

    return v0
.end method

.method public getTextGetListner()Lcom/fxn769/TextGetListner;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/fxn769/Numpad;->textGetListner:Lcom/fxn769/TextGetListner;

    return-object v0
.end method

.method public getTextLengthLimit()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/fxn769/Numpad;->TextLengthLimit:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 180
    iget v0, p0, Lcom/fxn769/Numpad;->TextSize:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/fxn769/Numpad;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isGridVisible()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/fxn769/Numpad;->GridVisible:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 252
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fxn769/Numpad;->digits:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/fxn769/Numpad;->TextLengthLimit:I

    if-ge v0, v1, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fxn769/Numpad;->digits:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fxn769/Numpad;->digits:Ljava/lang/String;

    goto :goto_0

    .line 254
    :cond_0
    instance-of p1, p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fxn769/Numpad;->digits:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 255
    iget-object p1, p0, Lcom/fxn769/Numpad;->digits:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fxn769/Numpad;->digits:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fxn769/Numpad;->digits:Ljava/lang/String;

    .line 257
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/fxn769/Numpad;->textGetListner:Lcom/fxn769/TextGetListner;

    iget-object v0, p0, Lcom/fxn769/Numpad;->digits:Ljava/lang/String;

    iget v1, p0, Lcom/fxn769/Numpad;->TextLengthLimit:I

    iget-object v2, p0, Lcom/fxn769/Numpad;->digits:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Lcom/fxn769/TextGetListner;->onTextChange(Ljava/lang/String;I)V

    return-void
.end method

.method public setBackgroundRes(I)Lcom/fxn769/Numpad;
    .locals 0

    .line 64
    iput p1, p0, Lcom/fxn769/Numpad;->BackgroundResource:I

    .line 65
    invoke-direct {p0}, Lcom/fxn769/Numpad;->setup()V

    return-object p0
.end method

.method public setFontFace(Ljava/lang/String;)Lcom/fxn769/Numpad;
    .locals 1

    .line 76
    iput-object p1, p0, Lcom/fxn769/Numpad;->FontFaceString:Ljava/lang/String;

    .line 77
    iget-object p1, p0, Lcom/fxn769/Numpad;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iget-object v0, p0, Lcom/fxn769/Numpad;->FontFaceString:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/fxn769/Numpad;->typeface:Landroid/graphics/Typeface;

    .line 78
    invoke-direct {p0}, Lcom/fxn769/Numpad;->setup()V

    return-object p0
.end method

.method public setGridBackgroundColor(I)Lcom/fxn769/Numpad;
    .locals 0

    .line 222
    iput p1, p0, Lcom/fxn769/Numpad;->GridBackgroundColor:I

    .line 223
    invoke-direct {p0}, Lcom/fxn769/Numpad;->setup()V

    return-object p0
.end method

.method public setGridThickness(I)Lcom/fxn769/Numpad;
    .locals 0

    .line 232
    iput p1, p0, Lcom/fxn769/Numpad;->GridThickness:I

    .line 233
    invoke-direct {p0}, Lcom/fxn769/Numpad;->setup()V

    return-object p0
.end method

.method public setGridVisible(Z)Lcom/fxn769/Numpad;
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/fxn769/Numpad;->GridVisible:Z

    .line 213
    invoke-direct {p0}, Lcom/fxn769/Numpad;->setup()V

    return-object p0
.end method

.method public setImageRes(I)Lcom/fxn769/Numpad;
    .locals 0

    .line 70
    iput p1, p0, Lcom/fxn769/Numpad;->ImageResource:I

    .line 71
    invoke-direct {p0}, Lcom/fxn769/Numpad;->setup()V

    return-object p0
.end method

.method public setOnTextChangeListner(Lcom/fxn769/TextGetListner;)Lcom/fxn769/Numpad;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/fxn769/Numpad;->textGetListner:Lcom/fxn769/TextGetListner;

    .line 59
    invoke-direct {p0}, Lcom/fxn769/Numpad;->setup()V

    return-object p0
.end method

.method public setTextColor(I)Lcom/fxn769/Numpad;
    .locals 0

    .line 194
    iput p1, p0, Lcom/fxn769/Numpad;->TextColor:I

    .line 195
    invoke-direct {p0}, Lcom/fxn769/Numpad;->setup()V

    return-object p0
.end method

.method public setTextLengthLimit(I)Lcom/fxn769/Numpad;
    .locals 0

    .line 174
    iput p1, p0, Lcom/fxn769/Numpad;->TextLengthLimit:I

    .line 175
    invoke-direct {p0}, Lcom/fxn769/Numpad;->setup()V

    return-object p0
.end method

.method public setTextSize(I)Lcom/fxn769/Numpad;
    .locals 0

    int-to-float p1, p1

    .line 184
    iput p1, p0, Lcom/fxn769/Numpad;->TextSize:F

    .line 185
    invoke-direct {p0}, Lcom/fxn769/Numpad;->setup()V

    return-object p0
.end method
