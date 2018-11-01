.class public Lcom/nightonke/boommenu/BoomMenuButton;
.super Landroid/widget/FrameLayout;
.source "BoomMenuButton.java"

# interfaces
.implements Lcom/nightonke/boommenu/BoomButtons/InnerOnBoomButtonClickListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "BoomMenuButton"


# instance fields
.field private ableToStartDragging:Z

.field private animatingViewNumber:I

.field private autoBoom:Z

.field private autoBoomImmediately:Z

.field private autoHide:Z

.field private background:Lcom/nightonke/boommenu/BackgroundView;

.field private backgroundEffect:Z

.field private boomButtonBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private boomButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nightonke/boommenu/BoomButtons/BoomButton;",
            ">;"
        }
    .end annotation
.end field

.field private boomEnum:Lcom/nightonke/boommenu/Animation/BoomEnum;

.field private boomInWholeScreen:Z

.field private boomStateEnum:Lcom/nightonke/boommenu/BoomStateEnum;

.field private bottomHamButtonTopMargin:F

.field private button:Landroid/widget/FrameLayout;

.field private buttonBottomMargin:F

.field private buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

.field private buttonHorizontalMargin:F

.field private buttonInclinedMargin:F

.field private buttonLeftMargin:F

.field private buttonPlaceAlignmentEnum:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceAlignmentEnum;

.field private buttonPlaceEnum:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

.field private buttonRadius:I

.field private buttonRightMargin:F

.field private buttonTopMargin:F

.field private buttonVerticalMargin:F

.field private cacheOptimization:Z

.field private cancelable:Z

.field private context:Landroid/content/Context;

.field private customButtonPlacePositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private customPiecePlacePositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private dimColor:I

.field private dotRadius:F

.field private draggable:Z

.field private edgeInsetsInParentView:Landroid/graphics/Rect;

.field private endPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private frames:I

.field private hamButtonHeight:F

.field private hamButtonWidth:F

.field private hamHeight:F

.field private hamWidth:F

.field private hideDelay:J

.field private hideDuration:J

.field private hideMoveEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field private hideRotateEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field private hideScaleEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field private highlightedColor:I

.field private inFragment:Z

.field private inList:Z

.field private isBackPressListened:Z

.field private isDragging:Z

.field private isOrientationAdaptable:Z

.field private isOrientationChanged:Z

.field private lastMotionX:F

.field private lastMotionY:F

.field private lastOrientation:I

.field private lastReboomIndex:I

.field private layoutJobsRunnable:Ljava/lang/Runnable;

.field private needToCalculateStartPositions:Z

.field private needToCreateButtons:Z

.field private needToLayout:Z

.field private normalColor:I

.field private onBoomListener:Lcom/nightonke/boommenu/OnBoomListener;

.field private orderEnum:Lcom/nightonke/boommenu/Animation/OrderEnum;

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private pieceCornerRadius:F

.field private pieceHorizontalMargin:F

.field private pieceInclinedMargin:F

.field private piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

.field private piecePositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private pieceVerticalMargin:F

.field private pieces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nightonke/boommenu/Piece/BoomPiece;",
            ">;"
        }
    .end annotation
.end field

.field private rippleEffect:Z

.field private rotateDegree:I

.field private shadow:Lcom/nightonke/boommenu/BMBShadow;

.field private shadowColor:I

.field private shadowEffect:Z

.field private shadowOffsetX:I

.field private shadowOffsetY:I

.field private shadowRadius:I

.field private shareLine1Color:I

.field private shareLine2Color:I

.field private shareLineLength:F

.field private shareLineWidth:F

.field private shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

.field private showDelay:J

.field private showDuration:J

.field private showMoveEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field private showRotateEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field private showScaleEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

.field private simpleCircleButtonRadius:F

.field private startPositionX:F

.field private startPositionY:F

.field private startPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private textInsideCircleButtonRadius:F

.field private textOutsideCircleButtonHeight:F

.field private textOutsideCircleButtonWidth:F

.field private unableColor:I

.field private use3DTransformAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 188
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToLayout:Z

    .line 77
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isBackPressListened:Z

    .line 90
    sget-object v1, Lcom/nightonke/boommenu/ButtonEnum;->Unknown:Lcom/nightonke/boommenu/ButtonEnum;

    iput-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    const/4 v1, 0x0

    .line 99
    iput-boolean v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->ableToStartDragging:Z

    .line 100
    iput-boolean v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isDragging:Z

    const/high16 v2, -0x40800000    # -1.0f

    .line 101
    iput v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastMotionX:F

    .line 102
    iput v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastMotionY:F

    .line 112
    iput v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceCornerRadius:F

    .line 121
    sget-object v2, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Unknown:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    iput-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->customPiecePlacePositions:Ljava/util/ArrayList;

    .line 125
    iput v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->animatingViewNumber:I

    .line 147
    sget-object v2, Lcom/nightonke/boommenu/BoomStateEnum;->DidReboom:Lcom/nightonke/boommenu/BoomStateEnum;

    iput-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomStateEnum:Lcom/nightonke/boommenu/BoomStateEnum;

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    .line 161
    sget-object v2, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->Unknown:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    iput-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonPlaceEnum:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->customButtonPlacePositions:Ljava/util/ArrayList;

    .line 174
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToCreateButtons:Z

    .line 175
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToCalculateStartPositions:Z

    const/4 v0, -0x1

    .line 176
    iput v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastReboomIndex:I

    .line 180
    iput v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastOrientation:I

    .line 181
    iput-boolean v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isOrientationChanged:Z

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 193
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToLayout:Z

    .line 77
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isBackPressListened:Z

    .line 90
    sget-object v1, Lcom/nightonke/boommenu/ButtonEnum;->Unknown:Lcom/nightonke/boommenu/ButtonEnum;

    iput-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    const/4 v1, 0x0

    .line 99
    iput-boolean v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->ableToStartDragging:Z

    .line 100
    iput-boolean v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isDragging:Z

    const/high16 v2, -0x40800000    # -1.0f

    .line 101
    iput v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastMotionX:F

    .line 102
    iput v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastMotionY:F

    .line 112
    iput v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceCornerRadius:F

    .line 121
    sget-object v2, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Unknown:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    iput-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->customPiecePlacePositions:Ljava/util/ArrayList;

    .line 125
    iput v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->animatingViewNumber:I

    .line 147
    sget-object v2, Lcom/nightonke/boommenu/BoomStateEnum;->DidReboom:Lcom/nightonke/boommenu/BoomStateEnum;

    iput-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomStateEnum:Lcom/nightonke/boommenu/BoomStateEnum;

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    .line 161
    sget-object v2, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->Unknown:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    iput-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonPlaceEnum:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->customButtonPlacePositions:Ljava/util/ArrayList;

    .line 174
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToCreateButtons:Z

    .line 175
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToCalculateStartPositions:Z

    const/4 v0, -0x1

    .line 176
    iput v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastReboomIndex:I

    .line 180
    iput v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastOrientation:I

    .line 181
    iput-boolean v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isOrientationChanged:Z

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/nightonke/boommenu/BoomMenuButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 198
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 72
    iput-boolean p3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToLayout:Z

    .line 77
    iput-boolean p3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isBackPressListened:Z

    .line 90
    sget-object v0, Lcom/nightonke/boommenu/ButtonEnum;->Unknown:Lcom/nightonke/boommenu/ButtonEnum;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->ableToStartDragging:Z

    .line 100
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isDragging:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 101
    iput v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastMotionX:F

    .line 102
    iput v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastMotionY:F

    .line 112
    iput v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceCornerRadius:F

    .line 121
    sget-object v1, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Unknown:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    iput-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->customPiecePlacePositions:Ljava/util/ArrayList;

    .line 125
    iput v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->animatingViewNumber:I

    .line 147
    sget-object v1, Lcom/nightonke/boommenu/BoomStateEnum;->DidReboom:Lcom/nightonke/boommenu/BoomStateEnum;

    iput-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomStateEnum:Lcom/nightonke/boommenu/BoomStateEnum;

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    .line 161
    sget-object v1, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->Unknown:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    iput-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonPlaceEnum:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->customButtonPlacePositions:Ljava/util/ArrayList;

    .line 174
    iput-boolean p3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToCreateButtons:Z

    .line 175
    iput-boolean p3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToCalculateStartPositions:Z

    const/4 p3, -0x1

    .line 176
    iput p3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastReboomIndex:I

    .line 180
    iput p3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastOrientation:I

    .line 181
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isOrientationChanged:Z

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/nightonke/boommenu/BoomMenuButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private ____________________________Animation()V
    .locals 0

    return-void
.end method

.method private ____________________________Builders_and_Buttons()V
    .locals 0

    return-void
.end method

.method private ____________________________Fade_Views()V
    .locals 0

    return-void
.end method

.method private ____________________________Getters_and_Setters()V
    .locals 0

    return-void
.end method

.method private ____________________________Initialization()V
    .locals 0

    return-void
.end method

.method private ____________________________Place_Pieces()V
    .locals 0

    return-void
.end method

.method private ____________________________Support_Methods()V
    .locals 0

    return-void
.end method

.method private ____________________________Touch()V
    .locals 0

    return-void
.end method

.method static synthetic access$000(Lcom/nightonke/boommenu/BoomMenuButton;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->draggable:Z

    return p0
.end method

.method static synthetic access$100(Lcom/nightonke/boommenu/BoomMenuButton;)F
    .locals 0

    .line 66
    iget p0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->startPositionX:F

    return p0
.end method

.method static synthetic access$1000(Lcom/nightonke/boommenu/BoomMenuButton;)Landroid/widget/FrameLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/nightonke/boommenu/BoomMenuButton;F)F
    .locals 0

    .line 66
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->startPositionX:F

    return p1
.end method

.method static synthetic access$1100(Lcom/nightonke/boommenu/BoomMenuButton;)Lcom/nightonke/boommenu/BoomStateEnum;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomStateEnum:Lcom/nightonke/boommenu/BoomStateEnum;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/nightonke/boommenu/BoomMenuButton;Lcom/nightonke/boommenu/BoomStateEnum;)Lcom/nightonke/boommenu/BoomStateEnum;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomStateEnum:Lcom/nightonke/boommenu/BoomStateEnum;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/nightonke/boommenu/BoomMenuButton;)Lcom/nightonke/boommenu/OnBoomListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->onBoomListener:Lcom/nightonke/boommenu/OnBoomListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/nightonke/boommenu/BoomMenuButton;Lcom/nightonke/boommenu/Piece/BoomPiece;Lcom/nightonke/boommenu/BoomButtons/BoomButton;Landroid/graphics/PointF;Landroid/graphics/PointF;IZ)V
    .locals 0

    .line 66
    invoke-direct/range {p0 .. p6}, Lcom/nightonke/boommenu/BoomMenuButton;->innerStartEachBoomAnimation(Lcom/nightonke/boommenu/Piece/BoomPiece;Lcom/nightonke/boommenu/BoomButtons/BoomButton;Landroid/graphics/PointF;Landroid/graphics/PointF;IZ)V

    return-void
.end method

.method static synthetic access$1410(Lcom/nightonke/boommenu/BoomMenuButton;)I
    .locals 2

    .line 66
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->animatingViewNumber:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->animatingViewNumber:I

    return v0
.end method

