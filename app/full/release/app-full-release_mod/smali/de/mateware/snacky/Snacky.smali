.class public Lde/mateware/snacky/Snacky;
.super Ljava/lang/Object;
.source "Snacky.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mateware/snacky/Snacky$Builder;,
        Lde/mateware/snacky/Snacky$Duration;,
        Lde/mateware/snacky/Snacky$Type;
    }
.end annotation


# static fields
.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1


# instance fields
.field private final builder:Lde/mateware/snacky/Snacky$Builder;


# direct methods
.method private constructor <init>(Lde/mateware/snacky/Snacky$Builder;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    return-void
.end method

.method synthetic constructor <init>(Lde/mateware/snacky/Snacky$Builder;Lde/mateware/snacky/Snacky$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lde/mateware/snacky/Snacky;-><init>(Lde/mateware/snacky/Snacky$Builder;)V

    return-void
.end method

.method static synthetic access$2200(Lde/mateware/snacky/Snacky;)Landroid/support/design/widget/Snackbar;
    .locals 0

    .line 32
    invoke-direct {p0}, Lde/mateware/snacky/Snacky;->make()Landroid/support/design/widget/Snackbar;

    move-result-object p0

    return-object p0
.end method

.method public static builder()Lde/mateware/snacky/Snacky$Builder;
    .locals 2

    .line 144
    new-instance v0, Lde/mateware/snacky/Snacky$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lde/mateware/snacky/Snacky$Builder;-><init>(Lde/mateware/snacky/Snacky$1;)V

    return-object v0
.end method

.method private make()Landroid/support/design/widget/Snackbar;
    .locals 6

    .line 76
    iget-object v0, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v0}, Lde/mateware/snacky/Snacky$Builder;->access$000(Lde/mateware/snacky/Snacky$Builder;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v1}, Lde/mateware/snacky/Snacky$Builder;->access$100(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$200(Lde/mateware/snacky/Snacky$Builder;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v1}, Lde/mateware/snacky/Snacky$Builder;->access$300(Lde/mateware/snacky/Snacky$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v1}, Lde/mateware/snacky/Snacky$Builder;->access$400(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 79
    :cond_0
    iget-object v1, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v1}, Lde/mateware/snacky/Snacky$Builder;->access$300(Lde/mateware/snacky/Snacky$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    new-instance v2, Lde/mateware/snacky/Snacky$1;

    invoke-direct {v2, p0}, Lde/mateware/snacky/Snacky$1;-><init>(Lde/mateware/snacky/Snacky;)V

    invoke-static {v1, v2}, Lde/mateware/snacky/Snacky$Builder;->access$302(Lde/mateware/snacky/Snacky$Builder;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 85
    :cond_1
    iget-object v1, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v1}, Lde/mateware/snacky/Snacky$Builder;->access$400(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$300(Lde/mateware/snacky/Snacky$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 86
    iget-object v1, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v1}, Lde/mateware/snacky/Snacky$Builder;->access$500(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$600(Lde/mateware/snacky/Snacky$Builder;)Lde/mateware/snacky/Snacky$Type;

    move-result-object v2

    invoke-virtual {v2}, Lde/mateware/snacky/Snacky$Type;->getStandardTextColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lde/mateware/snacky/Snacky$Builder;->access$502(Lde/mateware/snacky/Snacky$Builder;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 87
    :cond_2
    iget-object v1, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v1}, Lde/mateware/snacky/Snacky$Builder;->access$700(Lde/mateware/snacky/Snacky$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v1}, Lde/mateware/snacky/Snacky$Builder;->access$700(Lde/mateware/snacky/Snacky$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->setActionTextColor(Landroid/content/res/ColorStateList;)Landroid/support/design/widget/Snackbar;

    goto :goto_0

    .line 88
    :cond_3
    iget-object v1, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v1}, Lde/mateware/snacky/Snacky$Builder;->access$500(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v1}, Lde/mateware/snacky/Snacky$Builder;->access$500(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    .line 92
    :cond_4
    :goto_0
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .line 94
    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$800(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    iget-object v3, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v3}, Lde/mateware/snacky/Snacky$Builder;->access$600(Lde/mateware/snacky/Snacky$Builder;)Lde/mateware/snacky/Snacky$Type;

    move-result-object v3

    invoke-virtual {v3}, Lde/mateware/snacky/Snacky$Type;->getColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lde/mateware/snacky/Snacky$Builder;->access$802(Lde/mateware/snacky/Snacky$Builder;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 95
    :cond_5
    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$800(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$800(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setBackgroundColor(I)V

    .line 97
    :cond_6
    sget v2, Landroid/support/design/R$id;->snackbar_action:I

    invoke-virtual {v1, v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    iget-object v3, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v3}, Lde/mateware/snacky/Snacky$Builder;->access$900(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 99
    iget-object v3, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v3}, Lde/mateware/snacky/Snacky$Builder;->access$1000(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v3}, Lde/mateware/snacky/Snacky$Builder;->access$1000(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v4}, Lde/mateware/snacky/Snacky$Builder;->access$900(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 100
    :cond_7
    iget-object v3, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v3}, Lde/mateware/snacky/Snacky$Builder;->access$900(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    :cond_8
    :goto_1
    iget-object v3, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v3}, Lde/mateware/snacky/Snacky$Builder;->access$1100(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 103
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    iget-object v4, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v4}, Lde/mateware/snacky/Snacky$Builder;->access$1100(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 107
    :cond_9
    sget v2, Landroid/support/design/R$id;->snackbar_text:I

    invoke-virtual {v1, v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 109
    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$1200(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 110
    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$1300(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$1300(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v3}, Lde/mateware/snacky/Snacky$Builder;->access$1200(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 111
    :cond_a
    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$1200(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 113
    :cond_b
    :goto_2
    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$1400(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 114
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v3, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v3}, Lde/mateware/snacky/Snacky$Builder;->access$1400(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 118
    :cond_c
    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$1500(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    iget-object v3, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v3}, Lde/mateware/snacky/Snacky$Builder;->access$600(Lde/mateware/snacky/Snacky$Builder;)Lde/mateware/snacky/Snacky$Type;

    move-result-object v3

    invoke-virtual {v3}, Lde/mateware/snacky/Snacky$Type;->getStandardTextColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lde/mateware/snacky/Snacky$Builder;->access$1502(Lde/mateware/snacky/Snacky$Builder;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 119
    :cond_d
    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$1600(Lde/mateware/snacky/Snacky$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$1600(Lde/mateware/snacky/Snacky$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 120
    :cond_e
    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$1500(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$1500(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    :cond_f
    :goto_3
    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$1700(Lde/mateware/snacky/Snacky$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 122
    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$1800(Lde/mateware/snacky/Snacky$Builder;)Z

    move-result v2

    const/16 v3, 0x10

    if-eqz v2, :cond_10

    const/16 v2, 0x11

    goto :goto_4

    :cond_10
    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$1800(Lde/mateware/snacky/Snacky$Builder;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v3, :cond_11

    const/4 v2, 0x4

    .line 124
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 126
    :cond_11
    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$1900(Lde/mateware/snacky/Snacky$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    iget-object v3, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v3}, Lde/mateware/snacky/Snacky$Builder;->access$600(Lde/mateware/snacky/Snacky$Builder;)Lde/mateware/snacky/Snacky$Type;

    move-result-object v3

    iget-object v4, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v4}, Lde/mateware/snacky/Snacky$Builder;->access$000(Lde/mateware/snacky/Snacky$Builder;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/mateware/snacky/Snacky$Type;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lde/mateware/snacky/Snacky$Builder;->access$1902(Lde/mateware/snacky/Snacky$Builder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 127
    :cond_12
    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$1900(Lde/mateware/snacky/Snacky$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 129
    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$1800(Lde/mateware/snacky/Snacky$Builder;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$400(Lde/mateware/snacky/Snacky$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 130
    iget-object v2, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v2}, Lde/mateware/snacky/Snacky$Builder;->access$000(Lde/mateware/snacky/Snacky$Builder;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    .line 131
    invoke-static {v4}, Lde/mateware/snacky/Snacky$Builder;->access$1900(Lde/mateware/snacky/Snacky$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    .line 132
    invoke-static {v5}, Lde/mateware/snacky/Snacky$Builder;->access$1900(Lde/mateware/snacky/Snacky$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 130
    invoke-static {v2, v4, v5}, Lde/mateware/snacky/SnackyUtils;->makeTransparentDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_5

    :cond_13
    move-object v2, v3

    .line 134
    :goto_5
    iget-object v4, p0, Lde/mateware/snacky/Snacky;->builder:Lde/mateware/snacky/Snacky$Builder;

    invoke-static {v4}, Lde/mateware/snacky/Snacky$Builder;->access$1900(Lde/mateware/snacky/Snacky$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lde/mateware/snacky/R$dimen;->snacky_icon_padding:I

    .line 136
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 135
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_14
    return-object v0
.end method
