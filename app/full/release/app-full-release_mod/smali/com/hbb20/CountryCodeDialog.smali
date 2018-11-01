.class Lcom/hbb20/CountryCodeDialog;
.super Ljava/lang/Object;
.source "CountryCodeDialog.java"


# static fields
.field private static final sCursorDrawableField:Ljava/lang/reflect/Field;

.field private static final sCursorDrawableResourceField:Ljava/lang/reflect/Field;

.field private static final sEditorField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    :try_start_0
    const-class v2, Landroid/widget/TextView;

    const-string v3, "mCursorDrawableRes"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 44
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 47
    const-class v3, Landroid/widget/TextView;

    move-object v4, v1

    goto :goto_0

    .line 49
    :cond_0
    const-class v3, Landroid/widget/TextView;

    const-string v4, "mEditor"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 50
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_0
    :try_start_3
    const-string v5, "mCursorDrawable"

    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 54
    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v0, 0x0

    goto :goto_3

    :catch_0
    :goto_1
    move-object v3, v1

    goto :goto_3

    :catch_1
    move-object v4, v3

    goto :goto_1

    :catch_2
    move-object v3, v1

    goto :goto_2

    :catch_3
    move-object v2, v1

    move-object v3, v2

    :goto_2
    move-object v4, v3

    :catch_4
    :goto_3
    if-eqz v0, :cond_1

    .line 59
    sput-object v1, Lcom/hbb20/CountryCodeDialog;->sEditorField:Ljava/lang/reflect/Field;

    .line 60
    sput-object v1, Lcom/hbb20/CountryCodeDialog;->sCursorDrawableField:Ljava/lang/reflect/Field;

    .line 61
    sput-object v1, Lcom/hbb20/CountryCodeDialog;->sCursorDrawableResourceField:Ljava/lang/reflect/Field;

    goto :goto_4

    .line 63
    :cond_1
    sput-object v4, Lcom/hbb20/CountryCodeDialog;->sEditorField:Ljava/lang/reflect/Field;

    .line 64
    sput-object v3, Lcom/hbb20/CountryCodeDialog;->sCursorDrawableField:Ljava/lang/reflect/Field;

    .line 65
    sput-object v2, Lcom/hbb20/CountryCodeDialog;->sCursorDrawableResourceField:Ljava/lang/reflect/Field;

    :goto_4
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/hbb20/CountryCodeDialog;->hideKeyboard(Landroid/content/Context;)V

    return-void
.end method

.method private static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 286
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static hideKeyboard(Landroid/content/Context;)V
    .locals 2

    .line 255
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 256
    check-cast p0, Landroid/app/Activity;

    const-string v0, "input_method"

    .line 257
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 262
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 264
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public static openCountryCodeDialog(Lcom/hbb20/CountryCodePicker;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, v0}, Lcom/hbb20/CountryCodeDialog;->openCountryCodeDialog(Lcom/hbb20/CountryCodePicker;Ljava/lang/String;)V

    return-void
.end method

