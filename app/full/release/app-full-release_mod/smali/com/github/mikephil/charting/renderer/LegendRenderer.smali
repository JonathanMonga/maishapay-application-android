.class public Lcom/github/mikephil/charting/renderer/LegendRenderer;
.super Lcom/github/mikephil/charting/renderer/Renderer;
.source "LegendRenderer.java"


# instance fields
.field protected computedEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field protected mLegend:Lcom/github/mikephil/charting/components/Legend;

.field protected mLegendFormPaint:Landroid/graphics/Paint;

.field protected mLegendLabelPaint:Landroid/graphics/Paint;

.field private mLineFormPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/Legend;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/renderer/Renderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    .line 223
    new-instance p1, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p1}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 468
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    .line 47
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 49
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 50
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 51
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 53
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    .line 54
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public computeLegend(Lcom/github/mikephil/charting/data/ChartData;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/ChartData<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 85
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->isLegendCustom()Z

    move-result v2

    if-nez v2, :cond_a

    .line 87
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    .line 90
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 92
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v4

    .line 94
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColors()Ljava/util/List;

    move-result-object v5

    .line 95
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v6

    .line 98
    instance-of v7, v4, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    if-eqz v7, :cond_2

    move-object v7, v4

    check-cast v7, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 101
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getStackLabels()[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 103
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getStackSize()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 105
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v15, Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v10, v6

    rem-int v10, v8, v10

    aget-object v11, v6, v10

    .line 107
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v12

    .line 108
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    move-result v13

    .line 109
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    move-result v14

    .line 110
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v16

    .line 111
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object v10, v15

    move-object v2, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v10 .. v16}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 105
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 115
    :cond_0
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v12, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 118
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/high16 v8, 0x7fc00000    # NaNf

    const/high16 v9, 0x7fc00000    # NaNf

    const/4 v10, 0x0

    const v11, 0x112233

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 117
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v2, v1

    goto/16 :goto_6

    .line 127
    :cond_2
    instance-of v2, v4, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    if-eqz v2, :cond_4

    .line 129
    move-object v2, v4

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    const/4 v7, 0x0

    .line 131
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    if-ge v7, v6, :cond_3

    .line 133
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v15, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 134
    invoke-interface {v2, v7}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v10

    .line 135
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v11

    .line 136
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    move-result v12

    .line 137
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    move-result v13

    .line 138
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v14

    .line 139
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v9, v15

    move-object v1, v15

    move/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 133
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    goto :goto_2

    .line 143
    :cond_3
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 145
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v2, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 146
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/high16 v8, 0x7fc00000    # NaNf

    const/high16 v9, 0x7fc00000    # NaNf

    const/4 v10, 0x0

    const v11, 0x112233

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 145
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 155
    :cond_4
    instance-of v1, v4, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    if-eqz v1, :cond_6

    move-object v1, v4

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v2

    const v7, 0x112233

    if-eq v2, v7, :cond_6

    .line 158
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v14

    .line 159
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v1

    .line 161
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v5, Lcom/github/mikephil/charting/components/LegendEntry;

    const/4 v9, 0x0

    .line 163
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v10

    .line 164
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    move-result v11

    .line 165
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    move-result v12

    .line 166
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v13

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 161
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v12, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 171
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v6

    .line 172
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v7

    .line 173
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    move-result v8

    .line 174
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    move-result v9

    .line 175
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v10

    move-object v5, v12

    move v11, v1

    invoke-direct/range {v5 .. v11}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 170
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    move-object/from16 v2, p1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    .line 181
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    if-ge v1, v6, :cond_5

    .line 186
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_7

    add-int/lit8 v2, v6, -0x1

    if-ge v1, v2, :cond_7

    const/4 v2, 0x0

    move-object v9, v2

    move-object/from16 v2, p1

    goto :goto_5

    :cond_7
    move-object/from16 v2, p1

    .line 189
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v7

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    .line 192
    :goto_5
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v15, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 194
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v10

    .line 195
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    move-result v11

    .line 196
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    move-result v12

    .line 197
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v13

    .line 198
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 192
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :goto_6
    add-int/lit8 v3, v3, 0x1

    move-object v1, v2

    goto/16 :goto_0

    .line 204
    :cond_8
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getExtraEntries()[Lcom/github/mikephil/charting/components/LegendEntry;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 205
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getExtraEntries()[Lcom/github/mikephil/charting/components/LegendEntry;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 208
    :cond_9
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/Legend;->setEntries(Ljava/util/List;)V

    .line 211
    :cond_a
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 214
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 216
    :cond_b
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 217
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/components/Legend;->calculateDimensions(Landroid/graphics/Paint;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    return-void
.end method

.method protected drawForm(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/LegendEntry;Lcom/github/mikephil/charting/components/Legend;)V
    .locals 10

    .line 486
    iget v0, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    const v1, 0x112234

    if-eq v0, v1, :cond_5

    iget v0, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    const v1, 0x112233

    if-eq v0, v1, :cond_5

    iget v0, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 491
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 493
    iget-object v1, p4, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 494
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendForm;->DEFAULT:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-ne v1, v2, :cond_1

    .line 495
    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v1

    .line 497
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    iget v3, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 499
    iget v2, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 500
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->getFormSize()F

    move-result v2

    goto :goto_0

    :cond_2
    iget v2, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 499
    :goto_0
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    .line 505
    sget-object v4, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendForm:[I

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendForm;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 527
    :pswitch_0
    iget v1, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formLineWidth:F

    .line 528
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 529
    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->getFormLineWidth()F

    move-result v1

    goto :goto_1

    :cond_3
    iget v1, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formLineWidth:F

    .line 527
    :goto_1
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    .line 531
    iget-object v3, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formLineDashEffect:Landroid/graphics/DashPathEffect;

    if-nez v3, :cond_4

    .line 532
    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object p4

    goto :goto_2

    :cond_4
    iget-object p4, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formLineDashEffect:Landroid/graphics/DashPathEffect;

    .line 534
    :goto_2
    iget-object p5, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 535
    iget-object p5, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 536
    iget-object p5, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, p4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 538
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 539
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 540
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    add-float/2addr p2, v2

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 541
    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 521
    :pswitch_1
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sub-float v6, p3, v3

    add-float v7, p2, v2

    add-float v8, p3, v3

    .line 522
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 516
    :pswitch_2
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-float/2addr p2, v3

    .line 517
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 546
    :goto_3
    :pswitch_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_5
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getFormPaint()Landroid/graphics/Paint;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public renderLegend(Landroid/graphics/Canvas;)V
    .locals 35

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 227
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 235
    :cond_1
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 236
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->getLineHeight(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F

    move-result v8

    .line 239
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->getLineSpacing(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 240
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getYEntrySpace()F

    move-result v1

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    add-float v9, v0, v1

    .line 241
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    const-string v1, "ABC"

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v0, v10

    sub-float v11, v8, v0

    .line 243
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getEntries()[Lcom/github/mikephil/charting/components/LegendEntry;

    move-result-object v12

    .line 245
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getFormToTextSpace()F

    move-result v0

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v13

    .line 246
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getXEntrySpace()F

    move-result v0

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v14

    .line 247
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getOrientation()Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    move-result-object v0

    .line 248
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getHorizontalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-result-object v15

    .line 249
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    move-result-object v1

    .line 250
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getDirection()Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-result-object v5

    .line 251
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getFormSize()F

    move-result v2

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v16

    .line 254
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getStackSpace()F

    move-result v2

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v4

    .line 256
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v2

    .line 257
    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getXOffset()F

    move-result v3

    .line 260
    sget-object v17, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment:[I

    invoke-virtual {v15}, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->ordinal()I

    move-result v18

    aget v17, v17, v18

    const/16 v18, 0x0

    packed-switch v17, :pswitch_data_0

    move/from16 v20, v4

    move/from16 v21, v9

    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v9, v18

    goto/16 :goto_7

    .line 287
    :pswitch_0
    sget-object v10, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    if-ne v0, v10, :cond_2

    .line 288
    iget-object v10, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v10

    const/high16 v17, 0x40000000    # 2.0f

    div-float v10, v10, v17

    move/from16 v20, v4

    goto :goto_0

    :cond_2
    const/high16 v17, 0x40000000    # 2.0f

    .line 290
    iget-object v10, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v10

    move/from16 v20, v4

    iget-object v4, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 291
    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v4

    div-float v4, v4, v17

    add-float/2addr v10, v4

    .line 293
    :goto_0
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v5, v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    neg-float v4, v3

    :goto_1
    add-float/2addr v4, v10

    .line 299
    sget-object v10, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    if-ne v0, v10, :cond_5

    move/from16 v21, v9

    float-to-double v9, v4

    .line 300
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    if-ne v5, v4, :cond_4

    iget-object v4, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v4, v4, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    neg-float v4, v4

    move/from16 v24, v13

    move/from16 v25, v14

    float-to-double v13, v4

    div-double v13, v13, v22

    float-to-double v3, v3

    add-double/2addr v13, v3

    goto :goto_2

    :cond_4
    move/from16 v24, v13

    move/from16 v25, v14

    iget-object v4, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v4, v4, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    float-to-double v13, v4

    div-double v13, v13, v22

    float-to-double v3, v3

    sub-double/2addr v13, v3

    :goto_2
    add-double/2addr v9, v13

    double-to-float v3, v9

    goto :goto_6

    :cond_5
    move/from16 v21, v9

    move/from16 v24, v13

    move/from16 v25, v14

    goto :goto_4

    :pswitch_1
    move/from16 v20, v4

    move/from16 v21, v9

    move/from16 v24, v13

    move/from16 v25, v14

    .line 275
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    if-ne v0, v4, :cond_6

    .line 276
    iget-object v4, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v4

    sub-float/2addr v4, v3

    goto :goto_3

    .line 278
    :cond_6
    iget-object v4, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v4

    sub-float/2addr v4, v3

    .line 280
    :goto_3
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v5, v3, :cond_7

    .line 281
    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    sub-float v3, v4, v3

    goto :goto_6

    :cond_7
    :goto_4
    move v9, v4

    goto :goto_7

    :pswitch_2
    move/from16 v20, v4

    move/from16 v21, v9

    move/from16 v24, v13

    move/from16 v25, v14

    .line 263
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    if-ne v0, v4, :cond_8

    goto :goto_5

    .line 266
    :cond_8
    iget-object v4, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v4

    add-float/2addr v3, v4

    .line 268
    :goto_5
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v5, v4, :cond_9

    .line 269
    iget-object v4, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v4, v4, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    add-float/2addr v3, v4

    :cond_9
    :goto_6
    move v9, v3

    .line 308
    :goto_7
    sget-object v3, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation:[I

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_23

    .line 393
    :pswitch_3
    sget-object v0, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment:[I

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    move/from16 v0, v18

    goto :goto_a

    .line 409
    :pswitch_4
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 411
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_a

    .line 402
    :pswitch_5
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    if-ne v15, v0, :cond_a

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 403
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v0

    goto :goto_8

    :cond_a
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 404
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v0

    .line 405
    :goto_8
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_a

    .line 395
    :pswitch_6
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    if-ne v15, v0, :cond_b

    move/from16 v0, v18

    goto :goto_9

    :cond_b
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 397
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v0

    :goto_9
    add-float/2addr v0, v2

    :goto_a
    move/from16 v17, v0

    move/from16 v15, v18

    const/4 v14, 0x0

    const/16 v19, 0x0

    .line 415
    :goto_b
    array-length v0, v12

    if-ge v14, v0, :cond_27

    .line 417
    aget-object v4, v12, v14

    .line 418
    iget-object v0, v4, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-eq v0, v1, :cond_c

    const/16 v22, 0x1

    goto :goto_c

    :cond_c
    const/16 v22, 0x0

    .line 419
    :goto_c
    iget v0, v4, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_d

    move/from16 v23, v16

    goto :goto_d

    :cond_d
    iget v0, v4, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    move/from16 v23, v0

    :goto_d
    if-eqz v22, :cond_10

    .line 424
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v5, v0, :cond_e

    add-float v0, v9, v15

    :goto_e
    move/from16 v25, v0

    goto :goto_f

    :cond_e
    sub-float v0, v23, v15

    sub-float v0, v9, v0

    goto :goto_e

    :goto_f
    add-float v3, v17, v11

    .line 429
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v26, v2

    move/from16 v2, v25

    move-object/from16 v27, v4

    move/from16 v10, v20

    move-object v13, v5

    move-object/from16 v5, v26

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawForm(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/LegendEntry;Lcom/github/mikephil/charting/components/Legend;)V

    .line 431
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v0, :cond_f

    add-float v0, v25, v23

    move/from16 v25, v0

    :cond_f
    move-object/from16 v0, v27

    goto :goto_10

    :cond_10
    move-object v13, v5

    move/from16 v10, v20

    move-object v0, v4

    move/from16 v25, v9

    .line 435
    :goto_10
    iget-object v1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    if-eqz v1, :cond_16

    if-eqz v22, :cond_12

    if-nez v19, :cond_12

    .line 438
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v1, :cond_11

    move/from16 v1, v24

    move v5, v1

    goto :goto_11

    :cond_11
    move/from16 v5, v24

    neg-float v1, v5

    :goto_11
    add-float v1, v25, v1

    goto :goto_12

    :cond_12
    move/from16 v5, v24

    if-eqz v19, :cond_13

    move v1, v9

    goto :goto_12

    :cond_13
    move/from16 v1, v25

    .line 443
    :goto_12
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_14

    .line 444
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :cond_14
    if-nez v19, :cond_15

    add-float v2, v17, v8

    .line 447
    iget-object v0, v0, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    invoke-virtual {v6, v7, v1, v2, v0}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    goto :goto_13

    :cond_15
    add-float v2, v8, v21

    add-float v17, v17, v2

    add-float v2, v17, v8

    .line 450
    iget-object v0, v0, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    invoke-virtual {v6, v7, v1, v2, v0}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    :goto_13
    add-float v0, v8, v21

    add-float v17, v17, v0

    move/from16 v15, v18

    goto :goto_14

    :cond_16
    move/from16 v5, v24

    add-float v23, v23, v10

    add-float v15, v15, v23

    const/16 v19, 0x1

    :goto_14
    add-int/lit8 v14, v14, 0x1

    move/from16 v24, v5

    move/from16 v20, v10

    move-object v5, v13

    goto/16 :goto_b

    :pswitch_7
    move-object v13, v5

    move/from16 v10, v20

    move/from16 v5, v24

    .line 311
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLineSizes()Ljava/util/List;

    move-result-object v14

    .line 312
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLabelSizes()Ljava/util/List;

    move-result-object v4

    .line 313
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLabelBreakPoints()Ljava/util/List;

    move-result-object v3

    .line 318
    sget-object v0, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment:[I

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    move/from16 v2, v18

    goto :goto_15

    .line 328
    :pswitch_8
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v0

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    goto :goto_15

    .line 324
    :pswitch_9
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v0

    sub-float/2addr v0, v2

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    sub-float v2, v0, v1

    .line 334
    :goto_15
    :pswitch_a
    array-length v1, v12

    move v0, v2

    move-object/from16 v28, v4

    move/from16 v17, v9

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_16
    if-ge v2, v1, :cond_27

    move/from16 v29, v10

    .line 336
    aget-object v10, v12, v2

    move/from16 v30, v1

    .line 337
    iget-object v1, v10, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move/from16 v31, v5

    sget-object v5, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-eq v1, v5, :cond_17

    const/16 v18, 0x1

    goto :goto_17

    :cond_17
    const/16 v18, 0x0

    .line 338
    :goto_17
    iget v1, v10, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_18

    move/from16 v20, v16

    goto :goto_18

    :cond_18
    iget v1, v10, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    move/from16 v20, v1

    .line 340
    :goto_18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_19

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_19

    add-float v1, v8, v21

    add-float/2addr v0, v1

    move/from16 v22, v0

    move/from16 v17, v9

    goto :goto_19

    :cond_19
    move/from16 v22, v0

    :goto_19
    cmpl-float v0, v17, v9

    if-nez v0, :cond_1b

    .line 345
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    if-ne v15, v0, :cond_1b

    .line 347
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1b

    .line 348
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v0, :cond_1a

    .line 349
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/utils/FSize;

    iget v0, v0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    :goto_1a
    const/high16 v19, 0x40000000    # 2.0f

    goto :goto_1b

    .line 350
    :cond_1a
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/utils/FSize;

    iget v0, v0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    neg-float v0, v0

    goto :goto_1a

    :goto_1b
    div-float v0, v0, v19

    add-float v17, v17, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_1b
    const/high16 v19, 0x40000000    # 2.0f

    :goto_1c
    move/from16 v23, v4

    .line 354
    iget-object v0, v10, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    if-nez v0, :cond_1c

    const/16 v24, 0x1

    goto :goto_1d

    :cond_1c
    const/16 v24, 0x0

    :goto_1d
    if-eqz v18, :cond_1e

    .line 357
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v0, :cond_1d

    sub-float v17, v17, v20

    :cond_1d
    add-float v4, v22, v11

    .line 360
    iget-object v5, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object v0, v6

    move/from16 v26, v30

    move-object v1, v7

    move/from16 v32, v9

    move v9, v2

    move/from16 v2, v17

    move-object/from16 v27, v3

    move v3, v4

    move/from16 v33, v11

    move-object/from16 v11, v28

    move-object v4, v10

    move-object/from16 v34, v12

    move/from16 v12, v31

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawForm(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/LegendEntry;Lcom/github/mikephil/charting/components/Legend;)V

    .line 362
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v0, :cond_1f

    add-float v17, v17, v20

    goto :goto_1e

    :cond_1e
    move-object/from16 v27, v3

    move/from16 v32, v9

    move/from16 v33, v11

    move-object/from16 v34, v12

    move-object/from16 v11, v28

    move/from16 v26, v30

    move/from16 v12, v31

    move v9, v2

    :cond_1f
    :goto_1e
    if-nez v24, :cond_25

    if-eqz v18, :cond_21

    .line 368
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v0, :cond_20

    neg-float v0, v12

    goto :goto_1f

    :cond_20
    move v0, v12

    :goto_1f
    add-float v17, v17, v0

    .line 371
    :cond_21
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v0, :cond_22

    .line 372
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/utils/FSize;

    iget v0, v0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    sub-float v17, v17, v0

    :cond_22
    move/from16 v0, v17

    add-float v1, v22, v8

    .line 374
    iget-object v2, v10, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    invoke-virtual {v6, v7, v0, v1, v2}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    .line 376
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v1, :cond_23

    .line 377
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/utils/FSize;

    iget v1, v1, Lcom/github/mikephil/charting/utils/FSize;->width:F

    add-float/2addr v0, v1

    .line 379
    :cond_23
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v1, :cond_24

    move/from16 v1, v25

    neg-float v2, v1

    goto :goto_20

    :cond_24
    move/from16 v1, v25

    move v2, v1

    :goto_20
    add-float/2addr v0, v2

    move/from16 v17, v0

    move/from16 v0, v29

    goto :goto_22

    :cond_25
    move/from16 v1, v25

    .line 381
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v0, :cond_26

    move/from16 v0, v29

    neg-float v4, v0

    goto :goto_21

    :cond_26
    move/from16 v0, v29

    move v4, v0

    :goto_21
    add-float v17, v17, v4

    :goto_22
    add-int/lit8 v2, v9, 0x1

    move v10, v0

    move/from16 v25, v1

    move-object/from16 v28, v11

    move v5, v12

    move/from16 v0, v22

    move/from16 v4, v23

    move/from16 v1, v26

    move-object/from16 v3, v27

    move/from16 v9, v32

    move/from16 v11, v33

    move-object/from16 v12, v34

    goto/16 :goto_16

    :cond_27
    :goto_23
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
