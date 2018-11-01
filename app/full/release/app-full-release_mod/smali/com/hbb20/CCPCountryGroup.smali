.class public Lcom/hbb20/CCPCountryGroup;
.super Ljava/lang/Object;
.source "CCPCountryGroup.java"


# static fields
.field private static countryGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/hbb20/CCPCountryGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field areaCodeLength:I

.field defaultNameCode:Ljava/lang/String;

.field private nameCodeToAreaCodesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/hbb20/CCPCountryGroup;->defaultNameCode:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/hbb20/CCPCountryGroup;->areaCodeLength:I

    .line 21
    iput-object p3, p0, Lcom/hbb20/CCPCountryGroup;->nameCodeToAreaCodesMap:Ljava/util/HashMap;

    return-void
.end method

.method private static addGroupForPhoneCode1()V
    .locals 5

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ag"

    const-string v2, "268"

    .line 61
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ai"

    const-string v2, "264"

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "as"

    const-string v2, "684"

    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bb"

    const-string v2, "246"

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bm"

    const-string v2, "441"

    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bs"

    const-string v2, "242"

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ca"

    const-string v2, "204/226/236/249/250/289/306/343/365/403/416/418/431/437/438/450/506/514/519/579/581/587/600/601/604/613/639/647/705/709/769/778/780/782/807/819/825/867/873/902/905/"

    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dm"

    const-string v2, "767"

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "do"

    const-string v2, "809/829/849"

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gd"

    const-string v2, "473"

    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gu"

    const-string v2, "671"

    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "jm"

    const-string v2, "876"

    .line 72
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "kn"

    const-string v2, "869"

    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ky"

    const-string v2, "345"

    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lc"

    const-string v2, "758"

    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mp"

    const-string v2, "670"

    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ms"

    const-string v2, "664"

    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pr"

    const-string v2, "787"

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sx"

    const-string v2, "721"

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tc"

    const-string v2, "649"

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tt"

    const-string v2, "868"

    .line 81
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vc"

    const-string v2, "784"

    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vg"

    const-string v2, "284"

    .line 83
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vi"

    const-string v2, "340"

    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Lcom/hbb20/CCPCountryGroup;->countryGroups:Landroid/util/SparseArray;

    new-instance v2, Lcom/hbb20/CCPCountryGroup;

    const-string v3, "us"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v0}, Lcom/hbb20/CCPCountryGroup;-><init>(Ljava/lang/String;ILjava/util/HashMap;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static addGroupForPhoneCode358()V
    .locals 5

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ax"

    const-string v2, "18"

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lcom/hbb20/CCPCountryGroup;->countryGroups:Landroid/util/SparseArray;

    new-instance v2, Lcom/hbb20/CCPCountryGroup;

    const-string v3, "fi"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v0}, Lcom/hbb20/CCPCountryGroup;-><init>(Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v0, 0x166

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static addGroupForPhoneCode44()V
    .locals 5

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "gg"

    const-string v2, "1481"

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "im"

    const-string v2, "1624"

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "je"

    const-string v2, "1534"

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lcom/hbb20/CCPCountryGroup;->countryGroups:Landroid/util/SparseArray;

    new-instance v2, Lcom/hbb20/CCPCountryGroup;

    const-string v3, "gb"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v0}, Lcom/hbb20/CCPCountryGroup;-><init>(Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v0, 0x2c

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static getCountryGroupForPhoneCode(I)Lcom/hbb20/CCPCountryGroup;
    .locals 1

    .line 89
    sget-object v0, Lcom/hbb20/CCPCountryGroup;->countryGroups:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/hbb20/CCPCountryGroup;->initializeGroups()V

    .line 92
    :cond_0
    sget-object v0, Lcom/hbb20/CCPCountryGroup;->countryGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hbb20/CCPCountryGroup;

    return-object p0
.end method

.method private static initializeGroups()V
    .locals 1

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/hbb20/CCPCountryGroup;->countryGroups:Landroid/util/SparseArray;

    .line 29
    invoke-static {}, Lcom/hbb20/CCPCountryGroup;->addGroupForPhoneCode1()V

    .line 32
    invoke-static {}, Lcom/hbb20/CCPCountryGroup;->addGroupForPhoneCode44()V

    .line 35
    invoke-static {}, Lcom/hbb20/CCPCountryGroup;->addGroupForPhoneCode358()V

    return-void
.end method


# virtual methods
.method public getCountryForAreaCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/hbb20/CCPCountryGroup;->defaultNameCode:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/hbb20/CCPCountryGroup;->nameCodeToAreaCodesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {p1, p2, v0}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object p1

    return-object p1
.end method
