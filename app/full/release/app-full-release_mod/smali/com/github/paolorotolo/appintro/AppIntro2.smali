.class public abstract Lcom/github/paolorotolo/appintro/AppIntro2;
.super Lcom/github/paolorotolo/appintro/AppIntroBase;
.source "AppIntro2.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected backgroundFrame:Landroid/widget/FrameLayout;

.field protected customBackgroundView:Landroid/view/View;

.field private transitionColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/github/paolorotolo/appintro/AppIntro2;

    invoke-static {v0}, Lcom/github/paolorotolo/appintro/util/LogHelper;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/paolorotolo/appintro/AppIntro2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 31
    sget v0, Lcom/github/paolorotolo/appintro/R$layout;->intro_layout2:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget p1, Lcom/github/paolorotolo/appintro/R$id;->background:I

    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->backgroundFrame:Landroid/widget/FrameLayout;

    return-void
.end method

.method public setAnimationColors(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->transitionColors:Ljava/util/ArrayList;

    return-void
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 1

    .line 66
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->customBackgroundView:Landroid/view/View;

    .line 67
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->customBackgroundView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->backgroundFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->customBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setBarColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 50
    sget v0, Lcom/github/paolorotolo/appintro/R$id;->bottom:I

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setImageSkipButton(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 60
    sget v0, Lcom/github/paolorotolo/appintro/R$id;->skip:I

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 61
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public showDoneButton(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro2;->setProgressButtonEnabled(Z)V

    return-void
.end method
