.class public Lcom/github/paolorotolo/appintro/model/SliderPage;
.super Ljava/lang/Object;
.source "SliderPage.java"


# instance fields
.field private bgColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private descColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private descTypeface:Ljava/lang/String;

.field private description:Ljava/lang/CharSequence;

.field private imageDrawable:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private title:Ljava/lang/CharSequence;

.field private titleColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private titleTypeface:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBgColor()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->bgColor:I

    return v0
.end method

.method public getDescColor()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->descColor:I

    return v0
.end method

.method public getDescTypeface()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->descTypeface:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->description:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDescriptionString()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->description:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->description:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getImageDrawable()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->imageDrawable:I

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->titleColor:I

    return v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTitleTypeface()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->titleTypeface:Ljava/lang/String;

    return-object v0
.end method

.method public setBgColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 54
    iput p1, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->bgColor:I

    return-void
.end method

.method public setDescColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 62
    iput p1, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->descColor:I

    return-void
.end method

.method public setDescTypeface(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->descTypeface:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->description:Ljava/lang/CharSequence;

    return-void
.end method

.method public setImageDrawable(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 70
    iput p1, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->imageDrawable:I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->title:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 78
    iput p1, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->titleColor:I

    return-void
.end method

.method public setTitleTypeface(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/model/SliderPage;->titleTypeface:Ljava/lang/String;

    return-void
.end method
