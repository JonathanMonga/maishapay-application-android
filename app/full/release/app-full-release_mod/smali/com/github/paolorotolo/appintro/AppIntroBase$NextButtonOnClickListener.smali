.class final Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;
.super Ljava/lang/Object;
.source "AppIntroBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/paolorotolo/appintro/AppIntroBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NextButtonOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;


# direct methods
.method private constructor <init>(Lcom/github/paolorotolo/appintro/AppIntroBase;)V
    .locals 0

    .line 978
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/paolorotolo/appintro/AppIntroBase;Lcom/github/paolorotolo/appintro/AppIntroBase$1;)V
    .locals 0

    .line 978
    invoke-direct {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;-><init>(Lcom/github/paolorotolo/appintro/AppIntroBase;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 981
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-boolean p1, p1, Lcom/github/paolorotolo/appintro/AppIntroBase;->isVibrateOn:Z

    if-eqz p1, :cond_0

    .line 982
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object p1, p1, Lcom/github/paolorotolo/appintro/AppIntroBase;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget v0, v0, Lcom/github/paolorotolo/appintro/AppIntroBase;->vibrateIntensity:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 985
    :cond_0
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-static {p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$100(Lcom/github/paolorotolo/appintro/AppIntroBase;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 990
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-static {p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$200(Lcom/github/paolorotolo/appintro/AppIntroBase;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 991
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$300(Lcom/github/paolorotolo/appintro/AppIntroBase;Z)V

    goto :goto_0

    .line 994
    :cond_1
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-static {p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$400(Lcom/github/paolorotolo/appintro/AppIntroBase;)V

    :cond_2
    :goto_0
    return-void
.end method
