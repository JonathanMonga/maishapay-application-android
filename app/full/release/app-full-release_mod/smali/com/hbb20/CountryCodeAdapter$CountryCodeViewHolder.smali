.class Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CountryCodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/CountryCodeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CountryCodeViewHolder"
.end annotation


# instance fields
.field divider:Landroid/view/View;

.field imageViewFlag:Landroid/widget/ImageView;

.field linearFlagHolder:Landroid/widget/LinearLayout;

.field relativeLayout_main:Landroid/widget/RelativeLayout;

.field textView_code:Landroid/widget/TextView;

.field textView_name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/hbb20/CountryCodeAdapter;


# direct methods
.method public constructor <init>(Lcom/hbb20/CountryCodeAdapter;Landroid/view/View;)V
    .locals 2

    .line 232
    iput-object p1, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->this$0:Lcom/hbb20/CountryCodeAdapter;

    .line 233
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 234
    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->relativeLayout_main:Landroid/widget/RelativeLayout;

    .line 235
    iget-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->relativeLayout_main:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hbb20/R$id;->textView_countryName:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_name:Landroid/widget/TextView;

    .line 236
    iget-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->relativeLayout_main:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hbb20/R$id;->textView_code:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_code:Landroid/widget/TextView;

    .line 237
    iget-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->relativeLayout_main:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hbb20/R$id;->image_flag:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->imageViewFlag:Landroid/widget/ImageView;

    .line 238
    iget-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->relativeLayout_main:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hbb20/R$id;->linear_flag_holder:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->linearFlagHolder:Landroid/widget/LinearLayout;

    .line 239
    iget-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->relativeLayout_main:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hbb20/R$id;->preferenceDivider:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->divider:Landroid/view/View;

    .line 241
    iget-object p2, p1, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p2}, Lcom/hbb20/CountryCodePicker;->getDialogTextColor()I

    move-result p2

    if-eqz p2, :cond_0

    .line 242
    iget-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_name:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getDialogTextColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_code:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getDialogTextColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->divider:Landroid/view/View;

    iget-object v0, p1, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getDialogTextColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 248
    :cond_0
    :try_start_0
    iget-object p2, p1, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p2}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 249
    iget-object p2, p1, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p2}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result p2

    const/16 v0, -0x63

    if-eq p2, v0, :cond_1

    .line 250
    iget-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_code:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p1, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 251
    iget-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_name:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    iget-object p1, p1, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_code:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 254
    iget-object p2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_name:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 258
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getMainView()Landroid/widget/RelativeLayout;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->relativeLayout_main:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public setCountry(Lcom/hbb20/CCPCountry;)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_3

    .line 264
    iget-object v2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_name:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_code:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object v2, v2, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v2}, Lcom/hbb20/CountryCodePicker;->isCcpDialogShowPhoneCode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_code:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_code:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    :goto_0
    iget-object v2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object v2, v2, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v2}, Lcom/hbb20/CountryCodePicker;->getCcpDialogShowNameCode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_name:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_1
    iget-object v2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_code:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v2, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object v2, v2, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v2}, Lcom/hbb20/CountryCodePicker;->getCcpDialogShowFlag()Z

    move-result v2

    if-nez v2, :cond_2

    .line 281
    iget-object p1, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->linearFlagHolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 283
    :cond_2
    iget-object v1, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->linearFlagHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->imageViewFlag:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getFlagID()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 287
    :cond_3
    iget-object p1, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->divider:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object p1, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_name:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object p1, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->textView_code:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->linearFlagHolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method
