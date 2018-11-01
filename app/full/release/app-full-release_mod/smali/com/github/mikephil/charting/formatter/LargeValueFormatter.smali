.class public Lcom/github/mikephil/charting/formatter/LargeValueFormatter;
.super Ljava/lang/Object;
.source "LargeValueFormatter.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IValueFormatter;
.implements Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;


# static fields
.field private static final MAX_LENGTH:I = 0x5

.field private static SUFFIX:[Ljava/lang/String;


# instance fields
.field private mFormat:Ljava/text/DecimalFormat;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    .line 23
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "k"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "m"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "b"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "t"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->SUFFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mText:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###E00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mText:Ljava/lang/String;

    return-void
.end method

.method private makePretty(D)Ljava/lang/String;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p2

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "E[0-9][0-9]"

    .line 87
    sget-object v1, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->SUFFIX:[Ljava/lang/String;

    div-int/lit8 p2, p2, 0x3

    aget-object p2, v1, p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x5

    if-gt p2, v0, :cond_1

    const-string p2, "[0-9]+\\.[a-z]"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    return-object p1

    .line 90
    :cond_1
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getDecimalDigits()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 2

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->makePretty(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mText:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;
    .locals 0

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double p3, p1

    invoke-direct {p0, p3, p4}, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->makePretty(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mText:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAppendix(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mText:Ljava/lang/String;

    return-void
.end method

.method public setSuffix([Ljava/lang/String;)V
    .locals 0

    .line 72
    sput-object p1, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->SUFFIX:[Ljava/lang/String;

    return-void
.end method
