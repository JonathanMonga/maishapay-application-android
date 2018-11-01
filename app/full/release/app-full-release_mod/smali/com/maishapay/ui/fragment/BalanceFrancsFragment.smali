.class public Lcom/maishapay/ui/fragment/BalanceFrancsFragment;
.super Landroid/support/v4/app/Fragment;
.source "BalanceFrancsFragment.java"


# static fields
.field private static final EXTRA_SOLDE_ENVOI:Ljava/lang/String; = "envoi"

.field private static final EXTRA_SOLDE_FRANCS:Ljava/lang/String; = "solde"

.field private static final EXTRA_SOLDE_RECU:Ljava/lang/String; = "recu"


# instance fields
.field mChart:Lcom/github/mikephil/charting/charts/PieChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900fa
    .end annotation
.end field

.field private mTfLight:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private generateCenterSpannableText()Landroid/text/SpannableString;
    .locals 4

    .line 152
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "solde"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Fc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 153
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3fd9999a    # 1.7f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static newInstance(III)Lcom/maishapay/ui/fragment/BalanceFrancsFragment;
    .locals 3

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "solde"

    .line 48
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "envoi"

    .line 49
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "recu"

    .line 50
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Solde franc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " Envoi : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " Recu :"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maishapay/util/LogCat;->e(Ljava/lang/String;)V

    .line 54
    new-instance p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;

    invoke-direct {p0}, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;-><init>()V

    .line 55
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private setData()V
    .locals 7

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-virtual {p0}, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "solde"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    .line 119
    new-instance v1, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {p0}, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "recu"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "recu"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    :goto_0
    const-string v4, "Re\u00e7u"

    invoke-direct {v1, v3, v4}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {p0}, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "envoi"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "envoi"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    :goto_1
    const-string v4, "Envoy\u00e9"

    invoke-direct {v1, v3, v4}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 122
    :cond_2
    new-instance v1, Lcom/github/mikephil/charting/data/PieEntry;

    const/high16 v3, 0x42c80000    # 100.0f

    const-string v4, "Dette"

    invoke-direct {v1, v3, v4}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :goto_2
    new-instance v1, Lcom/github/mikephil/charting/data/PieDataSet;

    const-string v3, "Solde Francs"

    invoke-direct {v1, v0, v3}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 127
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/PieDataSet;->setDrawIcons(Z)V

    const/high16 v3, 0x40400000    # 3.0f

    .line 129
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setSliceSpace(F)V

    .line 130
    new-instance v3, Lcom/github/mikephil/charting/utils/MPPointF;

    const/high16 v4, 0x42200000    # 40.0f

    invoke-direct {v3, v2, v4}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>(FF)V

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setIconsOffset(Lcom/github/mikephil/charting/utils/MPPointF;)V

    const/high16 v3, 0x40a00000    # 5.0f

    .line 131
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setSelectionShift(F)V

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    sget-object v4, Lcom/github/mikephil/charting/utils/ColorTemplate;->MATERIAL_COLORS:[I

    array-length v5, v4

    :goto_3
    if-ge v0, v5, :cond_3

    aget v6, v4, v0

    .line 136
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 138
    :cond_3
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors(Ljava/util/List;)V

    .line 139
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/PieDataSet;->setSelectionShift(F)V

    .line 141
    new-instance v0, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    .line 142
    new-instance v1, Lcom/github/mikephil/charting/formatter/PercentFormatter;

    invoke-direct {v1}, Lcom/github/mikephil/charting/formatter/PercentFormatter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/PieData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IValueFormatter;)V

    const/high16 v1, 0x41300000    # 11.0f

    .line 143
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/PieData;->setValueTextSize(F)V

    const/4 v1, -0x1

    .line 144
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/PieData;->setValueTextColor(I)V

    .line 145
    iget-object v1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mTfLight:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/PieData;->setValueTypeface(Landroid/graphics/Typeface;)V

    .line 146
    iget-object v1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 148
    iget-object v0, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0022

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 65
    invoke-static {}, Lcom/maishapay/app/MaishapayApplication;->getMaishapayContext()Lcom/maishapay/app/MaishapayApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/maishapay/app/MaishapayApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string p3, "fonts/Roboto-Light.ttf"

    invoke-static {p2, p3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mTfLight:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setUsePercentValues(Z)V

    .line 74
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 75
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, v2, v1, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setExtraOffsets(FFFF)V

    .line 77
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setDragDecelerationFrictionCoef(F)V

    .line 79
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    iget-object v1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mTfLight:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterTextTypeface(Landroid/graphics/Typeface;)V

    .line 80
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-direct {p0}, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->generateCenterSpannableText()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    .line 83
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleColor(I)V

    .line 85
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleColor(I)V

    .line 86
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v2, 0x6e

    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleAlpha(I)V

    .line 88
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v2, 0x42680000    # 58.0f

    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleRadius(F)V

    .line 89
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v2, 0x42740000    # 61.0f

    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleRadius(F)V

    .line 91
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawCenterText(Z)V

    .line 93
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationAngle(F)V

    .line 94
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationEnabled(Z)V

    .line 95
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setHighlightPerTapEnabled(Z)V

    .line 97
    invoke-direct {p0}, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->setData()V

    .line 99
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    sget-object p2, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInBack:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    const/16 v3, 0x578

    invoke-virtual {p1, v3, p2}, Lcom/github/mikephil/charting/charts/PieChart;->animateY(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V

    .line 101
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object p1

    .line 102
    sget-object p2, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/Legend;->setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V

    .line 103
    sget-object p2, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/Legend;->setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V

    .line 104
    sget-object p2, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/Legend;->setOrientation(Lcom/github/mikephil/charting/components/Legend$LegendOrientation;)V

    .line 105
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/components/Legend;->setDrawInside(Z)V

    const/high16 p2, 0x40e00000    # 7.0f

    .line 106
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/Legend;->setXEntrySpace(F)V

    .line 107
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/components/Legend;->setYEntrySpace(F)V

    .line 108
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/components/Legend;->setYOffset(F)V

    .line 110
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setEntryLabelColor(I)V

    .line 111
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    iget-object p2, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mTfLight:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setEntryLabelTypeface(Landroid/graphics/Typeface;)V

    .line 112
    iget-object p1, p0, Lcom/maishapay/ui/fragment/BalanceFrancsFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 p2, 0x41400000    # 12.0f

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setEntryLabelTextSize(F)V

    return-void
.end method
