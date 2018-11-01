.class public final Lcom/santalu/widget/MaskEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "MaskEditText.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaskEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaskEditText.kt\ncom/santalu/widget/MaskEditText\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,129:1\n944#2,2:130\n953#2,3:132\n*E\n*S KotlinDebug\n*F\n+ 1 MaskEditText.kt\ncom/santalu/widget/MaskEditText\n*L\n61#1,2:130\n94#1,3:132\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0018\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J\u001a\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J*\u0010\u001e\u001a\u00020\u001a2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\tH\u0014J \u0010\"\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\tH\u0002J\u0014\u0010#\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002R(\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000fR\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/santalu/widget/MaskEditText;",
        "Landroid/support/v7/widget/AppCompatEditText;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "value",
        "",
        "mask",
        "getMask",
        "()Ljava/lang/String;",
        "setMask",
        "(Ljava/lang/String;)V",
        "rawText",
        "getRawText",
        "selfChange",
        "",
        "findNextPlaceHolderPosition",
        "start",
        "end",
        "format",
        "",
        "source",
        "",
        "init",
        "onTextChanged",
        "text",
        "lengthBefore",
        "lengthAfter",
        "setCursorPosition",
        "unformat",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field private mask:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selfChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/santalu/widget/MaskEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/santalu/widget/MaskEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final findNextPlaceHolderPosition(II)I
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/santalu/widget/MaskEditText;->mask:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_1

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 121
    invoke-virtual {p0}, Lcom/santalu/widget/MaskEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    .line 122
    invoke-static {v2}, Lcom/santalu/widget/MaskEditTextKt;->isPlaceHolder(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final format(Ljava/lang/CharSequence;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 54
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/santalu/widget/MaskEditText;->mask:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v1

    :goto_3
    if-eqz v2, :cond_4

    goto/16 :goto_7

    .line 56
    :cond_4
    iput-boolean v1, p0, Lcom/santalu/widget/MaskEditText;->selfChange:Z

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_5

    .line 59
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 61
    iget-object v3, p0, Lcom/santalu/widget/MaskEditText;->mask:Ljava/lang/String;

    if-eqz v3, :cond_b

    check-cast v3, Ljava/lang/CharSequence;

    move v4, v0

    move v5, v4

    .line 130
    :goto_4
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_b

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-lt v5, v2, :cond_6

    goto :goto_6

    .line 63
    :cond_6
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 64
    invoke-static {v6}, Lcom/santalu/widget/MaskEditTextKt;->isPlaceHolder(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 65
    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 66
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    move v6, v5

    :goto_5
    if-ge v6, v2, :cond_a

    .line 71
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 72
    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 73
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    move v5, v6

    goto :goto_6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 80
    :cond_9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v7, v6, :cond_a

    add-int/lit8 v5, v5, 0x1

    :cond_a
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 84
    :cond_b
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/santalu/widget/MaskEditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iput-boolean v0, p0, Lcom/santalu/widget/MaskEditText;->selfChange:Z

    return-void

    :cond_c
    :goto_7
    return-void
.end method

.method private final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 38
    sget-object v0, Lcom/santalu/widget/R$styleable;->MaskEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    sget p2, Lcom/santalu/widget/R$styleable;->MaskEditText_met_mask:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 40
    sget p2, Lcom/santalu/widget/R$styleable;->MaskEditText_met_mask:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/santalu/widget/MaskEditText;->setMask(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private final setCursorPosition(III)V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/santalu/widget/MaskEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/santalu/widget/MaskEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le p2, p3, :cond_3

    goto :goto_3

    :cond_3
    if-le p3, v1, :cond_4

    goto :goto_2

    :cond_4
    if-ge p1, v0, :cond_5

    .line 111
    invoke-direct {p0, p1, v0}, Lcom/santalu/widget/MaskEditText;->findNextPlaceHolderPosition(II)I

    move-result p1

    goto :goto_3

    :cond_5
    :goto_2
    move p1, v0

    .line 114
    :goto_3
    invoke-virtual {p0, p1}, Lcom/santalu/widget/MaskEditText;->setSelection(I)V

    return-void
.end method

.method private final unformat(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 90
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/santalu/widget/MaskEditText;->mask:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    goto :goto_5

    .line 92
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_5

    .line 93
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 94
    iget-object v3, p0, Lcom/santalu/widget/MaskEditText;->mask:Ljava/lang/String;

    if-eqz v3, :cond_8

    check-cast v3, Ljava/lang/CharSequence;

    move v4, v1

    .line 133
    :goto_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_8

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v4, 0x1

    if-lt v4, v2, :cond_6

    goto :goto_4

    .line 96
    :cond_6
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 97
    invoke-static {v5}, Lcom/santalu/widget/MaskEditTextKt;->isPlaceHolder(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 98
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v4, v6

    goto :goto_3

    .line 101
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_5
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final getMask()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/santalu/widget/MaskEditText;->mask:Ljava/lang/String;

    return-object v0
.end method

.method public final getRawText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/santalu/widget/MaskEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/santalu/widget/MaskEditText;->unformat(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 47
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/santalu/widget/MaskEditText;->selfChange:Z

    if-eqz v0, :cond_2

    goto :goto_2

    .line 49
    :cond_2
    invoke-direct {p0, p1}, Lcom/santalu/widget/MaskEditText;->format(Ljava/lang/CharSequence;)V

    .line 50
    invoke-direct {p0, p2, p3, p4}, Lcom/santalu/widget/MaskEditText;->setCursorPosition(III)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public final setMask(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 19
    iput-object p1, p0, Lcom/santalu/widget/MaskEditText;->mask:Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Lcom/santalu/widget/MaskEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/santalu/widget/MaskEditText;->format(Ljava/lang/CharSequence;)V

    return-void
.end method
