.class final Lcom/github/paolorotolo/appintro/AppIntroBase$WindowGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AppIntroBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/paolorotolo/appintro/AppIntroBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;


# direct methods
.method private constructor <init>(Lcom/github/paolorotolo/appintro/AppIntroBase;)V
    .locals 0

    .line 1072
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$WindowGestureListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/paolorotolo/appintro/AppIntroBase;Lcom/github/paolorotolo/appintro/AppIntroBase$1;)V
    .locals 0

    .line 1072
    invoke-direct {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase$WindowGestureListener;-><init>(Lcom/github/paolorotolo/appintro/AppIntroBase;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1075
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$WindowGestureListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-static {p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$1100(Lcom/github/paolorotolo/appintro/AppIntroBase;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$WindowGestureListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-static {p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$1200(Lcom/github/paolorotolo/appintro/AppIntroBase;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1076
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$WindowGestureListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setImmersiveMode(ZZ)V

    :cond_0
    return v0
.end method
