.class public Lcom/github/mikephil/charting/data/ScatterDataSet;
.super Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;
.source "ScatterDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;"
    }
.end annotation


# instance fields
.field private mScatterShapeHoleColor:I

.field private mScatterShapeHoleRadius:F

.field protected mShapeRenderer:Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;

.field private mShapeSize:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/high16 p1, 0x41700000    # 15.0f

    .line 24
    iput p1, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeSize:F

    .line 29
    new-instance p1, Lcom/github/mikephil/charting/renderer/scatter/SquareShapeRenderer;

    invoke-direct {p1}, Lcom/github/mikephil/charting/renderer/scatter/SquareShapeRenderer;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeRenderer:Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleRadius:F

    const p1, 0x112233

    .line 42
    iput p1, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleColor:I

    return-void
.end method

.method public static getRendererForShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;
    .locals 1

    .line 143
    sget-object v0, Lcom/github/mikephil/charting/data/ScatterDataSet$1;->$SwitchMap$com$github$mikephil$charting$charts$ScatterChart$ScatterShape:[I

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 150
    :pswitch_0
    new-instance p0, Lcom/github/mikephil/charting/renderer/scatter/ChevronDownShapeRenderer;

    invoke-direct {p0}, Lcom/github/mikephil/charting/renderer/scatter/ChevronDownShapeRenderer;-><init>()V

    return-object p0

    .line 149
    :pswitch_1
    new-instance p0, Lcom/github/mikephil/charting/renderer/scatter/ChevronUpShapeRenderer;

    invoke-direct {p0}, Lcom/github/mikephil/charting/renderer/scatter/ChevronUpShapeRenderer;-><init>()V

    return-object p0

    .line 148
    :pswitch_2
    new-instance p0, Lcom/github/mikephil/charting/renderer/scatter/XShapeRenderer;

    invoke-direct {p0}, Lcom/github/mikephil/charting/renderer/scatter/XShapeRenderer;-><init>()V

    return-object p0

    .line 147
    :pswitch_3
    new-instance p0, Lcom/github/mikephil/charting/renderer/scatter/CrossShapeRenderer;

    invoke-direct {p0}, Lcom/github/mikephil/charting/renderer/scatter/CrossShapeRenderer;-><init>()V

    return-object p0

    .line 146
    :pswitch_4
    new-instance p0, Lcom/github/mikephil/charting/renderer/scatter/TriangleShapeRenderer;

    invoke-direct {p0}, Lcom/github/mikephil/charting/renderer/scatter/TriangleShapeRenderer;-><init>()V

    return-object p0

    .line 145
    :pswitch_5
    new-instance p0, Lcom/github/mikephil/charting/renderer/scatter/CircleShapeRenderer;

    invoke-direct {p0}, Lcom/github/mikephil/charting/renderer/scatter/CircleShapeRenderer;-><init>()V

    return-object p0

    .line 144
    :pswitch_6
    new-instance p0, Lcom/github/mikephil/charting/renderer/scatter/SquareShapeRenderer;

    invoke-direct {p0}, Lcom/github/mikephil/charting/renderer/scatter/SquareShapeRenderer;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public copy()Lcom/github/mikephil/charting/data/DataSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/mikephil/charting/data/DataSet<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 53
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->copy()Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    new-instance v1, Lcom/github/mikephil/charting/data/ScatterDataSet;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/github/mikephil/charting/data/ScatterDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 58
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mDrawValues:Z

    iput-boolean v0, v1, Lcom/github/mikephil/charting/data/ScatterDataSet;->mDrawValues:Z

    .line 59
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mValueColors:Ljava/util/List;

    iput-object v0, v1, Lcom/github/mikephil/charting/data/ScatterDataSet;->mValueColors:Ljava/util/List;

    .line 60
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mColors:Ljava/util/List;

    iput-object v0, v1, Lcom/github/mikephil/charting/data/ScatterDataSet;->mColors:Ljava/util/List;

    .line 61
    iget v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeSize:F

    iput v0, v1, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeSize:F

    .line 62
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeRenderer:Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;

    iput-object v0, v1, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeRenderer:Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;

    .line 63
    iget v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleRadius:F

    iput v0, v1, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleRadius:F

    .line 64
    iget v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleColor:I

    iput v0, v1, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleColor:I

    .line 65
    iget v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mHighlightLineWidth:F

    iput v0, v1, Lcom/github/mikephil/charting/data/ScatterDataSet;->mHighlightLineWidth:F

    .line 66
    iget v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mHighLightColor:I

    iput v0, v1, Lcom/github/mikephil/charting/data/ScatterDataSet;->mHighLightColor:I

    .line 67
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mHighlightDashPathEffect:Landroid/graphics/DashPathEffect;

    iput-object v0, v1, Lcom/github/mikephil/charting/data/ScatterDataSet;->mHighlightDashPathEffect:Landroid/graphics/DashPathEffect;

    return-object v1
.end method

.method public getScatterShapeHoleColor()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleColor:I

    return v0
.end method

.method public getScatterShapeHoleRadius()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleRadius:F

    return v0
.end method

.method public getScatterShapeSize()F
    .locals 1

    .line 84
    iget v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeSize:F

    return v0
.end method

.method public getShapeRenderer()Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeRenderer:Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;

    return-object v0
.end method

.method public setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V
    .locals 0

    .line 94
    invoke-static {p1}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getRendererForShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeRenderer:Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;

    return-void
.end method

.method public setScatterShapeHoleColor(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleColor:I

    return-void
.end method

.method public setScatterShapeHoleRadius(F)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleRadius:F

    return-void
.end method

.method public setScatterShapeSize(F)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeSize:F

    return-void
.end method

.method public setShapeRenderer(Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeRenderer:Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;

    return-void
.end method
