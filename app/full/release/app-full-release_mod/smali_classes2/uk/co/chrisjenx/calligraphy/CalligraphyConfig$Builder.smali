.class public Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
.super Ljava/lang/Object;
.source "CalligraphyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final INVALID_ATTR_ID:I = -0x1


# instance fields
.field private attrId:I

.field private customViewCreation:Z

.field private customViewTypefaceSupport:Z

.field private fontAssetPath:Ljava/lang/String;

.field private isFontSet:Z

.field private mHasTypefaceClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mStyleClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private reflection:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->reflection:Z

    .line 186
    iput-boolean v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->customViewCreation:Z

    .line 190
    iput-boolean v2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->customViewTypefaceSupport:Z

    .line 194
    sget v0, Luk/co/chrisjenx/calligraphy/R$attr;->fontPath:I

    iput v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->attrId:I

    .line 198
    iput-boolean v2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->isFontSet:Z

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->fontAssetPath:Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->mStyleClassMap:Ljava/util/Map;

    .line 208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->mHasTypefaceClasses:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z
    .locals 0

    .line 174
    iget-boolean p0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->isFontSet:Z

    return p0
.end method

.method static synthetic access$100(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 174
    iget-object p0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->fontAssetPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)I
    .locals 0

    .line 174
    iget p0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->attrId:I

    return p0
.end method

.method static synthetic access$300(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z
    .locals 0

    .line 174
    iget-boolean p0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->reflection:Z

    return p0
.end method

.method static synthetic access$400(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z
    .locals 0

    .line 174
    iget-boolean p0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->customViewCreation:Z

    return p0
.end method

.method static synthetic access$500(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z
    .locals 0

    .line 174
    iget-boolean p0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->customViewTypefaceSupport:Z

    return p0
.end method

.method static synthetic access$600(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Ljava/util/Map;
    .locals 0

    .line 174
    iget-object p0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->mStyleClassMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Ljava/util/Set;
    .locals 0

    .line 174
    iget-object p0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->mHasTypefaceClasses:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public addCustomStyle(Ljava/lang/Class;I)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/TextView;",
            ">;I)",
            "Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->mStyleClassMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public addCustomViewWithSetTypeface(Ljava/lang/Class;)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->customViewTypefaceSupport:Z

    .line 311
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->mHasTypefaceClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
    .locals 1

    .line 316
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->fontAssetPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->isFontSet:Z

    .line 317
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    invoke-direct {v0, p0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;-><init>(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)V

    return-object v0
.end method

.method public disableCustomViewInflation()Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->customViewCreation:Z

    return-object p0
.end method

.method public disablePrivateFactoryInjection()Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->reflection:Z

    return-object p0
.end method

.method public setDefaultFontPath(Ljava/lang/String;)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
    .locals 1

    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->isFontSet:Z

    .line 230
    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->fontAssetPath:Ljava/lang/String;

    return-object p0
.end method

.method public setFontAttrId(I)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
    .locals 0

    .line 217
    iput p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->attrId:I

    return-object p0
.end method