.method static synthetic access$1500(Lcom/nightonke/boommenu/BoomMenuButton;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->finishReboomAnimations()V

    return-void
.end method

.method static synthetic access$1600(Lcom/nightonke/boommenu/BoomMenuButton;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->doLayoutJobs()V

    return-void
.end method

.method static synthetic access$1700(Lcom/nightonke/boommenu/BoomMenuButton;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastOrientation:I

    return p0
.end method

.method static synthetic access$1702(Lcom/nightonke/boommenu/BoomMenuButton;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastOrientation:I

    return p1
.end method

.method static synthetic access$1802(Lcom/nightonke/boommenu/BoomMenuButton;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isOrientationChanged:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/nightonke/boommenu/BoomMenuButton;)Lcom/nightonke/boommenu/BackgroundView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/nightonke/boommenu/BoomMenuButton;)F
    .locals 0

    .line 66
    iget p0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->startPositionY:F

    return p0
.end method

.method static synthetic access$2000(Lcom/nightonke/boommenu/BoomMenuButton;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->calculateStartPositions(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/nightonke/boommenu/BoomMenuButton;F)F
    .locals 0

    .line 66
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->startPositionY:F

    return p1
.end method

.method static synthetic access$2100(Lcom/nightonke/boommenu/BoomMenuButton;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->calculateEndPositions()V

    return-void
.end method

.method static synthetic access$2200(Lcom/nightonke/boommenu/BoomMenuButton;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->placeButtons()V

    return-void
.end method

.method static synthetic access$2300(Lcom/nightonke/boommenu/BoomMenuButton;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->stopAllAnimations(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/nightonke/boommenu/BoomMenuButton;)F
    .locals 0

    .line 66
    iget p0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastMotionX:F

    return p0
.end method

.method static synthetic access$302(Lcom/nightonke/boommenu/BoomMenuButton;F)F
    .locals 0

    .line 66
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastMotionX:F

    return p1
.end method

.method static synthetic access$400(Lcom/nightonke/boommenu/BoomMenuButton;)F
    .locals 0

    .line 66
    iget p0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastMotionY:F

    return p0
.end method

.method static synthetic access$402(Lcom/nightonke/boommenu/BoomMenuButton;F)F
    .locals 0

    .line 66
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastMotionY:F

    return p1
.end method

.method static synthetic access$500(Lcom/nightonke/boommenu/BoomMenuButton;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->ableToStartDragging:Z

    return p0
.end method

.method static synthetic access$502(Lcom/nightonke/boommenu/BoomMenuButton;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->ableToStartDragging:Z

    return p1
.end method

.method static synthetic access$600(Lcom/nightonke/boommenu/BoomMenuButton;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isDragging:Z

    return p0
.end method

.method static synthetic access$602(Lcom/nightonke/boommenu/BoomMenuButton;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isDragging:Z

    return p1
.end method

.method static synthetic access$700(Lcom/nightonke/boommenu/BoomMenuButton;)Lcom/nightonke/boommenu/BMBShadow;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    return-object p0
.end method

.method static synthetic access$802(Lcom/nightonke/boommenu/BoomMenuButton;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToCalculateStartPositions:Z

    return p1
.end method

.method static synthetic access$900(Lcom/nightonke/boommenu/BoomMenuButton;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->preventDragOutside()V

    return-void
.end method

.method private buttonMaxHeight()F
    .locals 2

    .line 960
    sget-object v0, Lcom/nightonke/boommenu/BoomMenuButton$12;->$SwitchMap$com$nightonke$boommenu$ButtonEnum:[I

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    invoke-virtual {v1}, Lcom/nightonke/boommenu/ButtonEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    .line 964
    :pswitch_0
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hamButtonHeight:F

    return v0

    .line 963
    :pswitch_1
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->textOutsideCircleButtonHeight:F

    return v0

    .line 962
    :pswitch_2
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->textInsideCircleButtonRadius:F

    mul-float/2addr v0, v1

    return v0

    .line 961
    :pswitch_3
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->simpleCircleButtonRadius:F

    mul-float/2addr v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateEndPositions()V
    .locals 4

    .line 907
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    invoke-virtual {v1}, Lcom/nightonke/boommenu/BackgroundView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    .line 908
    invoke-virtual {v2}, Lcom/nightonke/boommenu/BackgroundView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 909
    sget-object v1, Lcom/nightonke/boommenu/BoomMenuButton$12;->$SwitchMap$com$nightonke$boommenu$ButtonEnum:[I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    invoke-virtual {v2}, Lcom/nightonke/boommenu/ButtonEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 924
    :pswitch_0
    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hamButtonWidth:F

    iget v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hamButtonHeight:F

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    .line 926
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 924
    invoke-static {v0, v1, v2, v3, p0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->getPositions(Landroid/graphics/Point;FFILcom/nightonke/boommenu/BoomMenuButton;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->endPositions:Ljava/util/ArrayList;

    goto :goto_0

    .line 919
    :pswitch_1
    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->textOutsideCircleButtonWidth:F

    iget v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->textOutsideCircleButtonHeight:F

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    .line 921
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 919
    invoke-static {v0, v1, v2, v3, p0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->getPositions(Landroid/graphics/Point;FFILcom/nightonke/boommenu/BoomMenuButton;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->endPositions:Ljava/util/ArrayList;

    goto :goto_0

    .line 915
    :pswitch_2
    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->textInsideCircleButtonRadius:F

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    .line 916
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 915
    invoke-static {v0, v1, v2, p0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->getPositions(Landroid/graphics/Point;FILcom/nightonke/boommenu/BoomMenuButton;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->endPositions:Ljava/util/ArrayList;

    goto :goto_0

    .line 911
    :pswitch_3
    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->simpleCircleButtonRadius:F

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    .line 912
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 911
    invoke-static {v0, v1, v2, p0}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceManager;->getPositions(Landroid/graphics/Point;FILcom/nightonke/boommenu/BoomMenuButton;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->endPositions:Ljava/util/ArrayList;

    :goto_0
    const/4 v0, 0x0

    .line 929
    :goto_1
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->endPositions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    iget-object v2, v2, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->centerPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    .line 931
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    iget-object v3, v3, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->centerPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    .line 930
    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->offset(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculatePiecePositions()V
    .locals 3

    .line 439
    sget-object v0, Lcom/nightonke/boommenu/BoomMenuButton$12;->$SwitchMap$com$nightonke$boommenu$ButtonEnum:[I

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    invoke-virtual {v1}, Lcom/nightonke/boommenu/ButtonEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 456
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The button-enum is unknown!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :pswitch_1
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    .line 453
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 452
    invoke-static {p0, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->getHamPositions(Lcom/nightonke/boommenu/BoomMenuButton;Landroid/graphics/Point;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePositions:Ljava/util/ArrayList;

    goto :goto_0

    .line 443
    :pswitch_2
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    sget-object v1, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Share:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    if-ne v0, v1, :cond_0

    .line 444
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    .line 445
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    .line 446
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 444
    invoke-static {p0, v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->getShareDotPositions(Lcom/nightonke/boommenu/BoomMenuButton;Landroid/graphics/Point;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePositions:Ljava/util/ArrayList;

    goto :goto_0

    .line 448
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    .line 449
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 448
    invoke-static {p0, v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->getDotPositions(Lcom/nightonke/boommenu/BoomMenuButton;Landroid/graphics/Point;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePositions:Ljava/util/ArrayList;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateStartPositions(Z)V
    .locals 7

    if-nez p1, :cond_0

    .line 888
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToCalculateStartPositions:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->inList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->inFragment:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 889
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToCalculateStartPositions:Z

    .line 890
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->pieceNumber()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->startPositions:Ljava/util/ArrayList;

    .line 891
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getParentView()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v1, 0x2

    .line 892
    new-array v2, v1, [I

    .line 893
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    move p1, v0

    .line 894
    :goto_0
    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 895
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 896
    new-array v4, v1, [I

    .line 897
    iget-object v5, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 898
    aget v5, v4, v0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePositions:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v6

    aget v6, v2, v0

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    .line 899
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nightonke/boommenu/Piece/BoomPiece;

    invoke-virtual {v6}, Lcom/nightonke/boommenu/Piece/BoomPiece;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/2addr v6, v1

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x1

    .line 900
    aget v4, v4, v5

    int-to-float v4, v4

    iget-object v6, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePositions:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v6

    aget v5, v2, v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    .line 901
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nightonke/boommenu/Piece/BoomPiece;

    invoke-virtual {v5}, Lcom/nightonke/boommenu/Piece/BoomPiece;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/2addr v5, v1

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 902
    iget-object v4, p0, Lcom/nightonke/boommenu/BoomMenuButton;->startPositions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private checkAutoBoom()V
    .locals 1

    .line 1068
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->autoBoomImmediately:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->boomImmediately()V

    goto :goto_0

    .line 1069
    :cond_0
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->autoBoom:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->boom()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1070
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->autoBoom:Z

    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->autoBoomImmediately:Z

    return-void
.end method

.method private clearBackground()V
    .locals 3

    const/4 v0, 0x1

    .line 842
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x8

    invoke-static {v1, v0}, Lcom/nightonke/boommenu/Util;->setVisibility(I[Landroid/view/View;)V

    .line 843
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->cacheOptimization:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->inList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->inFragment:Z

    if-eqz v0, :cond_1

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    invoke-virtual {v0}, Lcom/nightonke/boommenu/BackgroundView;->removeAllViews()V

    .line 845
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    invoke-virtual {v0}, Lcom/nightonke/boommenu/BackgroundView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 846
    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    :cond_1
    return-void
.end method

.method private clearButtons()V
    .locals 3

    const/4 v0, 0x1

    .line 954
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToCreateButtons:Z

    .line 955
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    invoke-virtual {v2, v1}, Lcom/nightonke/boommenu/BackgroundView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private clearPieces()V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nightonke/boommenu/Piece/BoomPiece;

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method private clearViews(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 947
    iget-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->cacheOptimization:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->inList:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->inFragment:Z

    if-eqz p1, :cond_1

    .line 948
    :cond_0
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->clearButtons()V

    .line 949
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->clearBackground()V

    :cond_1
    return-void
.end method

.method private createBackground()V
    .locals 2

    .line 823
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    if-nez v0, :cond_0

    .line 824
    new-instance v0, Lcom/nightonke/boommenu/BackgroundView;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/nightonke/boommenu/BackgroundView;-><init>(Landroid/content/Context;Lcom/nightonke/boommenu/BoomMenuButton;)V

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    :cond_0
    return-void
.end method

.method private createButtons()V
    .locals 5

    .line 851
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToCreateButtons:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 852
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToCreateButtons:Z

    .line 853
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    .line 854
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move v1, v0

    .line 855
    :goto_0
    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 856
    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;

    invoke-virtual {v3, p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->innerListener(Lcom/nightonke/boommenu/BoomButtons/InnerOnBoomButtonClickListener;)Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->index(I)Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nightonke/boommenu/BoomMenuButton;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->build(Landroid/content/Context;)Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 857
    :cond_1
    sget-object v1, Lcom/nightonke/boommenu/BoomMenuButton$12;->$SwitchMap$com$nightonke$boommenu$ButtonEnum:[I

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    invoke-virtual {v2}, Lcom/nightonke/boommenu/ButtonEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 873
    :pswitch_0
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    .line 874
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    invoke-virtual {v1}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->getButtonWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hamButtonWidth:F

    .line 875
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    .line 876
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;

    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/HamButton$Builder;->getButtonHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hamButtonHeight:F

    goto :goto_1

    .line 867
    :pswitch_1
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    .line 868
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;

    invoke-virtual {v1}, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->getButtonContentWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->textOutsideCircleButtonWidth:F

    .line 869
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    .line 870
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;

    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/TextOutsideCircleButton$Builder;->getButtonContentHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->textOutsideCircleButtonHeight:F

    goto :goto_1

    .line 863
    :pswitch_2
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    .line 864
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;

    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/TextInsideCircleButton$Builder;->getButtonRadius()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->textInsideCircleButtonRadius:F

    goto :goto_1

    .line 859
    :pswitch_3
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    .line 860
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;

    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/SimpleCircleButton$Builder;->getButtonRadius()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->simpleCircleButtonRadius:F

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createPieces()V
    .locals 4

    .line 415
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->calculatePiecePositions()V

    .line 416
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->pieceNumber()I

    move-result v0

    .line 417
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 419
    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;

    invoke-static {p0, v3}, Lcom/nightonke/boommenu/Piece/PiecePlaceManager;->createPiece(Lcom/nightonke/boommenu/BoomMenuButton;Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;)Lcom/nightonke/boommenu/Piece/BoomPiece;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private delayToDoLayoutJobs()V
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->layoutJobsRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1013
    new-instance v0, Lcom/nightonke/boommenu/BoomMenuButton$7;

    invoke-direct {v0, p0}, Lcom/nightonke/boommenu/BoomMenuButton$7;-><init>(Lcom/nightonke/boommenu/BoomMenuButton;)V

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->layoutJobsRunnable:Ljava/lang/Runnable;

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->layoutJobsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dimBackground(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 603
    invoke-direct/range {p0 .. p0}, Lcom/nightonke/boommenu/BoomMenuButton;->createBackground()V

    const/4 v1, 0x1

    .line 604
    new-array v2, v1, [Landroid/view/View;

    iget-object v3, v0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v4, v2}, Lcom/nightonke/boommenu/Util;->setVisibility(I[Landroid/view/View;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x1

    move-wide v12, v1

    goto :goto_0

    .line 605
    :cond_0
    iget-wide v2, v0, Lcom/nightonke/boommenu/BoomMenuButton;->showDuration:J

    iget-wide v4, v0, Lcom/nightonke/boommenu/BoomMenuButton;->showDelay:J

    iget-object v6, v0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long v6, v2, v4

    move-wide v12, v6

    .line 606
    :goto_0
    iget-object v1, v0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    new-instance v2, Lcom/nightonke/boommenu/BoomMenuButton$3;

    invoke-direct {v2, v0}, Lcom/nightonke/boommenu/BoomMenuButton$3;-><init>(Lcom/nightonke/boommenu/BoomMenuButton;)V

    invoke-virtual {v1, v12, v13, v2}, Lcom/nightonke/boommenu/BackgroundView;->dim(JLandroid/animation/AnimatorListenerAdapter;)V

    .line 614
    iget-object v1, v0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    sget-object v2, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Share:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    if-ne v1, v2, :cond_1

    .line 615
    iget-object v8, v0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    const-string v9, "showProcess"

    const-wide/16 v10, 0x0

    sget-object v1, Lcom/nightonke/boommenu/Animation/EaseEnum;->Linear:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 616
    invoke-static {v1}, Lcom/nightonke/boommenu/Animation/Ease;->getInstance(Lcom/nightonke/boommenu/Animation/EaseEnum;)Lcom/nightonke/boommenu/Animation/Ease;

    move-result-object v14

    const/4 v1, 0x2

    new-array v15, v1, [F

    fill-array-data v15, :array_0

    .line 615
    invoke-static/range {v8 .. v15}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;[F)Landroid/animation/ObjectAnimator;

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private doLayoutJobs()V
    .locals 1

    .line 399
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->uninitializedBoomButtons()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->clearPieces()V

    .line 401
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->createPieces()V

    .line 402
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->placeShareLinesView()V

    .line 403
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->placePieces()V

    .line 404
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->placePiecesAtPositions()V

    const/4 v0, 0x0

    .line 405
    invoke-direct {p0, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->calculateStartPositions(Z)V

    .line 406
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->setShareLinesViewData()V

    return-void
.end method

.method private finishReboomAnimations()V
    .locals 2

    .line 631
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 634
    :cond_0
    sget-object v0, Lcom/nightonke/boommenu/BoomStateEnum;->DidReboom:Lcom/nightonke/boommenu/BoomStateEnum;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomStateEnum:Lcom/nightonke/boommenu/BoomStateEnum;

    .line 635
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->onBoomListener:Lcom/nightonke/boommenu/OnBoomListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->onBoomListener:Lcom/nightonke/boommenu/OnBoomListener;

    invoke-interface {v0}, Lcom/nightonke/boommenu/OnBoomListener;->onBoomDidHide()V

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/BackgroundView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 637
    invoke-direct {p0, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->clearViews(Z)V

    return-void
.end method

.method private getFadeViews()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1303
    :goto_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1304
    invoke-virtual {p0, v1}, Lcom/nightonke/boommenu/BoomMenuButton;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1305
    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    if-eq v2, v3, :cond_0

    .line 1307
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 203
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->context:Landroid/content/Context;

    .line 205
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nightonke/boommenu/R$layout;->bmb:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/nightonke/boommenu/BoomMenuButton;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 207
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->initShadow()V

    .line 208
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->initButton()V

    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 212
    sget-object v0, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    :try_start_0
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_cacheOptimization:I

    sget v0, Lcom/nightonke/boommenu/R$bool;->default_bmb_cacheOptimization:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getBoolean(Landroid/content/res/TypedArray;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->cacheOptimization:Z

    .line 218
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_boomInWholeScreen:I

    sget v0, Lcom/nightonke/boommenu/R$bool;->default_bmb_boomInWholeScreen:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getBoolean(Landroid/content/res/TypedArray;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomInWholeScreen:Z

    .line 219
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_inList:I

    sget v0, Lcom/nightonke/boommenu/R$bool;->default_bmb_inList:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getBoolean(Landroid/content/res/TypedArray;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->inList:Z

    .line 220
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_inFragment:I

    sget v0, Lcom/nightonke/boommenu/R$bool;->default_bmb_inFragment:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getBoolean(Landroid/content/res/TypedArray;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->inFragment:Z

    .line 221
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_backPressListened:I

    sget v0, Lcom/nightonke/boommenu/R$bool;->default_bmb_backPressListened:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getBoolean(Landroid/content/res/TypedArray;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isBackPressListened:Z

    .line 222
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_orientationAdaptable:I

    sget v0, Lcom/nightonke/boommenu/R$bool;->default_bmb_orientationAdaptable:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getBoolean(Landroid/content/res/TypedArray;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isOrientationAdaptable:Z

    .line 225
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_shadowEffect:I

    sget v0, Lcom/nightonke/boommenu/R$bool;->default_bmb_shadow_effect:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getBoolean(Landroid/content/res/TypedArray;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowEffect:Z

    .line 226
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_shadowRadius:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_shadow_radius:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowRadius:I

    .line 227
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_shadowOffsetX:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_shadow_offset_x:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowOffsetX:I

    .line 228
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_shadowOffsetY:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_shadow_offset_y:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowOffsetY:I

    .line 229
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_shadowColor:I

    sget v0, Lcom/nightonke/boommenu/R$color;->default_bmb_shadow_color:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowColor:I

    .line 232
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_buttonRadius:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_button_radius:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonRadius:I

    .line 233
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_buttonEnum:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_button_enum:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    invoke-static {p2}, Lcom/nightonke/boommenu/ButtonEnum;->getEnum(I)Lcom/nightonke/boommenu/ButtonEnum;

    move-result-object p2

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    .line 234
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_backgroundEffect:I

    sget v0, Lcom/nightonke/boommenu/R$bool;->default_bmb_background_effect:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getBoolean(Landroid/content/res/TypedArray;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->backgroundEffect:Z

    .line 235
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_rippleEffect:I

    sget v0, Lcom/nightonke/boommenu/R$bool;->default_bmb_ripple_effect:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getBoolean(Landroid/content/res/TypedArray;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->rippleEffect:Z

    .line 236
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_normalColor:I

    sget v0, Lcom/nightonke/boommenu/R$color;->default_bmb_normal_color:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->normalColor:I

    .line 237
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_highlightedColor:I

    sget v0, Lcom/nightonke/boommenu/R$color;->default_bmb_highlighted_color:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->highlightedColor:I

    .line 238
    iget p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->highlightedColor:I

    if-nez p2, :cond_1

    iget p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->normalColor:I

    invoke-static {p2}, Lcom/nightonke/boommenu/Util;->getDarkerColor(I)I

    move-result p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->highlightedColor:I

    .line 239
    :cond_1
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_unableColor:I

    sget v0, Lcom/nightonke/boommenu/R$color;->default_bmb_unable_color:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->unableColor:I

    .line 240
    iget p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->unableColor:I

    if-nez p2, :cond_2

    iget p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->normalColor:I

    invoke-static {p2}, Lcom/nightonke/boommenu/Util;->getLighterColor(I)I

    move-result p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->unableColor:I

    .line 241
    :cond_2
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_draggable:I

    sget v0, Lcom/nightonke/boommenu/R$bool;->default_bmb_draggable:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getBoolean(Landroid/content/res/TypedArray;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->draggable:Z

    .line 242
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->edgeInsetsInParentView:Landroid/graphics/Rect;

    .line 243
    iget-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->edgeInsetsInParentView:Landroid/graphics/Rect;

    sget v0, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_edgeInsetsLeft:I

    sget v1, Lcom/nightonke/boommenu/R$dimen;->default_bmb_edgeInsetsLeft:I

    invoke-static {p1, v0, v1}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 244
    iget-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->edgeInsetsInParentView:Landroid/graphics/Rect;

    sget v0, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_edgeInsetsTop:I

    sget v1, Lcom/nightonke/boommenu/R$dimen;->default_bmb_edgeInsetsTop:I

    invoke-static {p1, v0, v1}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 245
    iget-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->edgeInsetsInParentView:Landroid/graphics/Rect;

    sget v0, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_edgeInsetsRight:I

    sget v1, Lcom/nightonke/boommenu/R$dimen;->default_bmb_edgeInsetsRight:I

    invoke-static {p1, v0, v1}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 246
    iget-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->edgeInsetsInParentView:Landroid/graphics/Rect;

    sget v0, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_edgeInsetsBottom:I

    sget v1, Lcom/nightonke/boommenu/R$dimen;->default_bmb_edgeInsetsBottom:I

    invoke-static {p1, v0, v1}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 249
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_dotRadius:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_dotRadius:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->dotRadius:F

    .line 250
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_hamWidth:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_hamWidth:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hamWidth:F

    .line 251
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_hamHeight:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_hamHeight:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hamHeight:F

    .line 252
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_pieceCornerRadius:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_pieceCornerRadius:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceCornerRadius:F

    .line 253
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_pieceHorizontalMargin:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_pieceHorizontalMargin:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceHorizontalMargin:F

    .line 254
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_pieceVerticalMargin:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_pieceVerticalMargin:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceVerticalMargin:F

    .line 255
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_pieceInclinedMargin:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_pieceInclinedMargin:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceInclinedMargin:F

    .line 256
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_sharedLineLength:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_sharedLineLength:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLineLength:F

    .line 257
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_shareLine1Color:I

    sget v0, Lcom/nightonke/boommenu/R$color;->default_bmb_shareLine1Color:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLine1Color:I

    .line 258
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_shareLine2Color:I

    sget v0, Lcom/nightonke/boommenu/R$color;->default_bmb_shareLine2Color:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLine2Color:I

    .line 259
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_shareLineWidth:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_shareLineWidth:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLineWidth:F

    .line 260
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_piecePlaceEnum:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_pieceEnum:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    invoke-static {p2}, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->getEnum(I)Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    move-result-object p2

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    .line 263
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_dimColor:I

    sget v0, Lcom/nightonke/boommenu/R$color;->default_bmb_dimColor:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->dimColor:I

    .line 264
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_showDuration:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_showDuration:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showDuration:J

    .line 265
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_showDelay:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_showDelay:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showDelay:J

    .line 266
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_hideDuration:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_hideDuration:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideDuration:J

    .line 267
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_hideDelay:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_hideDelay:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideDelay:J

    .line 268
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_cancelable:I

    sget v0, Lcom/nightonke/boommenu/R$bool;->default_bmb_cancelable:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getBoolean(Landroid/content/res/TypedArray;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->cancelable:Z

    .line 269
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_autoHide:I

    sget v0, Lcom/nightonke/boommenu/R$bool;->default_bmb_autoHide:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getBoolean(Landroid/content/res/TypedArray;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->autoHide:Z

    .line 270
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_orderEnum:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_orderEnum:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    invoke-static {p2}, Lcom/nightonke/boommenu/Animation/OrderEnum;->getEnum(I)Lcom/nightonke/boommenu/Animation/OrderEnum;

    move-result-object p2

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->orderEnum:Lcom/nightonke/boommenu/Animation/OrderEnum;

    .line 271
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_frames:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_frames:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->frames:I

    .line 272
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_boomEnum:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_boomEnum:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    invoke-static {p2}, Lcom/nightonke/boommenu/Animation/BoomEnum;->getEnum(I)Lcom/nightonke/boommenu/Animation/BoomEnum;

    move-result-object p2

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomEnum:Lcom/nightonke/boommenu/Animation/BoomEnum;

    .line 273
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_showMoveEaseEnum:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_showMoveEaseEnum:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    invoke-static {p2}, Lcom/nightonke/boommenu/Animation/EaseEnum;->getEnum(I)Lcom/nightonke/boommenu/Animation/EaseEnum;

    move-result-object p2

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showMoveEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 274
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_showScaleEaseEnum:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_showScaleEaseEnum:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    invoke-static {p2}, Lcom/nightonke/boommenu/Animation/EaseEnum;->getEnum(I)Lcom/nightonke/boommenu/Animation/EaseEnum;

    move-result-object p2

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showScaleEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 275
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_showRotateEaseEnum:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_showRotateEaseEnum:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    invoke-static {p2}, Lcom/nightonke/boommenu/Animation/EaseEnum;->getEnum(I)Lcom/nightonke/boommenu/Animation/EaseEnum;

    move-result-object p2

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showRotateEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 276
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_hideMoveEaseEnum:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_hideMoveEaseEnum:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    invoke-static {p2}, Lcom/nightonke/boommenu/Animation/EaseEnum;->getEnum(I)Lcom/nightonke/boommenu/Animation/EaseEnum;

    move-result-object p2

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideMoveEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 277
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_hideScaleEaseEnum:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_hideScaleEaseEnum:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    invoke-static {p2}, Lcom/nightonke/boommenu/Animation/EaseEnum;->getEnum(I)Lcom/nightonke/boommenu/Animation/EaseEnum;

    move-result-object p2

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideScaleEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 278
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_hideRotateEaseEnum:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_hideRotateEaseEnum:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    invoke-static {p2}, Lcom/nightonke/boommenu/Animation/EaseEnum;->getEnum(I)Lcom/nightonke/boommenu/Animation/EaseEnum;

    move-result-object p2

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideRotateEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 279
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_rotateDegree:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_rotateDegree:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->rotateDegree:I

    .line 280
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_use3DTransformAnimation:I

    sget v0, Lcom/nightonke/boommenu/R$bool;->default_bmb_use3DTransformAnimation:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getBoolean(Landroid/content/res/TypedArray;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->use3DTransformAnimation:Z

    .line 281
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_autoBoom:I

    sget v0, Lcom/nightonke/boommenu/R$bool;->default_bmb_autoBoom:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getBoolean(Landroid/content/res/TypedArray;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->autoBoom:Z

    .line 282
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_autoBoomImmediately:I

    sget v0, Lcom/nightonke/boommenu/R$bool;->default_bmb_autoBoomImmediately:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getBoolean(Landroid/content/res/TypedArray;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->autoBoomImmediately:Z

    .line 285
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_buttonPlaceEnum:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_buttonPlaceEnum:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    invoke-static {p2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->getEnum(I)Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    move-result-object p2

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonPlaceEnum:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    .line 286
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_buttonPlaceAlignmentEnum:I

    sget v0, Lcom/nightonke/boommenu/R$integer;->default_bmb_buttonPlaceAlignmentEnum:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getInt(Landroid/content/res/TypedArray;II)I

    move-result p2

    invoke-static {p2}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceAlignmentEnum;->getEnum(I)Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceAlignmentEnum;

    move-result-object p2

    iput-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonPlaceAlignmentEnum:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceAlignmentEnum;

    .line 287
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_buttonHorizontalMargin:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_buttonHorizontalMargin:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonHorizontalMargin:F

    .line 288
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_buttonVerticalMargin:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_buttonVerticalMargin:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonVerticalMargin:F

    .line 289
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_buttonInclinedMargin:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_buttonInclinedMargin:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonInclinedMargin:F

    .line 290
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_buttonTopMargin:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_buttonTopMargin:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonTopMargin:F

    .line 291
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_buttonBottomMargin:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_buttonBottomMargin:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonBottomMargin:F

    .line 292
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_buttonLeftMargin:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_buttonLeftMargin:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonLeftMargin:F

    .line 293
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_buttonRightMargin:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_buttonRightMargin:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonRightMargin:F

    .line 294
    sget p2, Lcom/nightonke/boommenu/R$styleable;->BoomMenuButton_bmb_bottomHamButtonTopMargin:I

    sget v0, Lcom/nightonke/boommenu/R$dimen;->default_bmb_bottomHamButtonTopMargin:I

    invoke-static {p1, p2, v0}, Lcom/nightonke/boommenu/Util;->getDimenOffset(Landroid/content/res/TypedArray;II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->bottomHamButtonTopMargin:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private initButton()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    sget v0, Lcom/nightonke/boommenu/R$id;->button:I

    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/nightonke/boommenu/BoomMenuButton$1;

    invoke-direct {v1, p0}, Lcom/nightonke/boommenu/BoomMenuButton$1;-><init>(Lcom/nightonke/boommenu/BoomMenuButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->initDraggableTouchListener()V

    .line 325
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->setButtonSize()V

    .line 326
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->setButtonBackground()V

    return-void
.end method

.method private initDraggableTouchListener()V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 466
    :cond_0
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->draggable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/nightonke/boommenu/BoomMenuButton$2;

    invoke-direct {v1, p0}, Lcom/nightonke/boommenu/BoomMenuButton$2;-><init>(Lcom/nightonke/boommenu/BoomMenuButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void
.end method

.method private initOrientationListener()V
    .locals 2

    .line 1086
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 1087
    new-instance v0, Lcom/nightonke/boommenu/BoomMenuButton$8;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/nightonke/boommenu/BoomMenuButton$8;-><init>(Lcom/nightonke/boommenu/BoomMenuButton;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    return-void
.end method

.method private initShadow()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    if-nez v0, :cond_0

    sget v0, Lcom/nightonke/boommenu/R$id;->shadow:I

    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nightonke/boommenu/BMBShadow;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowEffect:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->backgroundEffect:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->inList:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 303
    :goto_0
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    invoke-virtual {v1, v0}, Lcom/nightonke/boommenu/BMBShadow;->setShadowEffect(Z)V

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowOffsetX:I

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/BMBShadow;->setShadowOffsetX(I)V

    .line 306
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowOffsetY:I

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/BMBShadow;->setShadowOffsetY(I)V

    .line 307
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowColor:I

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/BMBShadow;->setShadowColor(I)V

    .line 308
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowRadius:I

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/BMBShadow;->setShadowRadius(I)V

    .line 309
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowRadius:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonRadius:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/BMBShadow;->setShadowCornerRadius(I)V

    goto :goto_1

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadow:Lcom/nightonke/boommenu/BMBShadow;

    invoke-virtual {v0}, Lcom/nightonke/boommenu/BMBShadow;->clearShadow()V

    :goto_1
    return-void
.end method

.method private innerBoom(Z)V
    .locals 2

    .line 561
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomStateEnum:Lcom/nightonke/boommenu/BoomStateEnum;

    sget-object v1, Lcom/nightonke/boommenu/BoomStateEnum;->DidReboom:Lcom/nightonke/boommenu/BoomStateEnum;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/nightonke/boommenu/ExceptionManager;->judge(Lcom/nightonke/boommenu/BoomMenuButton;Ljava/util/ArrayList;)V

    .line 563
    sget-object v0, Lcom/nightonke/boommenu/BoomStateEnum;->WillBoom:Lcom/nightonke/boommenu/BoomStateEnum;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomStateEnum:Lcom/nightonke/boommenu/BoomStateEnum;

    .line 564
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->onBoomListener:Lcom/nightonke/boommenu/OnBoomListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->onBoomListener:Lcom/nightonke/boommenu/OnBoomListener;

    invoke-interface {v0}, Lcom/nightonke/boommenu/OnBoomListener;->onBoomWillShow()V

    :cond_1
    const/4 v0, 0x0

    .line 565
    invoke-direct {p0, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->calculateStartPositions(Z)V

    .line 566
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->createButtons()V

    .line 567
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->dimBackground(Z)V

    .line 568
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->startBoomAnimations(Z)V

    .line 569
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->startBoomAnimationForFadeViews(Z)V

    .line 570
    iget-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isBackPressListened:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 571
    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->setFocusable(Z)V

    .line 572
    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->setFocusableInTouchMode(Z)V

    .line 573
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->requestFocus()Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private innerReboom(Z)V
    .locals 2

    .line 590
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomStateEnum:Lcom/nightonke/boommenu/BoomStateEnum;

    sget-object v1, Lcom/nightonke/boommenu/BoomStateEnum;->DidBoom:Lcom/nightonke/boommenu/BoomStateEnum;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    sget-object v0, Lcom/nightonke/boommenu/BoomStateEnum;->WillReboom:Lcom/nightonke/boommenu/BoomStateEnum;

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomStateEnum:Lcom/nightonke/boommenu/BoomStateEnum;

    .line 592
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->onBoomListener:Lcom/nightonke/boommenu/OnBoomListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->onBoomListener:Lcom/nightonke/boommenu/OnBoomListener;

    invoke-interface {v0}, Lcom/nightonke/boommenu/OnBoomListener;->onBoomWillHide()V

    .line 593
    :cond_1
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->lightBackground(Z)V

    .line 594
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->startReboomAnimations(Z)V

    .line 595
    invoke-direct {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->startReboomAnimationForFadeViews(Z)V

    .line 596
    iget-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isBackPressListened:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 597
    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->setFocusable(Z)V

    .line 598
    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->setFocusableInTouchMode(Z)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private innerStartEachBoomAnimation(Lcom/nightonke/boommenu/Piece/BoomPiece;Lcom/nightonke/boommenu/BoomButtons/BoomButton;Landroid/graphics/PointF;Landroid/graphics/PointF;IZ)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 710
    iget v2, v0, Lcom/nightonke/boommenu/BoomMenuButton;->animatingViewNumber:I

    const/4 v9, 0x1

    add-int/2addr v2, v9

    iput v2, v0, Lcom/nightonke/boommenu/BoomMenuButton;->animatingViewNumber:I

    .line 711
    iget v2, v0, Lcom/nightonke/boommenu/BoomMenuButton;->frames:I

    add-int/2addr v2, v9

    new-array v12, v2, [F

    .line 712
    iget v2, v0, Lcom/nightonke/boommenu/BoomMenuButton;->frames:I

    add-int/2addr v2, v9

    new-array v13, v2, [F

    .line 713
    invoke-virtual/range {p1 .. p1}, Lcom/nightonke/boommenu/Piece/BoomPiece;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v2, v14

    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->contentWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v15, v2, v3

    .line 714
    invoke-virtual/range {p1 .. p1}, Lcom/nightonke/boommenu/Piece/BoomPiece;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v14

    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->contentHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v2, v3

    const-wide/16 v2, 0x1

    if-eqz p6, :cond_0

    move-wide/from16 v24, v2

    goto :goto_0

    .line 715
    :cond_0
    iget-wide v4, v0, Lcom/nightonke/boommenu/BoomMenuButton;->showDelay:J

    move/from16 v6, p5

    int-to-long v6, v6

    mul-long/2addr v4, v6

    move-wide/from16 v24, v4

    :goto_0
    if-eqz p6, :cond_1

    move-wide/from16 v26, v2

    goto :goto_1

    .line 716
    :cond_1
    iget-wide v1, v0, Lcom/nightonke/boommenu/BoomMenuButton;->showDuration:J

    move-wide/from16 v26, v1

    .line 717
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->setSelfScaleAnchorPoints()V

    .line 718
    invoke-virtual {v10, v15}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->setScaleX(F)V

    .line 719
    invoke-virtual {v10, v8}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->setScaleY(F)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->hideAllGoneViews()V

    .line 721
    iget-object v1, v0, Lcom/nightonke/boommenu/BoomMenuButton;->boomEnum:Lcom/nightonke/boommenu/Animation/BoomEnum;

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    .line 722
    invoke-virtual {v3}, Lcom/nightonke/boommenu/BackgroundView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    invoke-virtual {v4}, Lcom/nightonke/boommenu/BackgroundView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v3, v0, Lcom/nightonke/boommenu/BoomMenuButton;->showMoveEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 723
    invoke-static {v3}, Lcom/nightonke/boommenu/Animation/Ease;->getInstance(Lcom/nightonke/boommenu/Animation/EaseEnum;)Lcom/nightonke/boommenu/Animation/Ease;

    move-result-object v3

    iget v4, v0, Lcom/nightonke/boommenu/BoomMenuButton;->frames:I

    move-object v5, v11

    move-object/from16 v6, p4

    move-object v7, v12

    move/from16 v28, v8

    move-object v8, v13

    .line 721
    invoke-static/range {v1 .. v8}, Lcom/nightonke/boommenu/Animation/AnimationManager;->calculateShowXY(Lcom/nightonke/boommenu/Animation/BoomEnum;Landroid/graphics/PointF;Lcom/nightonke/boommenu/Animation/Ease;ILandroid/graphics/PointF;Landroid/graphics/PointF;[F[F)V

    .line 724
    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->isNeededColorAnimation()Z

    move-result v1

    const/16 v29, 0x0

    const/4 v8, 0x2

    if-eqz v1, :cond_3

    .line 725
    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->prepareColorTransformAnimation()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "rippleButtonColor"

    .line 726
    invoke-static {}, Lcom/nightonke/boommenu/Animation/ShowRgbEvaluator;->getInstance()Lcom/nightonke/boommenu/Animation/ShowRgbEvaluator;

    move-result-object v7

    new-array v5, v8, [I

    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColor()I

    move-result v1

    aput v1, v5, v29

    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonColor()I

    move-result v1

    aput v1, v5, v9

    move-object v1, v10

    move-wide/from16 v3, v24

    move-object/from16 v16, v5

    move-wide/from16 v5, v26

    move v14, v8

    move-object/from16 v8, v16

    invoke-static/range {v1 .. v8}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TypeEvaluator;[I)Landroid/animation/ObjectAnimator;

    goto :goto_2

    :cond_2
    move v14, v8

    const-string v2, "nonRippleButtonColor"

    .line 728
    invoke-static {}, Lcom/nightonke/boommenu/Animation/ShowRgbEvaluator;->getInstance()Lcom/nightonke/boommenu/Animation/ShowRgbEvaluator;

    move-result-object v7

    new-array v8, v14, [I

    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColor()I

    move-result v1

    aput v1, v8, v29

    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonColor()I

    move-result v1

    aput v1, v8, v9

    move-object v1, v10

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    invoke-static/range {v1 .. v8}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TypeEvaluator;[I)Landroid/animation/ObjectAnimator;

    goto :goto_2

    :cond_3
    move v14, v8

    :goto_2
    const-string v2, "x"

    .line 730
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v1, v10

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-object v8, v12

    invoke-static/range {v1 .. v8}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;[F)Landroid/animation/ObjectAnimator;

    const-string v2, "y"

    .line 731
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v8, v13

    invoke-static/range {v1 .. v8}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;[F)Landroid/animation/ObjectAnimator;

    .line 732
    iget-object v1, v0, Lcom/nightonke/boommenu/BoomMenuButton;->showRotateEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    invoke-static {v1}, Lcom/nightonke/boommenu/Animation/Ease;->getInstance(Lcom/nightonke/boommenu/Animation/EaseEnum;)Lcom/nightonke/boommenu/Animation/Ease;

    move-result-object v6

    new-array v7, v14, [F

    const/4 v8, 0x0

    aput v8, v7, v29

    iget v1, v0, Lcom/nightonke/boommenu/BoomMenuButton;->rotateDegree:I

    int-to-float v1, v1

    aput v1, v7, v9

    move-object v1, v10

    move-wide/from16 v2, v24

    move-wide/from16 v4, v26

    invoke-static/range {v1 .. v7}, Lcom/nightonke/boommenu/Animation/AnimationManager;->rotate(Lcom/nightonke/boommenu/BoomButtons/BoomButton;JJLandroid/animation/TimeInterpolator;[F)V

    const-string v16, "alpha"

    .line 733
    new-array v1, v14, [F

    fill-array-data v1, :array_0

    sget-object v2, Lcom/nightonke/boommenu/Animation/EaseEnum;->Linear:Lcom/nightonke/boommenu/Animation/EaseEnum;

    invoke-static {v2}, Lcom/nightonke/boommenu/Animation/Ease;->getInstance(Lcom/nightonke/boommenu/Animation/EaseEnum;)Lcom/nightonke/boommenu/Animation/Ease;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->goneViews()Ljava/util/ArrayList;

    move-result-object v23

    move-wide/from16 v17, v24

    move-wide/from16 v19, v26

    move-object/from16 v21, v1

    invoke-static/range {v16 .. v23}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/String;JJ[FLandroid/animation/TimeInterpolator;Ljava/util/ArrayList;)V

    const-string v2, "scaleX"

    .line 734
    iget-object v1, v0, Lcom/nightonke/boommenu/BoomMenuButton;->showScaleEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    invoke-static {v1}, Lcom/nightonke/boommenu/Animation/Ease;->getInstance(Lcom/nightonke/boommenu/Animation/EaseEnum;)Lcom/nightonke/boommenu/Animation/Ease;

    move-result-object v7

    new-array v5, v14, [F

    aput v15, v5, v29

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v5, v9

    move-object v1, v10

    move-wide/from16 v3, v24

    move-object v15, v5

    move-wide/from16 v5, v26

    move-object v8, v15

    invoke-static/range {v1 .. v8}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;[F)Landroid/animation/ObjectAnimator;

    const-string v2, "scaleY"

    .line 735
    iget-object v1, v0, Lcom/nightonke/boommenu/BoomMenuButton;->showScaleEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    invoke-static {v1}, Lcom/nightonke/boommenu/Animation/Ease;->getInstance(Lcom/nightonke/boommenu/Animation/EaseEnum;)Lcom/nightonke/boommenu/Animation/Ease;

    move-result-object v7

    new-instance v8, Lcom/nightonke/boommenu/BoomMenuButton$5;

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v1, v10}, Lcom/nightonke/boommenu/BoomMenuButton$5;-><init>(Lcom/nightonke/boommenu/BoomMenuButton;Lcom/nightonke/boommenu/Piece/BoomPiece;Lcom/nightonke/boommenu/BoomButtons/BoomButton;)V

    new-array v14, v14, [F

    aput v28, v14, v29

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v14, v9

    move-object v1, v10

    move-object v9, v14

    invoke-static/range {v1 .. v9}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;[F)Landroid/animation/ObjectAnimator;

    .line 753
    iget-boolean v1, v0, Lcom/nightonke/boommenu/BoomMenuButton;->use3DTransformAnimation:Z

    if-eqz v1, :cond_4

    move-object v1, v12

    move-object v2, v13

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-object v7, v10

    .line 754
    invoke-static/range {v1 .. v7}, Lcom/nightonke/boommenu/Animation/AnimationManager;->getRotate3DAnimation([F[FJJLcom/nightonke/boommenu/BoomButtons/BoomButton;)Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;

    move-result-object v1

    .line 756
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v10, v2, v3}, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->set(Landroid/view/View;FF)V

    const/4 v2, 0x0

    .line 757
    invoke-virtual {v10, v2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->setCameraDistance(F)V

    .line 758
    invoke-virtual {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isBatterySaveModeTurnOn()Z
    .locals 3

    .line 1063
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1064
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lightBackground(Z)V
    .locals 14

    .line 621
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->createBackground()V

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    move-wide v10, v0

    goto :goto_0

    .line 622
    :cond_0
    iget-wide v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideDuration:J

    iget-wide v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideDelay:J

    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-long v4, p1

    mul-long/2addr v2, v4

    add-long v4, v0, v2

    move-wide v10, v4

    .line 623
    :goto_0
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    const/4 v0, 0x0

    invoke-virtual {p1, v10, v11, v0}, Lcom/nightonke/boommenu/BackgroundView;->light(JLandroid/animation/AnimatorListenerAdapter;)V

    .line 624
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    sget-object v0, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Share:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    if-ne p1, v0, :cond_1

    .line 625
    iget-object v6, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    const-string v7, "hideProcess"

    const-wide/16 v8, 0x0

    sget-object p1, Lcom/nightonke/boommenu/Animation/EaseEnum;->Linear:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 626
    invoke-static {p1}, Lcom/nightonke/boommenu/Animation/Ease;->getInstance(Lcom/nightonke/boommenu/Animation/EaseEnum;)Lcom/nightonke/boommenu/Animation/Ease;

    move-result-object v12

    const/4 p1, 0x2

    new-array v13, p1, [F

    fill-array-data v13, :array_0

    .line 625
    invoke-static/range {v6 .. v13}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;[F)Landroid/animation/ObjectAnimator;

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private pieceNumber()I
    .locals 2

    .line 1024
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    sget-object v1, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Unknown:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    sget-object v1, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Share:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    sget-object v1, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Custom:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1027
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->customPiecePlacePositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1028
    :cond_2
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    invoke-virtual {v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->pieceNumber()I

    move-result v0

    return v0
.end method

.method private placeButtons()V
    .locals 4

    const/4 v0, 0x0

    .line 1126
    :goto_0
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1127
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    .line 1128
    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->endPositions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 1129
    iget v3, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v3}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->setX(F)V

    .line 1130
    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->setY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private placePieces()V
    .locals 5

    .line 424
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    sget-object v1, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Share:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    if-ne v0, v1, :cond_0

    .line 425
    sget-object v0, Lcom/nightonke/boommenu/Animation/OrderEnum;->DEFAULT:Lcom/nightonke/boommenu/Animation/OrderEnum;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Animation/AnimationManager;->getOrderIndex(Lcom/nightonke/boommenu/Animation/OrderEnum;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->orderEnum:Lcom/nightonke/boommenu/Animation/OrderEnum;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Animation/AnimationManager;->getOrderIndex(Lcom/nightonke/boommenu/Animation/OrderEnum;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 430
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private placePiecesAtPositions()V
    .locals 4

    .line 434
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->pieceNumber()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 435
    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nightonke/boommenu/Piece/BoomPiece;

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePositions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Lcom/nightonke/boommenu/Piece/BoomPiece;->place(Landroid/graphics/RectF;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private placeShareLinesView()V
    .locals 4

    .line 1039
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    sget-object v1, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Share:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    if-ne v0, v1, :cond_1

    .line 1040
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1041
    :cond_0
    new-instance v0, Lcom/nightonke/boommenu/Animation/ShareLinesView;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nightonke/boommenu/Animation/ShareLinesView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    .line 1042
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLine1Color:I

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/Animation/ShareLinesView;->setLine1Color(I)V

    .line 1043
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLine2Color:I

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/Animation/ShareLinesView;->setLine2Color(I)V

    .line 1044
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLineWidth:F

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/Animation/ShareLinesView;->setLineWidth(F)V

    .line 1045
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1046
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/nightonke/boommenu/Animation/ShareLinesView;->place(IIII)V

    goto :goto_0

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private preventDragOutside()V
    .locals 13

    .line 971
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getX()F

    move-result v0

    .line 972
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getY()F

    move-result v1

    .line 973
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 975
    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->edgeInsetsInParentView:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gez v3, :cond_0

    .line 976
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->edgeInsetsInParentView:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    move v3, v9

    goto :goto_0

    :cond_0
    move v3, v8

    .line 980
    :goto_0
    iget-object v4, p0, Lcom/nightonke/boommenu/BoomMenuButton;->edgeInsetsInParentView:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    .line 981
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->edgeInsetsInParentView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    move v3, v9

    .line 985
    :cond_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/nightonke/boommenu/BoomMenuButton;->edgeInsetsInParentView:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    .line 986
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->edgeInsetsInParentView:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    move v3, v9

    .line 990
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/nightonke/boommenu/BoomMenuButton;->edgeInsetsInParentView:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_3

    .line 991
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->edgeInsetsInParentView:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    move v10, v1

    move v3, v9

    goto :goto_1

    :cond_3
    move v10, v1

    :goto_1
    if-eqz v3, :cond_4

    const-string v1, "x"

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x12c

    .line 996
    sget-object v6, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutBack:Lcom/nightonke/boommenu/Animation/EaseEnum;

    invoke-static {v6}, Lcom/nightonke/boommenu/Animation/Ease;->getInstance(Lcom/nightonke/boommenu/Animation/EaseEnum;)Lcom/nightonke/boommenu/Animation/Ease;

    move-result-object v6

    const/4 v11, 0x2

    new-array v7, v11, [F

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getX()F

    move-result v12

    aput v12, v7, v8

    aput v0, v7, v9

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;[F)Landroid/animation/ObjectAnimator;

    const-string v1, "y"

    .line 997
    sget-object v0, Lcom/nightonke/boommenu/Animation/EaseEnum;->EaseOutBack:Lcom/nightonke/boommenu/Animation/EaseEnum;

    invoke-static {v0}, Lcom/nightonke/boommenu/Animation/Ease;->getInstance(Lcom/nightonke/boommenu/Animation/EaseEnum;)Lcom/nightonke/boommenu/Animation/Ease;

    move-result-object v6

    new-array v7, v11, [F

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getY()F

    move-result v0

    aput v0, v7, v8

    aput v10, v7, v9

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;[F)Landroid/animation/ObjectAnimator;

    :cond_4
    return-void
.end method

.method private putBoomButtonInBackground(Lcom/nightonke/boommenu/BoomButtons/BoomButton;Landroid/graphics/PointF;)Lcom/nightonke/boommenu/BoomButtons/BoomButton;
    .locals 3

    .line 935
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->createBackground()V

    .line 936
    iget v0, p2, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    float-to-int p2, p2

    .line 939
    invoke-virtual {p1}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->trueWidth()I

    move-result v1

    .line 940
    invoke-virtual {p1}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->trueHeight()I

    move-result v2

    .line 936
    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->place(IIII)Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, 0x4

    .line 941
    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->setVisibility(I)V

    .line 942
    iget-object p2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    invoke-virtual {p2, p1}, Lcom/nightonke/boommenu/BackgroundView;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method private reLayoutAfterOrientationChanged()V
    .locals 1

    .line 1103
    new-instance v0, Lcom/nightonke/boommenu/BoomMenuButton$9;

    invoke-direct {v0, p0}, Lcom/nightonke/boommenu/BoomMenuButton$9;-><init>(Lcom/nightonke/boommenu/BoomMenuButton;)V

    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setButtonBackground()V
    .locals 5

    .line 337
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->backgroundEffect:Z

    const/16 v1, 0x15

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->inList:Z

    if-nez v0, :cond_1

    .line 338
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->rippleEffect:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 339
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->highlightedColor:I

    .line 340
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->normalColor:I

    .line 341
    invoke-static {v2, v3}, Lcom/nightonke/boommenu/Util;->getOvalDrawable(Landroid/view/View;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonRadius:I

    iget v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->normalColor:I

    iget v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->highlightedColor:I

    iget v4, p0, Lcom/nightonke/boommenu/BoomMenuButton;->unableColor:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nightonke/boommenu/Util;->getOvalStateListBitmapDrawable(Landroid/view/View;IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 354
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 355
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->context:Landroid/content/Context;

    const v2, 0x101045c

    invoke-static {v1, v2}, Lcom/nightonke/boommenu/Util;->getSystemDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->context:Landroid/content/Context;

    const v2, 0x101030e

    invoke-static {v1, v2}, Lcom/nightonke/boommenu/Util;->getSystemDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Util;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private setButtonSize()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 331
    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonRadius:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 332
    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonRadius:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 333
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setShareLinesViewData()V
    .locals 2

    .line 1053
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    sget-object v1, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Share:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePositions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Lcom/nightonke/boommenu/Animation/ShareLinesView;->setData(Ljava/util/ArrayList;Lcom/nightonke/boommenu/BoomMenuButton;)V

    :cond_0
    return-void
.end method

.method private startBoomAnimationForFadeViews(Z)V
    .locals 14

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    move-wide v9, v0

    goto :goto_0

    .line 1279
    :cond_0
    iget-wide v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showDuration:J

    iget-wide v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showDelay:J

    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-long v4, p1

    mul-long/2addr v2, v4

    add-long v4, v0, v2

    move-wide v9, v4

    :goto_0
    const-string v6, "alpha"

    const-wide/16 v7, 0x0

    const/4 p1, 0x2

    .line 1280
    new-array v11, p1, [F

    fill-array-data v11, :array_0

    new-instance v12, Lcom/nightonke/boommenu/BoomMenuButton$10;

    invoke-direct {v12, p0}, Lcom/nightonke/boommenu/BoomMenuButton$10;-><init>(Lcom/nightonke/boommenu/BoomMenuButton;)V

    .line 1286
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getFadeViews()Ljava/util/ArrayList;

    move-result-object v13

    .line 1280
    invoke-static/range {v6 .. v13}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/String;JJ[FLandroid/animation/TimeInterpolator;Ljava/util/ArrayList;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startBoomAnimations(Z)V
    .locals 9

    .line 641
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    invoke-virtual {v0}, Lcom/nightonke/boommenu/BackgroundView;->removeAllViews()V

    .line 642
    :cond_0
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->calculateEndPositions()V

    .line 644
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    sget-object v1, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Share:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    if-ne v0, v1, :cond_1

    .line 645
    sget-object v0, Lcom/nightonke/boommenu/Animation/OrderEnum;->DEFAULT:Lcom/nightonke/boommenu/Animation/OrderEnum;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Animation/AnimationManager;->getOrderIndex(Lcom/nightonke/boommenu/Animation/OrderEnum;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->orderEnum:Lcom/nightonke/boommenu/Animation/OrderEnum;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Animation/AnimationManager;->getOrderIndex(Lcom/nightonke/boommenu/Animation/OrderEnum;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 651
    :goto_0
    iget v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastReboomIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->use3DTransformAnimation:Z

    if-eqz v1, :cond_2

    .line 652
    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastReboomIndex:I

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    iget v4, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastReboomIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;

    .line 653
    invoke-virtual {v3, p0}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->innerListener(Lcom/nightonke/boommenu/BoomButtons/InnerOnBoomButtonClickListener;)Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastReboomIndex:I

    invoke-virtual {v3, v4}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->index(I)Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nightonke/boommenu/BoomMenuButton;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->build(Landroid/content/Context;)Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    move-result-object v3

    .line 652
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 656
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 657
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 658
    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    .line 659
    new-instance v5, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->startPositions:Ljava/util/ArrayList;

    .line 660
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v6, v4, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->centerPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/nightonke/boommenu/BoomMenuButton;->startPositions:Ljava/util/ArrayList;

    .line 661
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, v4, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->centerPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-direct {v5, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 662
    invoke-direct {p0, v4, v5}, Lcom/nightonke/boommenu/BoomMenuButton;->putBoomButtonInBackground(Lcom/nightonke/boommenu/BoomButtons/BoomButton;Landroid/graphics/PointF;)Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    .line 663
    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nightonke/boommenu/Piece/BoomPiece;

    iget-object v6, p0, Lcom/nightonke/boommenu/BoomMenuButton;->endPositions:Ljava/util/ArrayList;

    .line 664
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/graphics/PointF;

    move-object v2, p0

    move v7, v1

    move v8, p1

    .line 663
    invoke-direct/range {v2 .. v8}, Lcom/nightonke/boommenu/BoomMenuButton;->startEachBoomAnimation(Lcom/nightonke/boommenu/Piece/BoomPiece;Lcom/nightonke/boommenu/BoomButtons/BoomButton;Landroid/graphics/PointF;Landroid/graphics/PointF;IZ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private startEachBoomAnimation(Lcom/nightonke/boommenu/Piece/BoomPiece;Lcom/nightonke/boommenu/BoomButtons/BoomButton;Landroid/graphics/PointF;Landroid/graphics/PointF;IZ)V
    .locals 9

    .line 692
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->isBatterySaveModeTurnOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    new-instance v0, Lcom/nightonke/boommenu/BoomMenuButton$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/nightonke/boommenu/BoomMenuButton$4;-><init>(Lcom/nightonke/boommenu/BoomMenuButton;Lcom/nightonke/boommenu/Piece/BoomPiece;Lcom/nightonke/boommenu/BoomButtons/BoomButton;Landroid/graphics/PointF;Landroid/graphics/PointF;IZ)V

    invoke-virtual {p0, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 700
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/nightonke/boommenu/BoomMenuButton;->innerStartEachBoomAnimation(Lcom/nightonke/boommenu/Piece/BoomPiece;Lcom/nightonke/boommenu/BoomButtons/BoomButton;Landroid/graphics/PointF;Landroid/graphics/PointF;IZ)V

    :goto_0
    return-void
.end method

.method private startEachReboomAnimation(Lcom/nightonke/boommenu/Piece/BoomPiece;Lcom/nightonke/boommenu/BoomButtons/BoomButton;Landroid/graphics/PointF;Landroid/graphics/PointF;IZ)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    .line 768
    iget v2, v0, Lcom/nightonke/boommenu/BoomMenuButton;->animatingViewNumber:I

    const/4 v9, 0x1

    add-int/2addr v2, v9

    iput v2, v0, Lcom/nightonke/boommenu/BoomMenuButton;->animatingViewNumber:I

    .line 769
    iget v2, v0, Lcom/nightonke/boommenu/BoomMenuButton;->frames:I

    add-int/2addr v2, v9

    new-array v12, v2, [F

    .line 770
    iget v2, v0, Lcom/nightonke/boommenu/BoomMenuButton;->frames:I

    add-int/2addr v2, v9

    new-array v13, v2, [F

    .line 771
    invoke-virtual/range {p1 .. p1}, Lcom/nightonke/boommenu/Piece/BoomPiece;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v2, v14

    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->contentWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v15, v2, v3

    .line 772
    invoke-virtual/range {p1 .. p1}, Lcom/nightonke/boommenu/Piece/BoomPiece;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v14

    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->contentHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v16, v2, v3

    const-wide/16 v2, 0x1

    if-eqz p6, :cond_0

    move-wide/from16 v25, v2

    goto :goto_0

    .line 773
    :cond_0
    iget-wide v4, v0, Lcom/nightonke/boommenu/BoomMenuButton;->hideDelay:J

    move/from16 v6, p5

    int-to-long v6, v6

    mul-long/2addr v4, v6

    move-wide/from16 v25, v4

    :goto_0
    if-eqz p6, :cond_1

    move-wide/from16 v27, v2

    goto :goto_1

    .line 774
    :cond_1
    iget-wide v1, v0, Lcom/nightonke/boommenu/BoomMenuButton;->hideDuration:J

    move-wide/from16 v27, v1

    .line 775
    :goto_1
    iget-object v1, v0, Lcom/nightonke/boommenu/BoomMenuButton;->boomEnum:Lcom/nightonke/boommenu/Animation/BoomEnum;

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    .line 777
    invoke-virtual {v3}, Lcom/nightonke/boommenu/BackgroundView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    invoke-virtual {v4}, Lcom/nightonke/boommenu/BackgroundView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v3, v0, Lcom/nightonke/boommenu/BoomMenuButton;->hideMoveEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    .line 778
    invoke-static {v3}, Lcom/nightonke/boommenu/Animation/Ease;->getInstance(Lcom/nightonke/boommenu/Animation/EaseEnum;)Lcom/nightonke/boommenu/Animation/Ease;

    move-result-object v3

    iget v4, v0, Lcom/nightonke/boommenu/BoomMenuButton;->frames:I

    move-object/from16 v5, p3

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    .line 775
    invoke-static/range {v1 .. v8}, Lcom/nightonke/boommenu/Animation/AnimationManager;->calculateHideXY(Lcom/nightonke/boommenu/Animation/BoomEnum;Landroid/graphics/PointF;Lcom/nightonke/boommenu/Animation/Ease;ILandroid/graphics/PointF;Landroid/graphics/PointF;[F[F)V

    .line 779
    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->isNeededColorAnimation()Z

    move-result v1

    const/16 v29, 0x0

    const/4 v8, 0x2

    if-eqz v1, :cond_3

    .line 780
    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->prepareColorTransformAnimation()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "rippleButtonColor"

    .line 781
    invoke-static {}, Lcom/nightonke/boommenu/Animation/HideRgbEvaluator;->getInstance()Lcom/nightonke/boommenu/Animation/HideRgbEvaluator;

    move-result-object v7

    new-array v5, v8, [I

    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonColor()I

    move-result v1

    aput v1, v5, v29

    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColor()I

    move-result v1

    aput v1, v5, v9

    move-object v1, v10

    move-wide/from16 v3, v25

    move-object/from16 v17, v5

    move-wide/from16 v5, v27

    move v14, v8

    move-object/from16 v8, v17

    invoke-static/range {v1 .. v8}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TypeEvaluator;[I)Landroid/animation/ObjectAnimator;

    goto :goto_2

    :cond_2
    move v14, v8

    const-string v2, "nonRippleButtonColor"

    .line 783
    invoke-static {}, Lcom/nightonke/boommenu/Animation/HideRgbEvaluator;->getInstance()Lcom/nightonke/boommenu/Animation/HideRgbEvaluator;

    move-result-object v7

    new-array v8, v14, [I

    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->buttonColor()I

    move-result v1

    aput v1, v8, v29

    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->pieceColor()I

    move-result v1

    aput v1, v8, v9

    move-object v1, v10

    move-wide/from16 v3, v25

    move-wide/from16 v5, v27

    invoke-static/range {v1 .. v8}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TypeEvaluator;[I)Landroid/animation/ObjectAnimator;

    goto :goto_2

    :cond_3
    move v14, v8

    :goto_2
    const-string v2, "x"

    .line 785
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v1, v10

    move-wide/from16 v3, v25

    move-wide/from16 v5, v27

    move-object v8, v12

    invoke-static/range {v1 .. v8}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;[F)Landroid/animation/ObjectAnimator;

    const-string v2, "y"

    .line 786
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v8, v13

    invoke-static/range {v1 .. v8}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;[F)Landroid/animation/ObjectAnimator;

    .line 787
    iget-object v1, v0, Lcom/nightonke/boommenu/BoomMenuButton;->hideRotateEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    invoke-static {v1}, Lcom/nightonke/boommenu/Animation/Ease;->getInstance(Lcom/nightonke/boommenu/Animation/EaseEnum;)Lcom/nightonke/boommenu/Animation/Ease;

    move-result-object v6

    new-array v7, v14, [F

    const/4 v8, 0x0

    aput v8, v7, v29

    iget v1, v0, Lcom/nightonke/boommenu/BoomMenuButton;->rotateDegree:I

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v7, v9

    move-object v1, v10

    move-wide/from16 v2, v25

    move-wide/from16 v4, v27

    invoke-static/range {v1 .. v7}, Lcom/nightonke/boommenu/Animation/AnimationManager;->rotate(Lcom/nightonke/boommenu/BoomButtons/BoomButton;JJLandroid/animation/TimeInterpolator;[F)V

    const-string v17, "alpha"

    .line 788
    new-array v1, v14, [F

    fill-array-data v1, :array_0

    sget-object v2, Lcom/nightonke/boommenu/Animation/EaseEnum;->Linear:Lcom/nightonke/boommenu/Animation/EaseEnum;

    invoke-static {v2}, Lcom/nightonke/boommenu/Animation/Ease;->getInstance(Lcom/nightonke/boommenu/Animation/EaseEnum;)Lcom/nightonke/boommenu/Animation/Ease;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->goneViews()Ljava/util/ArrayList;

    move-result-object v24

    move-wide/from16 v18, v25

    move-wide/from16 v20, v27

    move-object/from16 v22, v1

    invoke-static/range {v17 .. v24}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/String;JJ[FLandroid/animation/TimeInterpolator;Ljava/util/ArrayList;)V

    const-string v2, "scaleX"

    .line 789
    iget-object v1, v0, Lcom/nightonke/boommenu/BoomMenuButton;->hideScaleEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    invoke-static {v1}, Lcom/nightonke/boommenu/Animation/Ease;->getInstance(Lcom/nightonke/boommenu/Animation/EaseEnum;)Lcom/nightonke/boommenu/Animation/Ease;

    move-result-object v7

    new-array v5, v14, [F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v5, v29

    aput v15, v5, v9

    move-object v1, v10

    move-wide/from16 v3, v25

    move-object v15, v5

    move-wide/from16 v5, v27

    move-object v8, v15

    invoke-static/range {v1 .. v8}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;[F)Landroid/animation/ObjectAnimator;

    const-string v2, "scaleY"

    .line 790
    iget-object v1, v0, Lcom/nightonke/boommenu/BoomMenuButton;->hideScaleEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    invoke-static {v1}, Lcom/nightonke/boommenu/Animation/Ease;->getInstance(Lcom/nightonke/boommenu/Animation/EaseEnum;)Lcom/nightonke/boommenu/Animation/Ease;

    move-result-object v7

    new-instance v8, Lcom/nightonke/boommenu/BoomMenuButton$6;

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v10, v1}, Lcom/nightonke/boommenu/BoomMenuButton$6;-><init>(Lcom/nightonke/boommenu/BoomMenuButton;Lcom/nightonke/boommenu/BoomButtons/BoomButton;Lcom/nightonke/boommenu/Piece/BoomPiece;)V

    new-array v14, v14, [F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v14, v29

    aput v16, v14, v9

    move-object v1, v10

    move-object v9, v14

    invoke-static/range {v1 .. v9}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/Object;Ljava/lang/String;JJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;[F)Landroid/animation/ObjectAnimator;

    .line 808
    iget-boolean v1, v0, Lcom/nightonke/boommenu/BoomMenuButton;->use3DTransformAnimation:Z

    if-eqz v1, :cond_4

    move-object v1, v12

    move-object v2, v13

    move-wide/from16 v3, v25

    move-wide/from16 v5, v27

    move-object v7, v10

    .line 809
    invoke-static/range {v1 .. v7}, Lcom/nightonke/boommenu/Animation/AnimationManager;->getRotate3DAnimation([F[FJJLcom/nightonke/boommenu/BoomButtons/BoomButton;)Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;

    move-result-object v1

    .line 811
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v10, v2, v3}, Lcom/nightonke/boommenu/Animation/Rotate3DAnimation;->set(Landroid/view/View;FF)V

    const/4 v2, 0x0

    .line 812
    invoke-virtual {v10, v2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->setCameraDistance(F)V

    .line 813
    invoke-virtual {v10, v1}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startReboomAnimationForFadeViews(Z)V
    .locals 14

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    move-wide v9, v0

    goto :goto_0

    .line 1290
    :cond_0
    iget-wide v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideDuration:J

    iget-wide v2, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideDelay:J

    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-long v4, p1

    mul-long/2addr v2, v4

    add-long v4, v0, v2

    move-wide v9, v4

    :goto_0
    const-string v6, "alpha"

    const-wide/16 v7, 0x0

    const/4 p1, 0x2

    .line 1291
    new-array v11, p1, [F

    fill-array-data v11, :array_0

    new-instance v12, Lcom/nightonke/boommenu/BoomMenuButton$11;

    invoke-direct {v12, p0}, Lcom/nightonke/boommenu/BoomMenuButton$11;-><init>(Lcom/nightonke/boommenu/BoomMenuButton;)V

    .line 1298
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getFadeViews()Ljava/util/ArrayList;

    move-result-object v13

    .line 1291
    invoke-static/range {v6 .. v13}, Lcom/nightonke/boommenu/Animation/AnimationManager;->animate(Ljava/lang/String;JJ[FLandroid/animation/TimeInterpolator;Ljava/util/ArrayList;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startReboomAnimations(Z)V
    .locals 9

    .line 670
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    sget-object v1, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Share:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    if-ne v0, v1, :cond_0

    .line 671
    sget-object v0, Lcom/nightonke/boommenu/Animation/OrderEnum;->REVERSE:Lcom/nightonke/boommenu/Animation/OrderEnum;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Animation/AnimationManager;->getOrderIndex(Lcom/nightonke/boommenu/Animation/OrderEnum;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->orderEnum:Lcom/nightonke/boommenu/Animation/OrderEnum;

    iget-object v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nightonke/boommenu/Animation/AnimationManager;->getOrderIndex(Lcom/nightonke/boommenu/Animation/OrderEnum;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 673
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->lastReboomIndex:I

    .line 674
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    invoke-virtual {v2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->bringToFront()V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 675
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 676
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 677
    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    .line 678
    new-instance v6, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->startPositions:Ljava/util/ArrayList;

    .line 679
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, v4, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->centerPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/nightonke/boommenu/BoomMenuButton;->startPositions:Ljava/util/ArrayList;

    .line 680
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v7, v4, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->centerPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v7

    invoke-direct {v6, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 681
    iget-object v3, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nightonke/boommenu/Piece/BoomPiece;

    iget-object v5, p0, Lcom/nightonke/boommenu/BoomMenuButton;->endPositions:Ljava/util/ArrayList;

    .line 682
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/graphics/PointF;

    move-object v2, p0

    move v7, v1

    move v8, p1

    .line 681
    invoke-direct/range {v2 .. v8}, Lcom/nightonke/boommenu/BoomMenuButton;->startEachReboomAnimation(Lcom/nightonke/boommenu/Piece/BoomPiece;Lcom/nightonke/boommenu/BoomButtons/BoomButton;Landroid/graphics/PointF;Landroid/graphics/PointF;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private stopAllAnimations(Z)V
    .locals 1

    .line 1135
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    invoke-virtual {p1}, Lcom/nightonke/boommenu/BackgroundView;->clearAnimation()V

    .line 1136
    :cond_0
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    .line 1137
    invoke-virtual {v0}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->clearAnimation()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private toLayout()V
    .locals 2

    .line 1002
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1003
    iput-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToLayout:Z

    .line 1004
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 1005
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->isInLayout()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->requestLayout()V

    goto :goto_0

    .line 1007
    :cond_1
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->requestLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method private uninitializedBoomButtons()Z
    .locals 2

    .line 1057
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    sget-object v1, Lcom/nightonke/boommenu/ButtonEnum;->Unknown:Lcom/nightonke/boommenu/ButtonEnum;

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/ButtonEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    sget-object v1, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Unknown:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    .line 1058
    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonPlaceEnum:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    sget-object v1, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->Unknown:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    .line 1059
    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public addBuilder(Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;)V
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public boom()V
    .locals 1

    const/4 v0, 0x0

    .line 551
    invoke-direct {p0, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->innerBoom(Z)V

    return-void
.end method

.method public boomImmediately()V
    .locals 1

    const/4 v0, 0x1

    .line 557
    invoke-direct {p0, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->innerBoom(Z)V

    return-void
.end method

.method public clearBuilders()V
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 394
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 395
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->checkAutoBoom()V

    return-void
.end method

.method public getBoomButton(I)Lcom/nightonke/boommenu/BoomButtons/BoomButton;
    .locals 1

    .line 1257
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBoomButtons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/nightonke/boommenu/BoomButtons/BoomButton;",
            ">;"
        }
    .end annotation

    .line 1269
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBoomEnum()Lcom/nightonke/boommenu/Animation/BoomEnum;
    .locals 1

    .line 1980
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomEnum:Lcom/nightonke/boommenu/Animation/BoomEnum;

    return-object v0
.end method

.method public getBottomHamButtonTopMargin()F
    .locals 1

    .line 2266
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->bottomHamButtonTopMargin:F

    return v0
.end method

.method public getBuilder(I)Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBuilders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;",
            ">;"
        }
    .end annotation

    .line 1245
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getButtonBottomMargin()F
    .locals 1

    .line 2227
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonBottomMargin:F

    return v0
.end method

.method public getButtonEnum()Lcom/nightonke/boommenu/ButtonEnum;
    .locals 1

    .line 1482
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    return-object v0
.end method

.method public getButtonHorizontalMargin()F
    .locals 1

    .line 2175
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonHorizontalMargin:F

    return v0
.end method

.method public getButtonInclinedMargin()F
    .locals 1

    .line 2201
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonInclinedMargin:F

    return v0
.end method

.method public getButtonLeftMargin()F
    .locals 1

    .line 2240
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonLeftMargin:F

    return v0
.end method

.method public getButtonPlaceAlignmentEnum()Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceAlignmentEnum;
    .locals 1

    .line 2162
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonPlaceAlignmentEnum:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceAlignmentEnum;

    return-object v0
.end method

.method public getButtonPlaceEnum()Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;
    .locals 1

    .line 2137
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonPlaceEnum:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    return-object v0
.end method

.method public getButtonRadius()I
    .locals 1

    .line 1465
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonRadius:I

    return v0
.end method

.method public getButtonRightMargin()F
    .locals 1

    .line 2253
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonRightMargin:F

    return v0
.end method

.method public getButtonTopMargin()F
    .locals 1

    .line 2214
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonTopMargin:F

    return v0
.end method

.method public getButtonVerticalMargin()F
    .locals 1

    .line 2188
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonVerticalMargin:F

    return v0
.end method

.method public getCustomButtonPlacePositions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 2152
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->customButtonPlacePositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCustomPiecePlacePositions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1804
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->customPiecePlacePositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDimColor()I
    .locals 1

    .line 1834
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->dimColor:I

    return v0
.end method

.method public getDotRadius()F
    .locals 1

    .line 1615
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->dotRadius:F

    return v0
.end method

.method public getEdgeInsetsInParentView()Landroid/graphics/Rect;
    .locals 1

    .line 1601
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->edgeInsetsInParentView:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFrames()I
    .locals 1

    .line 1966
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->frames:I

    return v0
.end method

.method public getHamHeight()F
    .locals 1

    .line 1645
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hamHeight:F

    return v0
.end method

.method public getHamWidth()F
    .locals 1

    .line 1630
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hamWidth:F

    return v0
.end method

.method public getHideDelay()J
    .locals 2

    .line 1892
    iget-wide v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideDelay:J

    return-wide v0
.end method

.method public getHideDuration()J
    .locals 2

    .line 1906
    iget-wide v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideDuration:J

    return-wide v0
.end method

.method public getHideMoveEaseEnum()Lcom/nightonke/boommenu/Animation/EaseEnum;
    .locals 1

    .line 2044
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideMoveEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-object v0
.end method

.method public getHideRotateEaseEnum()Lcom/nightonke/boommenu/Animation/EaseEnum;
    .locals 1

    .line 2070
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideRotateEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-object v0
.end method

.method public getHideScaleEaseEnum()Lcom/nightonke/boommenu/Animation/EaseEnum;
    .locals 1

    .line 2057
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideScaleEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-object v0
.end method

.method public getHighlightedColor()I
    .locals 1

    .line 1554
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->highlightedColor:I

    return v0
.end method

.method public getNormalColor()I
    .locals 1

    .line 1538
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->normalColor:I

    return v0
.end method

.method public getOnBoomListener()Lcom/nightonke/boommenu/OnBoomListener;
    .locals 1

    .line 1821
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->onBoomListener:Lcom/nightonke/boommenu/OnBoomListener;

    return-object v0
.end method

.method public getOrderEnum()Lcom/nightonke/boommenu/Animation/OrderEnum;
    .locals 1

    .line 1953
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->orderEnum:Lcom/nightonke/boommenu/Animation/OrderEnum;

    return-object v0
.end method

.method protected getParentView()Landroid/view/ViewGroup;
    .locals 1

    .line 829
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomInWholeScreen:Z

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nightonke/boommenu/Util;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 834
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 837
    :cond_1
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPieceCornerRadius()F
    .locals 1

    .line 1660
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceCornerRadius:F

    return v0
.end method

.method public getPieceHorizontalMargin()F
    .locals 1

    .line 1675
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceHorizontalMargin:F

    return v0
.end method

.method public getPieceInclinedMargin()F
    .locals 1

    .line 1705
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceInclinedMargin:F

    return v0
.end method

.method public getPiecePlaceEnum()Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;
    .locals 1

    .line 1789
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    return-object v0
.end method

.method public getPieceVerticalMargin()F
    .locals 1

    .line 1690
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceVerticalMargin:F

    return v0
.end method

.method public getRotateDegree()I
    .locals 1

    .line 2083
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->rotateDegree:I

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 1450
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowColor:I

    return v0
.end method

.method public getShadowOffsetX()I
    .locals 1

    .line 1402
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowOffsetX:I

    return v0
.end method

.method public getShadowOffsetY()I
    .locals 1

    .line 1417
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowOffsetY:I

    return v0
.end method

.method public getShadowRadius()I
    .locals 1

    .line 1432
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowRadius:I

    return v0
.end method

.method public getShareLine1Color()I
    .locals 1

    .line 1735
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLine1Color:I

    return v0
.end method

.method public getShareLine2Color()I
    .locals 1

    .line 1753
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLine2Color:I

    return v0
.end method

.method public getShareLineLength()F
    .locals 1

    .line 1720
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLineLength:F

    return v0
.end method

.method public getShareLineWidth()F
    .locals 1

    .line 1771
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLineWidth:F

    return v0
.end method

.method public getShowDelay()J
    .locals 2

    .line 1859
    iget-wide v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showDelay:J

    return-wide v0
.end method

.method public getShowDuration()J
    .locals 2

    .line 1873
    iget-wide v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showDuration:J

    return-wide v0
.end method

.method public getShowMoveEaseEnum()Lcom/nightonke/boommenu/Animation/EaseEnum;
    .locals 1

    .line 1999
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showMoveEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-object v0
.end method

.method public getShowRotateEaseEnum()Lcom/nightonke/boommenu/Animation/EaseEnum;
    .locals 1

    .line 2025
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showRotateEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-object v0
.end method

.method public getShowScaleEaseEnum()Lcom/nightonke/boommenu/Animation/EaseEnum;
    .locals 1

    .line 2012
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showScaleEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-object v0
.end method

.method public getUnableColor()I
    .locals 1

    .line 1570
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->unableColor:I

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .line 530
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->animatingViewNumber:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutoBoom()Z
    .locals 1

    .line 2110
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->autoBoom:Z

    return v0
.end method

.method public isAutoBoomImmediately()Z
    .locals 1

    .line 2124
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->autoBoomImmediately:Z

    return v0
.end method

.method public isAutoHide()Z
    .locals 1

    .line 1939
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->autoHide:Z

    return v0
.end method

.method public isBackPressListened()Z
    .locals 1

    .line 1373
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isBackPressListened:Z

    return v0
.end method

.method public isBackgroundEffect()Z
    .locals 1

    .line 1501
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->backgroundEffect:Z

    return v0
.end method

.method public isBoomInWholeScreen()Z
    .locals 1

    .line 1333
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomInWholeScreen:Z

    return v0
.end method

.method public isBoomed()Z
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomStateEnum:Lcom/nightonke/boommenu/BoomStateEnum;

    sget-object v1, Lcom/nightonke/boommenu/BoomStateEnum;->DidBoom:Lcom/nightonke/boommenu/BoomStateEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCacheOptimization()Z
    .locals 1

    .line 1320
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->cacheOptimization:Z

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    .line 1925
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->cancelable:Z

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .line 1586
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->draggable:Z

    return v0
.end method

.method public isInFragment()Z
    .locals 1

    .line 1360
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->inFragment:Z

    return v0
.end method

.method public isInList()Z
    .locals 1

    .line 1347
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->inList:Z

    return v0
.end method

.method public isOrientationAdaptable()Z
    .locals 1

    .line 2281
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isOrientationAdaptable:Z

    return v0
.end method

.method public isReBoomed()Z
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomStateEnum:Lcom/nightonke/boommenu/BoomStateEnum;

    sget-object v1, Lcom/nightonke/boommenu/BoomStateEnum;->DidReboom:Lcom/nightonke/boommenu/BoomStateEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRippleEffect()Z
    .locals 1

    .line 1521
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->rippleEffect:Z

    return v0
.end method

.method public isShadowEffect()Z
    .locals 1

    .line 1386
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowEffect:Z

    return v0
.end method

.method public isUse3DTransformAnimation()Z
    .locals 1

    .line 2096
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->use3DTransformAnimation:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1075
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1076
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isOrientationAdaptable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->initOrientationListener()V

    :cond_0
    return-void
.end method

.method protected onBackgroundClicked()V
    .locals 1

    .line 882
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->onBoomListener:Lcom/nightonke/boommenu/OnBoomListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->onBoomListener:Lcom/nightonke/boommenu/OnBoomListener;

    invoke-interface {v0}, Lcom/nightonke/boommenu/OnBoomListener;->onBackgroundClick()V

    .line 884
    :cond_1
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->cancelable:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->reboom()V

    :cond_2
    return-void
.end method

.method public onButtonClick(ILcom/nightonke/boommenu/BoomButtons/BoomButton;)V
    .locals 1

    .line 1033
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->onBoomListener:Lcom/nightonke/boommenu/OnBoomListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->onBoomListener:Lcom/nightonke/boommenu/OnBoomListener;

    invoke-interface {v0, p1, p2}, Lcom/nightonke/boommenu/OnBoomListener;->onClicked(ILcom/nightonke/boommenu/BoomButtons/BoomButton;)V

    .line 1035
    :cond_1
    iget-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->autoHide:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->reboom()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1081
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1082
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 364
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isBackPressListened:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomStateEnum:Lcom/nightonke/boommenu/BoomStateEnum;

    sget-object v1, Lcom/nightonke/boommenu/BoomStateEnum;->WillBoom:Lcom/nightonke/boommenu/BoomStateEnum;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomStateEnum:Lcom/nightonke/boommenu/BoomStateEnum;

    sget-object v1, Lcom/nightonke/boommenu/BoomStateEnum;->DidBoom:Lcom/nightonke/boommenu/BoomStateEnum;

    if-ne v0, v1, :cond_1

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->reboom()V

    const/4 p1, 0x1

    return p1

    .line 370
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 381
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 382
    iget-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isOrientationChanged:Z

    if-eqz p1, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->reLayoutAfterOrientationChanged()V

    .line 385
    :cond_0
    iget-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToLayout:Z

    if-eqz p1, :cond_2

    .line 386
    iget-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->inList:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->delayToDoLayoutJobs()V

    goto :goto_0

    .line 387
    :cond_1
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->doLayoutJobs()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 389
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToLayout:Z

    return-void
.end method

.method public reboom()V
    .locals 1

    const/4 v0, 0x0

    .line 580
    invoke-direct {p0, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->innerReboom(Z)V

    return-void
.end method

.method public reboomImmediately()V
    .locals 1

    const/4 v0, 0x1

    .line 586
    invoke-direct {p0, v0}, Lcom/nightonke/boommenu/BoomMenuButton;->innerReboom(Z)V

    return-void
.end method

.method public removeBuilder(I)V
    .locals 1

    .line 1205
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1206
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public removeBuilder(Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;)V
    .locals 1

    .line 1195
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1196
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setAutoBoom(Z)V
    .locals 0

    .line 2106
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->autoBoom:Z

    return-void
.end method

.method public setAutoBoomImmediately(Z)V
    .locals 0

    .line 2120
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->autoBoomImmediately:Z

    return-void
.end method

.method public setAutoHide(Z)V
    .locals 0

    .line 1949
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->autoHide:Z

    return-void
.end method

.method public setBackPressListened(Z)V
    .locals 0

    .line 1382
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isBackPressListened:Z

    return-void
.end method

.method public setBackgroundEffect(Z)V
    .locals 1

    .line 1514
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->backgroundEffect:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1515
    :cond_0
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->backgroundEffect:Z

    .line 1516
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->setButtonBackground()V

    .line 1517
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setBoomEnum(Lcom/nightonke/boommenu/Animation/BoomEnum;)V
    .locals 0

    .line 1989
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomEnum:Lcom/nightonke/boommenu/Animation/BoomEnum;

    return-void
.end method

.method public setBoomInWholeScreen(Z)V
    .locals 0

    .line 1343
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomInWholeScreen:Z

    return-void
.end method

.method public setBottomHamButtonTopMargin(F)V
    .locals 0

    .line 2277
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->bottomHamButtonTopMargin:F

    return-void
.end method

.method public setBuilder(ILcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;)V
    .locals 1

    .line 1164
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1165
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setBuilders(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;",
            ">;)V"
        }
    .end annotation

    .line 1174
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    .line 1175
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setButtonBottomMargin(F)V
    .locals 0

    .line 2236
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonBottomMargin:F

    return-void
.end method

.method public setButtonEnum(Lcom/nightonke/boommenu/ButtonEnum;)V
    .locals 1

    .line 1492
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    invoke-virtual {v0, p1}, Lcom/nightonke/boommenu/ButtonEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1493
    :cond_0
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonEnum:Lcom/nightonke/boommenu/ButtonEnum;

    .line 1494
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->clearPieces()V

    .line 1495
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->clearBuilders()V

    .line 1496
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->clearButtons()V

    .line 1497
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setButtonHorizontalMargin(F)V
    .locals 0

    .line 2184
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonHorizontalMargin:F

    return-void
.end method

.method public setButtonInclinedMargin(F)V
    .locals 0

    .line 2210
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonInclinedMargin:F

    return-void
.end method

.method public setButtonLeftMargin(F)V
    .locals 0

    .line 2249
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonLeftMargin:F

    return-void
.end method

.method public setButtonPlaceAlignmentEnum(Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceAlignmentEnum;)V
    .locals 0

    .line 2171
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonPlaceAlignmentEnum:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceAlignmentEnum;

    return-void
.end method

.method public setButtonPlaceEnum(Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;)V
    .locals 0

    .line 2146
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonPlaceEnum:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    .line 2147
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->clearButtons()V

    const/4 p1, 0x1

    .line 2148
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToCalculateStartPositions:Z

    return-void
.end method

.method public setButtonRadius(I)V
    .locals 1

    .line 1475
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonRadius:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1476
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonRadius:I

    .line 1477
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->initButton()V

    .line 1478
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setButtonRightMargin(F)V
    .locals 0

    .line 2262
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonRightMargin:F

    return-void
.end method

.method public setButtonTopMargin(F)V
    .locals 0

    .line 2223
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonTopMargin:F

    return-void
.end method

.method public setButtonVerticalMargin(F)V
    .locals 0

    .line 2197
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->buttonVerticalMargin:F

    return-void
.end method

.method public setCacheOptimization(Z)V
    .locals 0

    .line 1329
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->cacheOptimization:Z

    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 1935
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->cancelable:Z

    return-void
.end method

.method public setCustomButtonPlacePositions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 2156
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->customButtonPlacePositions:Ljava/util/ArrayList;

    .line 2157
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->clearButtons()V

    const/4 p1, 0x1

    .line 2158
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->needToCalculateStartPositions:Z

    return-void
.end method

.method public setCustomPiecePlacePositions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 1814
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->customPiecePlacePositions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1815
    :cond_0
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->customPiecePlacePositions:Ljava/util/ArrayList;

    .line 1816
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->clearPieces()V

    .line 1817
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setDelay(J)V
    .locals 0

    .line 1849
    invoke-virtual {p0, p1, p2}, Lcom/nightonke/boommenu/BoomMenuButton;->setShowDelay(J)V

    .line 1850
    invoke-virtual {p0, p1, p2}, Lcom/nightonke/boommenu/BoomMenuButton;->setHideDelay(J)V

    return-void
.end method

.method public setDimColor(I)V
    .locals 2

    .line 1843
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->dimColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1844
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->dimColor:I

    .line 1845
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomStateEnum:Lcom/nightonke/boommenu/BoomStateEnum;

    sget-object v1, Lcom/nightonke/boommenu/BoomStateEnum;->DidBoom:Lcom/nightonke/boommenu/BoomStateEnum;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->background:Lcom/nightonke/boommenu/BackgroundView;

    invoke-virtual {v0, p1}, Lcom/nightonke/boommenu/BackgroundView;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public setDotRadius(F)V
    .locals 1

    .line 1624
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->dotRadius:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1625
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->dotRadius:F

    .line 1626
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setDraggable(Z)V
    .locals 1

    .line 1595
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->draggable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1596
    :cond_0
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->draggable:Z

    .line 1597
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->initDraggableTouchListener()V

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 1854
    invoke-virtual {p0, p1, p2}, Lcom/nightonke/boommenu/BoomMenuButton;->setShowDuration(J)V

    .line 1855
    invoke-virtual {p0, p1, p2}, Lcom/nightonke/boommenu/BoomMenuButton;->setHideDuration(J)V

    return-void
.end method

.method public setEdgeInsetsInParentView(Landroid/graphics/Rect;)V
    .locals 1

    .line 1609
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->edgeInsetsInParentView:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1610
    :cond_0
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->edgeInsetsInParentView:Landroid/graphics/Rect;

    .line 1611
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->preventDragOutside()V

    return-void
.end method

.method public setEnable(IZ)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtonBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;->setUnable(Z)V

    .line 1227
    :cond_1
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1228
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->boomButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nightonke/boommenu/BoomButtons/BoomButton;

    invoke-virtual {p1, p2}, Lcom/nightonke/boommenu/BoomButtons/BoomButton;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1211
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1212
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1213
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->setButtonBackground()V

    return-void
.end method

.method public setFrames(I)V
    .locals 0

    .line 1976
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->frames:I

    return-void
.end method

.method public setHamHeight(I)V
    .locals 1

    .line 1654
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hamHeight:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1655
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hamHeight:F

    .line 1656
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setHamWidth(F)V
    .locals 1

    .line 1639
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hamWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1640
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hamWidth:F

    .line 1641
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setHideDelay(J)V
    .locals 0

    .line 1901
    iput-wide p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideDelay:J

    .line 1902
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->setShareLinesViewData()V

    return-void
.end method

.method public setHideDuration(J)V
    .locals 3

    .line 1919
    iget-wide v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideDuration:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x1

    .line 1920
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideDuration:J

    .line 1921
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->setShareLinesViewData()V

    return-void
.end method

.method public setHideEaseEnum(Lcom/nightonke/boommenu/Animation/EaseEnum;)V
    .locals 0

    .line 2038
    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->setHideMoveEaseEnum(Lcom/nightonke/boommenu/Animation/EaseEnum;)V

    .line 2039
    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->setHideScaleEaseEnum(Lcom/nightonke/boommenu/Animation/EaseEnum;)V

    .line 2040
    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->setHideRotateEaseEnum(Lcom/nightonke/boommenu/Animation/EaseEnum;)V

    return-void
.end method

.method public setHideMoveEaseEnum(Lcom/nightonke/boommenu/Animation/EaseEnum;)V
    .locals 0

    .line 2053
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideMoveEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-void
.end method

.method public setHideRotateEaseEnum(Lcom/nightonke/boommenu/Animation/EaseEnum;)V
    .locals 0

    .line 2079
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideRotateEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-void
.end method

.method public setHideScaleEaseEnum(Lcom/nightonke/boommenu/Animation/EaseEnum;)V
    .locals 0

    .line 2066
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->hideScaleEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-void
.end method

.method public setHighlightedColor(I)V
    .locals 1

    .line 1563
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->highlightedColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1564
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->highlightedColor:I

    .line 1565
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->setButtonBackground()V

    .line 1566
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setInFragment(Z)V
    .locals 0

    .line 1369
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->inFragment:Z

    return-void
.end method

.method public setInList(Z)V
    .locals 0

    .line 1356
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->inList:Z

    return-void
.end method

.method public setNormalColor(I)V
    .locals 1

    .line 1547
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->normalColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1548
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->normalColor:I

    .line 1549
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->setButtonBackground()V

    .line 1550
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setOnBoomListener(Lcom/nightonke/boommenu/OnBoomListener;)V
    .locals 0

    .line 1830
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->onBoomListener:Lcom/nightonke/boommenu/OnBoomListener;

    return-void
.end method

.method public setOrderEnum(Lcom/nightonke/boommenu/Animation/OrderEnum;)V
    .locals 0

    .line 1962
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->orderEnum:Lcom/nightonke/boommenu/Animation/OrderEnum;

    return-void
.end method

.method public setOrientationAdaptable(Z)V
    .locals 0

    .line 2294
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isOrientationAdaptable:Z

    .line 2295
    iget-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->isOrientationAdaptable:Z

    if-eqz p1, :cond_0

    .line 2296
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->initOrientationListener()V

    :cond_0
    return-void
.end method

.method public setPieceCornerRadius(F)V
    .locals 1

    .line 1669
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceCornerRadius:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1670
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceCornerRadius:F

    .line 1671
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setPieceHorizontalMargin(F)V
    .locals 1

    .line 1684
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceHorizontalMargin:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1685
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceHorizontalMargin:F

    .line 1686
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setPieceInclinedMargin(F)V
    .locals 1

    .line 1714
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceInclinedMargin:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1715
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceInclinedMargin:F

    .line 1716
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setPiecePlaceEnum(Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;)V
    .locals 0

    .line 1798
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->piecePlaceEnum:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    .line 1799
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->clearPieces()V

    .line 1800
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setPieceVerticalMargin(F)V
    .locals 1

    .line 1699
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceVerticalMargin:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1700
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->pieceVerticalMargin:F

    .line 1701
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setRippleEffect(Z)V
    .locals 1

    .line 1531
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->rippleEffect:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1532
    :cond_0
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->rippleEffect:Z

    .line 1533
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->setButtonBackground()V

    .line 1534
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setRotateDegree(I)V
    .locals 0

    .line 2133
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->rotateDegree:I

    return-void
.end method

.method public setShadowColor(I)V
    .locals 1

    .line 1459
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1460
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowColor:I

    .line 1461
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->initShadow()V

    return-void
.end method

.method public setShadowEffect(Z)V
    .locals 1

    .line 1396
    iget-boolean v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowEffect:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1397
    :cond_0
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowEffect:Z

    .line 1398
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->initShadow()V

    return-void
.end method

.method public setShadowOffsetX(I)V
    .locals 1

    .line 1411
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowOffsetX:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1412
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowOffsetX:I

    .line 1413
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->initShadow()V

    return-void
.end method

.method public setShadowOffsetY(I)V
    .locals 1

    .line 1426
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowOffsetY:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1427
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowOffsetY:I

    .line 1428
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->initShadow()V

    return-void
.end method

.method public setShadowRadius(I)V
    .locals 1

    .line 1444
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowRadius:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1445
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shadowRadius:I

    .line 1446
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->initShadow()V

    return-void
.end method

.method public setShareLine1Color(I)V
    .locals 1

    .line 1744
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLine1Color:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1745
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLine1Color:I

    .line 1746
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    if-eqz v0, :cond_1

    .line 1747
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    invoke-virtual {v0, p1}, Lcom/nightonke/boommenu/Animation/ShareLinesView;->setLine1Color(I)V

    .line 1748
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    invoke-virtual {p1}, Lcom/nightonke/boommenu/Animation/ShareLinesView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setShareLine2Color(I)V
    .locals 1

    .line 1762
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLine2Color:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1763
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLine2Color:I

    .line 1764
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    if-eqz v0, :cond_1

    .line 1765
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    invoke-virtual {v0, p1}, Lcom/nightonke/boommenu/Animation/ShareLinesView;->setLine2Color(I)V

    .line 1766
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    invoke-virtual {p1}, Lcom/nightonke/boommenu/Animation/ShareLinesView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setShareLineLength(F)V
    .locals 1

    .line 1729
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLineLength:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1730
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLineLength:F

    .line 1731
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setShareLineWidth(F)V
    .locals 1

    .line 1780
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLineWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1781
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLineWidth:F

    .line 1782
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    if-eqz v0, :cond_1

    .line 1783
    iget-object v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    invoke-virtual {v0, p1}, Lcom/nightonke/boommenu/Animation/ShareLinesView;->setLineWidth(F)V

    .line 1784
    iget-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->shareLinesView:Lcom/nightonke/boommenu/Animation/ShareLinesView;

    invoke-virtual {p1}, Lcom/nightonke/boommenu/Animation/ShareLinesView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setShowDelay(J)V
    .locals 0

    .line 1868
    iput-wide p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showDelay:J

    .line 1869
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->setShareLinesViewData()V

    return-void
.end method

.method public setShowDuration(J)V
    .locals 3

    .line 1886
    iget-wide v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showDuration:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x1

    .line 1887
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showDuration:J

    .line 1888
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->setShareLinesViewData()V

    return-void
.end method

.method public setShowEaseEnum(Lcom/nightonke/boommenu/Animation/EaseEnum;)V
    .locals 0

    .line 1993
    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->setShowMoveEaseEnum(Lcom/nightonke/boommenu/Animation/EaseEnum;)V

    .line 1994
    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->setShowScaleEaseEnum(Lcom/nightonke/boommenu/Animation/EaseEnum;)V

    .line 1995
    invoke-virtual {p0, p1}, Lcom/nightonke/boommenu/BoomMenuButton;->setShowRotateEaseEnum(Lcom/nightonke/boommenu/Animation/EaseEnum;)V

    return-void
.end method

.method public setShowMoveEaseEnum(Lcom/nightonke/boommenu/Animation/EaseEnum;)V
    .locals 0

    .line 2008
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showMoveEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-void
.end method

.method public setShowRotateEaseEnum(Lcom/nightonke/boommenu/Animation/EaseEnum;)V
    .locals 0

    .line 2034
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showRotateEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-void
.end method

.method public setShowScaleEaseEnum(Lcom/nightonke/boommenu/Animation/EaseEnum;)V
    .locals 0

    .line 2021
    iput-object p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->showScaleEaseEnum:Lcom/nightonke/boommenu/Animation/EaseEnum;

    return-void
.end method

.method public setUnableColor(I)V
    .locals 1

    .line 1579
    iget v0, p0, Lcom/nightonke/boommenu/BoomMenuButton;->unableColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1580
    :cond_0
    iput p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->unableColor:I

    .line 1581
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->setButtonBackground()V

    .line 1582
    invoke-direct {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->toLayout()V

    return-void
.end method

.method public setUse3DTransformAnimation(Z)V
    .locals 0

    .line 2092
    iput-boolean p1, p0, Lcom/nightonke/boommenu/BoomMenuButton;->use3DTransformAnimation:Z

    return-void
.end method
