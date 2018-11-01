.class public Lcom/mikepenz/materialize/holder/StringHolder;
.super Ljava/lang/Object;
.source "StringHolder.java"


# instance fields
.field private mText:Ljava/lang/CharSequence;

.field private mTextRes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mTextRes:I

    .line 24
    iput p1, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mTextRes:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mTextRes:I

    .line 16
    iput-object p1, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mTextRes:I

    .line 20
    iput-object p1, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public static applyTo(Lcom/mikepenz/materialize/holder/StringHolder;Landroid/widget/TextView;)V
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialize/holder/StringHolder;->applyTo(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public static applyToOrHide(Lcom/mikepenz/materialize/holder/StringHolder;Landroid/widget/TextView;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialize/holder/StringHolder;->applyToOrHide(Landroid/widget/TextView;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 88
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return p0

    :cond_1
    return p0
.end method


# virtual methods
.method public applyTo(Landroid/widget/TextView;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 46
    :cond_0
    iget v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mTextRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 47
    iget v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mTextRes:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public applyToOrHide(Landroid/widget/TextView;)Z
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mText:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return v1

    .line 58
    :cond_0
    iget v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mTextRes:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 59
    iget v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mTextRes:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 60
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return v1

    :cond_1
    const/16 v0, 0x8

    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return v2
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 70
    iget-object p1, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mText:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 71
    :cond_0
    iget v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mTextRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 72
    iget v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mTextRes:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextRes()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mTextRes:I

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTextRes(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mTextRes:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    iget v0, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mTextRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringRes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mikepenz/materialize/holder/StringHolder;->mTextRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method