.method public static openCountryCodeDialog(Lcom/hbb20/CountryCodePicker;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 76
    new-instance v13, Landroid/app/Dialog;

    invoke-direct {v13, v12}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->refreshCustomMasterList()V

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->refreshPreferredCountries()V

    .line 79
    invoke-static {v12, v10}, Lcom/hbb20/CCPCountry;->getCustomMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    .line 80
    invoke-virtual {v13, v15}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 81
    invoke-virtual {v13}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/hbb20/R$layout;->layout_picker_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->isSearchAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->isDialogKeyboardAutoPopup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v13}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v13}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 92
    :goto_0
    sget v1, Lcom/hbb20/R$id;->recycler_countryDialog:I

    invoke-virtual {v13, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/support/v7/widget/RecyclerView;

    .line 93
    sget v1, Lcom/hbb20/R$id;->textView_title:I

    invoke-virtual {v13, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 94
    sget v2, Lcom/hbb20/R$id;->rl_query_holder:I

    invoke-virtual {v13, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 95
    sget v2, Lcom/hbb20/R$id;->img_clear_query:I

    invoke-virtual {v13, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    .line 96
    sget v2, Lcom/hbb20/R$id;->editText_search:I

    invoke-virtual {v13, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    .line 97
    sget v2, Lcom/hbb20/R$id;->textView_noresult:I

    invoke-virtual {v13, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    .line 98
    sget v2, Lcom/hbb20/R$id;->rl_holder:I

    invoke-virtual {v13, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 99
    sget v3, Lcom/hbb20/R$id;->img_dismiss:I

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 104
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v4

    const/16 v15, -0x63

    if-eq v4, v15, :cond_1

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v15

    invoke-virtual {v7, v4, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v15

    invoke-virtual {v6, v4, v15}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v15

    invoke-virtual {v1, v4, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 116
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogBackgroundColor()I

    move-result v4

    if-eqz v4, :cond_3

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogBackgroundColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 125
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->isShowCloseIcon()Z

    move-result v2

    const/16 v15, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 126
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    new-instance v2, Lcom/hbb20/CountryCodeDialog$1;

    invoke-direct {v2, v13}, Lcom/hbb20/CountryCodeDialog$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 134
    :cond_4
    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getCcpDialogShowTitle()Z

    move-result v2

    if-nez v2, :cond_5

    .line 139
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTextColor()I

    move-result v2

    if-eqz v2, :cond_6

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTextColor()I

    move-result v2

    .line 145
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 146
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 147
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setTextColor(I)V

    const/16 v3, 0x64

    .line 150
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v15

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v3, v4, v15, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 155
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogSearchEditTextTintColor()I

    move-result v2

    if-eqz v2, :cond_7

    .line 156
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_7

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogSearchEditTextTintColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogSearchEditTextTintColor()I

    move-result v2

    invoke-static {v6, v2}, Lcom/hbb20/CountryCodeDialog;->setCursorColor(Landroid/widget/EditText;I)V

    .line 164
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getSearchHintText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getNoResultFoundText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->isSearchAllowed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 170
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    .line 171
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 172
    invoke-virtual {v9, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    :cond_8
    new-instance v15, Lcom/hbb20/CountryCodeAdapter;

    move-object v1, v15

    move-object v2, v12

    move-object v3, v14

    const/16 v16, 0x0

    move-object v4, v10

    move-object/from16 v17, v8

    move-object v8, v13

    move-object/from16 v18, v14

    move-object v14, v9

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/hbb20/CountryCodeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker;Landroid/widget/RelativeLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/widget/ImageView;)V

    .line 176
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, v12}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 177
    invoke-virtual {v14, v15}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 180
    sget v1, Lcom/hbb20/R$id;->fastscroll:I

    invoke-virtual {v13, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 181
    invoke-virtual {v1, v14}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->isShowFastScroller()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerBubbleColor()I

    move-result v2

    if-eqz v2, :cond_9

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerBubbleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setBubbleColor(I)V

    .line 187
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerHandleColor()I

    move-result v2

    if-eqz v2, :cond_a

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerHandleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setHandleColor(I)V

    .line 191
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerBubbleTextAppearance()I

    move-result v2

    if-eqz v2, :cond_c

    .line 193
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerBubbleTextAppearance()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setBubbleTextAppearance(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 195
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_b
    const/16 v2, 0x8

    .line 200
    invoke-virtual {v1, v2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setVisibility(I)V

    .line 203
    :cond_c
    :goto_3
    new-instance v1, Lcom/hbb20/CountryCodeDialog$2;

    invoke-direct {v1, v12, v10}, Lcom/hbb20/CountryCodeDialog$2;-><init>(Landroid/content/Context;Lcom/hbb20/CountryCodePicker;)V

    invoke-virtual {v13, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 213
    new-instance v1, Lcom/hbb20/CountryCodeDialog$3;

    invoke-direct {v1, v12, v10}, Lcom/hbb20/CountryCodeDialog$3;-><init>(Landroid/content/Context;Lcom/hbb20/CountryCodePicker;)V

    invoke-virtual {v13, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    if-eqz v11, :cond_11

    .line 226
    iget-object v1, v10, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v15, v16

    :cond_d
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hbb20/CCPCountry;

    .line 227
    iget-object v2, v2, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v15, 0x1

    goto :goto_4

    :cond_e
    if-nez v15, :cond_11

    .line 236
    iget-object v1, v10, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 237
    iget-object v1, v10, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v4, v1, 0x1

    goto :goto_5

    :cond_f
    move/from16 v4, v16

    :goto_5
    move/from16 v2, v16

    move-object/from16 v1, v18

    .line 239
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 240
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hbb20/CCPCountry;

    iget-object v3, v3, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    add-int/2addr v2, v4

    .line 241
    invoke-virtual {v14, v2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_7

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 248
    :cond_11
    :goto_7
    invoke-virtual {v13}, Landroid/app/Dialog;->show()V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogEventsListener()Lcom/hbb20/CountryCodePicker$DialogEventsListener;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogEventsListener()Lcom/hbb20/CountryCodePicker$DialogEventsListener;

    move-result-object v1

    invoke-interface {v1, v13}, Lcom/hbb20/CountryCodePicker$DialogEventsListener;->onCcpDialogOpen(Landroid/app/Dialog;)V

    :cond_12
    return-void
.end method

.method static setCursorColor(Landroid/widget/EditText;I)V
    .locals 3

    .line 269
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->sCursorDrawableField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/hbb20/CountryCodeDialog;->sCursorDrawableResourceField:Ljava/lang/reflect/Field;

    .line 274
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 273
    invoke-static {v0, v1}, Lcom/hbb20/CountryCodeDialog;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 275
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 276
    sget-object p1, Lcom/hbb20/CountryCodeDialog;->sCursorDrawableField:Ljava/lang/reflect/Field;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/hbb20/CountryCodeDialog;->sEditorField:Ljava/lang/reflect/Field;

    .line 277
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 276
    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
