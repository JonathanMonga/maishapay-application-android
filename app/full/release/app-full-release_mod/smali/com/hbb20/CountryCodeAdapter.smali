.class Lcom/hbb20/CountryCodeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CountryCodeAdapter.java"

# interfaces
.implements Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;",
        ">;",
        "Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;"
    }
.end annotation


# instance fields
.field codePicker:Lcom/hbb20/CountryCodePicker;

.field context:Landroid/content/Context;

.field dialog:Landroid/app/Dialog;

.field editText_search:Landroid/widget/EditText;

.field filteredCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation
.end field

.field imgClearQuery:Landroid/widget/ImageView;

.field inflater:Landroid/view/LayoutInflater;

.field masterCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation
.end field

.field preferredCountriesCount:I

.field rlQueryHolder:Landroid/widget/RelativeLayout;

.field textView_noResult:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker;Landroid/widget/RelativeLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/widget/ImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;",
            "Lcom/hbb20/CountryCodePicker;",
            "Landroid/widget/RelativeLayout;",
            "Landroid/widget/EditText;",
            "Landroid/widget/TextView;",
            "Landroid/app/Dialog;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    iput-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->masterCountries:Ljava/util/List;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    .line 41
    iput-object p1, p0, Lcom/hbb20/CountryCodeAdapter;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/hbb20/CountryCodeAdapter;->masterCountries:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    .line 44
    iput-object p7, p0, Lcom/hbb20/CountryCodeAdapter;->dialog:Landroid/app/Dialog;

    .line 45
    iput-object p6, p0, Lcom/hbb20/CountryCodeAdapter;->textView_noResult:Landroid/widget/TextView;

    .line 46
    iput-object p5, p0, Lcom/hbb20/CountryCodeAdapter;->editText_search:Landroid/widget/EditText;

    .line 47
    iput-object p4, p0, Lcom/hbb20/CountryCodeAdapter;->rlQueryHolder:Landroid/widget/RelativeLayout;

    .line 48
    iput-object p8, p0, Lcom/hbb20/CountryCodeAdapter;->imgClearQuery:Landroid/widget/ImageView;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodeAdapter;->inflater:Landroid/view/LayoutInflater;

    const-string p1, ""

    .line 50
    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodeAdapter;->getFilteredCountries(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    .line 51
    invoke-direct {p0}, Lcom/hbb20/CountryCodeAdapter;->setSearchBar()V

    return-void
.end method

.method static synthetic access$000(Lcom/hbb20/CountryCodeAdapter;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodeAdapter;->applyQuery(Ljava/lang/String;)V

    return-void
.end method

.method private applyQuery(Ljava/lang/String;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->textView_noResult:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 144
    :cond_0
    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodeAdapter;->getFilteredCountries(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    .line 146
    iget-object p1, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/hbb20/CountryCodeAdapter;->textView_noResult:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/hbb20/CountryCodeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getFilteredCountries(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 154
    iput v1, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    .line 155
    iget-object v1, p0, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    iget-object v1, v1, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    iget-object v1, v1, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    iget-object v1, v1, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hbb20/CCPCountry;

    .line 157
    invoke-virtual {v2, p1}, Lcom/hbb20/CCPCountry;->isEligibleForQuery(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget v2, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    goto :goto_0

    .line 163
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 165
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget v1, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/hbb20/CountryCodeAdapter;->masterCountries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hbb20/CCPCountry;

    .line 171
    invoke-virtual {v2, p1}, Lcom/hbb20/CCPCountry;->isEligibleForQuery(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private setQueryClearListener()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->imgClearQuery:Landroid/widget/ImageView;

    new-instance v1, Lcom/hbb20/CountryCodeAdapter$1;

    invoke-direct {v1, p0}, Lcom/hbb20/CountryCodeAdapter$1;-><init>(Lcom/hbb20/CountryCodeAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setSearchBar()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->isSearchAllowed()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->imgClearQuery:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    invoke-direct {p0}, Lcom/hbb20/CountryCodeAdapter;->setTextWatcher()V

    .line 58
    invoke-direct {p0}, Lcom/hbb20/CountryCodeAdapter;->setQueryClearListener()V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->rlQueryHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setTextWatcher()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->editText_search:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->editText_search:Landroid/widget/EditText;

    new-instance v1, Lcom/hbb20/CountryCodeAdapter$2;

    invoke-direct {v1, p0}, Lcom/hbb20/CountryCodeAdapter$2;-><init>(Lcom/hbb20/CountryCodeAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->editText_search:Landroid/widget/EditText;

    new-instance v1, Lcom/hbb20/CountryCodeAdapter$3;

    invoke-direct {v1, p0}, Lcom/hbb20/CountryCodeAdapter$3;-><init>(Lcom/hbb20/CountryCodeAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/CCPCountry;

    .line 216
    iget v1, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    if-le v1, p1, :cond_0

    const-string p1, "\u2605"

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {v0}, Lcom/hbb20/CCPCountry;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "\u263a"

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/hbb20/CountryCodeAdapter;->onBindViewHolder(Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;I)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/CCPCountry;

    invoke-virtual {p1, v0}, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->setCountry(Lcom/hbb20/CCPCountry;)V

    .line 188
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->getMainView()Landroid/widget/RelativeLayout;

    move-result-object p1

    new-instance v0, Lcom/hbb20/CountryCodeAdapter$4;

    invoke-direct {v0, p0, p2}, Lcom/hbb20/CountryCodeAdapter$4;-><init>(Lcom/hbb20/CountryCodeAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->getMainView()Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/hbb20/CountryCodeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;
    .locals 2

    .line 180
    iget-object p2, p0, Lcom/hbb20/CountryCodeAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/hbb20/R$layout;->layout_recycler_country_tile:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 181
    new-instance p2, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;-><init>(Lcom/hbb20/CountryCodeAdapter;Landroid/view/View;)V

    return-object p2
.end method
