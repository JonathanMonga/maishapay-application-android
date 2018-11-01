.class public Lcom/hbb20/CCPCountry;
.super Ljava/lang/Object;
.source "CCPCountry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/hbb20/CCPCountry;",
        ">;"
    }
.end annotation


# static fields
.field private static ANGUILLA_AREA_CODES:Ljava/lang/String; = "264"

.field private static ANTIGUA_AND_BARBUDA_AREA_CODES:Ljava/lang/String; = "268"

.field private static BAHAMAS_AREA_CODES:Ljava/lang/String; = "242"

.field private static BARBADOS_AREA_CODES:Ljava/lang/String; = "246"

.field private static BERMUDA_AREA_CODES:Ljava/lang/String; = "441"

.field private static BRITISH_VIRGIN_ISLANDS_AREA_CODES:Ljava/lang/String; = "284"

.field private static CANADA_AREA_CODES:Ljava/lang/String; = "204/226/236/249/250/289/306/343/365/403/416/418/431/437/438/450/506/514/519/579/581/587/600/601/604/613/639/647/705/709/769/778/780/782/807/819/825/867/873/902/905/"

.field private static CAYMAN_ISLANDS_AREA_CODES:Ljava/lang/String; = "345"

.field static DEFAULT_FLAG_RES:I = -0x63

.field private static DOMINICAN_REPUBLIC_AREA_CODES:Ljava/lang/String; = "809/829/849"

.field private static DOMINICA_AREA_CODES:Ljava/lang/String; = "767"

.field private static GRENADA_AREA_CODES:Ljava/lang/String; = "473"

.field private static ISLE_OF_MAN:Ljava/lang/String; = "1624"

.field private static JAMAICA_AREA_CODES:Ljava/lang/String; = "876"

.field private static MONTSERRAT_AREA_CODES:Ljava/lang/String; = "664"

.field private static PUERTO_RICO_AREA_CODES:Ljava/lang/String; = "787"

.field private static SAINT_KITTS_AND_NEVIS_AREA_CODES:Ljava/lang/String; = "869"

.field private static SAINT_LUCIA_AREA_CODES:Ljava/lang/String; = "758"

.field private static SAINT_VINCENT_AND_THE_GRENADINES_AREA_CODES:Ljava/lang/String; = "784"

.field private static SINT_MAARTEN_AREA_CODES:Ljava/lang/String; = "721"

.field static TAG:Ljava/lang/String; = "Class Country"

.field private static TRINIDAD_AND_TOBAGO_AREA_CODES:Ljava/lang/String; = "868"

.field private static TURKS_AND_CAICOS_ISLANDS_AREA_CODES:Ljava/lang/String; = "649"

.field private static US_VIRGIN_ISLANDS_AREA_CODES:Ljava/lang/String; = "340"

.field static dialogTitle:Ljava/lang/String;

.field static loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

.field static loadedLibraryMaterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation
.end field

.field static noResultFoundAckMessage:Ljava/lang/String;

.field static searchHintMessage:Ljava/lang/String;


# instance fields
.field englishName:Ljava/lang/String;

.field flagResID:I

.field name:Ljava/lang/String;

.field nameCode:Ljava/lang/String;

.field phoneCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget v0, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    iput v0, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget v0, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    iput v0, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    .line 64
    iput-object p1, p0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    .line 67
    iput p4, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    return-void
.end method

.method static getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/CCPCountry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker$Language;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;I)",
            "Lcom/hbb20/CCPCountry;"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker$Language;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hbb20/CCPCountry;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 200
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/CCPCountry;

    .line 202
    invoke-virtual {v0}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 208
    :cond_1
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hbb20/CCPCountry;

    .line 209
    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method static getCountryForCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .locals 3

    .line 226
    invoke-static {}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountriesEnglish()Ljava/util/List;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/CCPCountry;

    .line 229
    invoke-virtual {v1}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static getCountryForNameCodeFromCustomMasterList(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;",
            "Lcom/hbb20/CountryCodePicker$Language;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hbb20/CCPCountry;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 253
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hbb20/CCPCountry;

    .line 257
    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 254
    :cond_3
    :goto_0
    invoke-static {p0, p2, p3}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object p0

    return-object p0
.end method

.method static getCountryForNameCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .locals 3

    .line 294
    invoke-static {}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountriesEnglish()Ljava/util/List;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/CCPCountry;

    .line 296
    invoke-virtual {v1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .locals 1

    .line 275
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/util/List;

    move-result-object p0

    .line 276
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hbb20/CCPCountry;

    .line 277
    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCountryForNumber(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .locals 1

    const/4 v0, 0x0

    .line 383
    invoke-static {p0, p1, v0, p2}, Lcom/hbb20/CCPCountry;->getCountryForNumber(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object p0

    return-object p0
.end method

.method static getCountryForNumber(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker$Language;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hbb20/CCPCountry;"
        }
    .end annotation

    .line 333
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 334
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    move v2, v0

    .line 340
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_4

    .line 341
    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 344
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/hbb20/CCPCountryGroup;->getCountryGroupForPhoneCode(I)Lcom/hbb20/CCPCountryGroup;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 346
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_2

    .line 349
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v0, p2

    .line 351
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    iget v1, v4, Lcom/hbb20/CCPCountryGroup;->areaCodeLength:I

    add-int/2addr v1, v0

    if-lt p2, v1, :cond_1

    .line 352
    iget p2, v4, Lcom/hbb20/CCPCountryGroup;->areaCodeLength:I

    add-int/2addr p2, v0

    invoke-virtual {p3, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 353
    invoke-virtual {v4, p0, p1, p2}, Lcom/hbb20/CCPCountryGroup;->getCountryForAreaCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object p0

    return-object p0

    .line 355
    :cond_1
    iget-object p2, v4, Lcom/hbb20/CCPCountryGroup;->defaultNameCode:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object p0

    return-object p0

    .line 358
    :cond_2
    invoke-static {p0, p1, p2, v3}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method static getCustomMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker;",
            ")",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->refreshCustomMasterList()V

    .line 238
    iget-object v0, p1, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->getCustomMasterCountriesList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 241
    :cond_0
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getDialogTitle(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;
    .locals 1

    .line 153
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/hbb20/CCPCountry;->dialogTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hbb20/CCPCountry;->dialogTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 154
    :cond_0
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->loadDataFromXML(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)V

    .line 156
    :cond_1
    sget-object p0, Lcom/hbb20/CCPCountry;->dialogTitle:Ljava/lang/String;

    return-object p0
.end method

.method static getFlagMasterResID(Lcom/hbb20/CCPCountry;)I
    .locals 1

    .line 393
    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "zw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xef

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "zm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xee

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "za"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xed

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "yt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xec

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "ye"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xeb

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "xk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xea

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "ws"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe9

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "wf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe8

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "vu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe7

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "vn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe6

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "vi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe5

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "vg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe4

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "ve"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe3

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "vc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe2

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "va"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe1

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "uz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe0

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "uy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xdf

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "us"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xde

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "ug"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xdd

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "ua"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xdc

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "tz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xdb

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "tw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xda

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd9

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd8

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "tr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd7

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "to"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd6

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "tn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd5

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "tm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd4

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "tl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd3

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "tk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd2

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "tj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd1

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "th"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd0

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "tg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xcf

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "td"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xce

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "tc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xcd

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "sz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xcc

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "sy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xcb

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "sx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xca

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "sv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc9

    goto/16 :goto_1

    :sswitch_27
    const-string v0, "st"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc8

    goto/16 :goto_1

    :sswitch_28
    const-string v0, "sr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc7

    goto/16 :goto_1

    :sswitch_29
    const-string v0, "so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc6

    goto/16 :goto_1

    :sswitch_2a
    const-string v0, "sn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc5

    goto/16 :goto_1

    :sswitch_2b
    const-string v0, "sm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc4

    goto/16 :goto_1

    :sswitch_2c
    const-string v0, "sl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc3

    goto/16 :goto_1

    :sswitch_2d
    const-string v0, "sk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc2

    goto/16 :goto_1

    :sswitch_2e
    const-string v0, "si"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc1

    goto/16 :goto_1

    :sswitch_2f
    const-string v0, "sh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc0

    goto/16 :goto_1

    :sswitch_30
    const-string v0, "sg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xbf

    goto/16 :goto_1

    :sswitch_31
    const-string v0, "se"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xbe

    goto/16 :goto_1

    :sswitch_32
    const-string v0, "sd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xbd

    goto/16 :goto_1

    :sswitch_33
    const-string v0, "sc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xbc

    goto/16 :goto_1

    :sswitch_34
    const-string v0, "sb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xbb

    goto/16 :goto_1

    :sswitch_35
    const-string v0, "sa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xba

    goto/16 :goto_1

    :sswitch_36
    const-string v0, "rw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb9

    goto/16 :goto_1

    :sswitch_37
    const-string v0, "ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb8

    goto/16 :goto_1

    :sswitch_38
    const-string v0, "rs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb7

    goto/16 :goto_1

    :sswitch_39
    const-string v0, "ro"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb6

    goto/16 :goto_1

    :sswitch_3a
    const-string v0, "re"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb5

    goto/16 :goto_1

    :sswitch_3b
    const-string v0, "qa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb4

    goto/16 :goto_1

    :sswitch_3c
    const-string v0, "py"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb3

    goto/16 :goto_1

    :sswitch_3d
    const-string v0, "pw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb2

    goto/16 :goto_1

    :sswitch_3e
    const-string v0, "pt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb1

    goto/16 :goto_1

    :sswitch_3f
    const-string v0, "ps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb0

    goto/16 :goto_1

    :sswitch_40
    const-string v0, "pr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xaf

    goto/16 :goto_1

    :sswitch_41
    const-string v0, "pn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xae

    goto/16 :goto_1

    :sswitch_42
    const-string v0, "pm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xad

    goto/16 :goto_1

    :sswitch_43
    const-string v0, "pl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xac

    goto/16 :goto_1

    :sswitch_44
    const-string v0, "pk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xab

    goto/16 :goto_1

    :sswitch_45
    const-string v0, "ph"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xaa

    goto/16 :goto_1

    :sswitch_46
    const-string v0, "pg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa9

    goto/16 :goto_1

    :sswitch_47
    const-string v0, "pf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa8

    goto/16 :goto_1

    :sswitch_48
    const-string v0, "pe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa7

    goto/16 :goto_1

    :sswitch_49
    const-string v0, "pa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa6

    goto/16 :goto_1

    :sswitch_4a
    const-string v0, "om"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa5

    goto/16 :goto_1

    :sswitch_4b
    const-string v0, "nz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa4

    goto/16 :goto_1

    :sswitch_4c
    const-string v0, "nu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa3

    goto/16 :goto_1

    :sswitch_4d
    const-string v0, "nr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa2

    goto/16 :goto_1

    :sswitch_4e
    const-string v0, "np"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa1

    goto/16 :goto_1

    :sswitch_4f
    const-string v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa0

    goto/16 :goto_1

    :sswitch_50
    const-string v0, "nl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9f

    goto/16 :goto_1

    :sswitch_51
    const-string v0, "ni"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9e

    goto/16 :goto_1

    :sswitch_52
    const-string v0, "ng"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9d

    goto/16 :goto_1

    :sswitch_53
    const-string v0, "nf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9c

    goto/16 :goto_1

    :sswitch_54
    const-string v0, "ne"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9b

    goto/16 :goto_1

    :sswitch_55
    const-string v0, "nc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9a

    goto/16 :goto_1

    :sswitch_56
    const-string v0, "na"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x99

    goto/16 :goto_1

    :sswitch_57
    const-string v0, "mz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x98

    goto/16 :goto_1

    :sswitch_58
    const-string v0, "my"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x97

    goto/16 :goto_1

    :sswitch_59
    const-string v0, "mx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x96

    goto/16 :goto_1

    :sswitch_5a
    const-string v0, "mw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x95

    goto/16 :goto_1

    :sswitch_5b
    const-string v0, "mv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x94

    goto/16 :goto_1

    :sswitch_5c
    const-string v0, "mu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x93

    goto/16 :goto_1

    :sswitch_5d
    const-string v0, "mt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x92

    goto/16 :goto_1

    :sswitch_5e
    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x91

    goto/16 :goto_1

    :sswitch_5f
    const-string v0, "mr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x90

    goto/16 :goto_1

    :sswitch_60
    const-string v0, "mq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8f

    goto/16 :goto_1

    :sswitch_61
    const-string v0, "mp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8e

    goto/16 :goto_1

    :sswitch_62
    const-string v0, "mo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8d

    goto/16 :goto_1

    :sswitch_63
    const-string v0, "mn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8c

    goto/16 :goto_1

    :sswitch_64
    const-string v0, "mm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8b

    goto/16 :goto_1

    :sswitch_65
    const-string v0, "ml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8a

    goto/16 :goto_1

    :sswitch_66
    const-string v0, "mk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x89

    goto/16 :goto_1

    :sswitch_67
    const-string v0, "mh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x88

    goto/16 :goto_1

    :sswitch_68
    const-string v0, "mg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x87

    goto/16 :goto_1

    :sswitch_69
    const-string v0, "mf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x86

    goto/16 :goto_1

    :sswitch_6a
    const-string v0, "me"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x85

    goto/16 :goto_1

    :sswitch_6b
    const-string v0, "md"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x84

    goto/16 :goto_1

    :sswitch_6c
    const-string v0, "mc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x83

    goto/16 :goto_1

    :sswitch_6d
    const-string v0, "ma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x82

    goto/16 :goto_1

    :sswitch_6e
    const-string v0, "ly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x81

    goto/16 :goto_1

    :sswitch_6f
    const-string v0, "lv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    goto/16 :goto_1

    :sswitch_70
    const-string v0, "lu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x7f

    goto/16 :goto_1

    :sswitch_71
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x7e

    goto/16 :goto_1

    :sswitch_72
    const-string v0, "ls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x7d

    goto/16 :goto_1

    :sswitch_73
    const-string v0, "lr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x7c

    goto/16 :goto_1

    :sswitch_74
    const-string v0, "lk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x7b

    goto/16 :goto_1

    :sswitch_75
    const-string v0, "li"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x7a

    goto/16 :goto_1

    :sswitch_76
    const-string v0, "lc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x79

    goto/16 :goto_1

    :sswitch_77
    const-string v0, "lb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x78

    goto/16 :goto_1

    :sswitch_78
    const-string v0, "la"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x77

    goto/16 :goto_1

    :sswitch_79
    const-string v0, "kz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x76

    goto/16 :goto_1

    :sswitch_7a
    const-string v0, "ky"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x75

    goto/16 :goto_1

    :sswitch_7b
    const-string v0, "kw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x74

    goto/16 :goto_1

    :sswitch_7c
    const-string v0, "kr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x73

    goto/16 :goto_1

    :sswitch_7d
    const-string v0, "kp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x72

    goto/16 :goto_1

    :sswitch_7e
    const-string v0, "kn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x71

    goto/16 :goto_1

    :sswitch_7f
    const-string v0, "km"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x70

    goto/16 :goto_1

    :sswitch_80
    const-string v0, "ki"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x6f

    goto/16 :goto_1

    :sswitch_81
    const-string v0, "kh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x6e

    goto/16 :goto_1

    :sswitch_82
    const-string v0, "kg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x6d

    goto/16 :goto_1

    :sswitch_83
    const-string v0, "ke"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x6c

    goto/16 :goto_1

    :sswitch_84
    const-string v0, "jp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x6b

    goto/16 :goto_1

    :sswitch_85
    const-string v0, "jo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x6a

    goto/16 :goto_1

    :sswitch_86
    const-string v0, "jm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x69

    goto/16 :goto_1

    :sswitch_87
    const-string v0, "je"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x68

    goto/16 :goto_1

    :sswitch_88
    const-string v0, "it"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x67

    goto/16 :goto_1

    :sswitch_89
    const-string v0, "is"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x62

    goto/16 :goto_1

    :sswitch_8a
    const-string v0, "ir"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x66

    goto/16 :goto_1

    :sswitch_8b
    const-string v0, "iq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x65

    goto/16 :goto_1

    :sswitch_8c
    const-string v0, "io"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x64

    goto/16 :goto_1

    :sswitch_8d
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x63

    goto/16 :goto_1

    :sswitch_8e
    const-string v0, "im"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x61

    goto/16 :goto_1

    :sswitch_8f
    const-string v0, "il"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x60

    goto/16 :goto_1

    :sswitch_90
    const-string v0, "ie"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x5f

    goto/16 :goto_1

    :sswitch_91
    const-string v0, "id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x5e

    goto/16 :goto_1

    :sswitch_92
    const-string v0, "hu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x5d

    goto/16 :goto_1

    :sswitch_93
    const-string v0, "ht"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x5c

    goto/16 :goto_1

    :sswitch_94
    const-string v0, "hr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x5b

    goto/16 :goto_1

    :sswitch_95
    const-string v0, "hn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x5a

    goto/16 :goto_1

    :sswitch_96
    const-string v0, "hk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x59

    goto/16 :goto_1

    :sswitch_97
    const-string v0, "gy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x58

    goto/16 :goto_1

    :sswitch_98
    const-string v0, "gw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x57

    goto/16 :goto_1

    :sswitch_99
    const-string v0, "gu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x56

    goto/16 :goto_1

    :sswitch_9a
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto/16 :goto_1

    :sswitch_9b
    const-string v0, "gr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x54

    goto/16 :goto_1

    :sswitch_9c
    const-string v0, "gq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x53

    goto/16 :goto_1

    :sswitch_9d
    const-string v0, "gp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x52

    goto/16 :goto_1

    :sswitch_9e
    const-string v0, "gn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x51

    goto/16 :goto_1

    :sswitch_9f
    const-string v0, "gm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x50

    goto/16 :goto_1

    :sswitch_a0
    const-string v0, "gl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x4f

    goto/16 :goto_1

    :sswitch_a1
    const-string v0, "gi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x4e

    goto/16 :goto_1

    :sswitch_a2
    const-string v0, "gh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x4d

    goto/16 :goto_1

    :sswitch_a3
    const-string v0, "gg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x4c

    goto/16 :goto_1

    :sswitch_a4
    const-string v0, "gf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x4b

    goto/16 :goto_1

    :sswitch_a5
    const-string v0, "ge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x4a

    goto/16 :goto_1

    :sswitch_a6
    const-string v0, "gd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x49

    goto/16 :goto_1

    :sswitch_a7
    const-string v0, "gb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x48

    goto/16 :goto_1

    :sswitch_a8
    const-string v0, "ga"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x47

    goto/16 :goto_1

    :sswitch_a9
    const-string v0, "fr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x46

    goto/16 :goto_1

    :sswitch_aa
    const-string v0, "fo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x45

    goto/16 :goto_1

    :sswitch_ab
    const-string v0, "fm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x44

    goto/16 :goto_1

    :sswitch_ac
    const-string v0, "fk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x43

    goto/16 :goto_1

    :sswitch_ad
    const-string v0, "fj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x42

    goto/16 :goto_1

    :sswitch_ae
    const-string v0, "fi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x41

    goto/16 :goto_1

    :sswitch_af
    const-string v0, "et"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x40

    goto/16 :goto_1

    :sswitch_b0
    const-string v0, "es"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3f

    goto/16 :goto_1

    :sswitch_b1
    const-string v0, "er"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3e

    goto/16 :goto_1

    :sswitch_b2
    const-string v0, "eg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3d

    goto/16 :goto_1

    :sswitch_b3
    const-string v0, "ee"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3c

    goto/16 :goto_1

    :sswitch_b4
    const-string v0, "ec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3b

    goto/16 :goto_1

    :sswitch_b5
    const-string v0, "dz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3a

    goto/16 :goto_1

    :sswitch_b6
    const-string v0, "do"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x39

    goto/16 :goto_1

    :sswitch_b7
    const-string v0, "dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x38

    goto/16 :goto_1

    :sswitch_b8
    const-string v0, "dk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x37

    goto/16 :goto_1

    :sswitch_b9
    const-string v0, "dj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x36

    goto/16 :goto_1

    :sswitch_ba
    const-string v0, "de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x35

    goto/16 :goto_1

    :sswitch_bb
    const-string v0, "cz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x34

    goto/16 :goto_1

    :sswitch_bc
    const-string v0, "cy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x33

    goto/16 :goto_1

    :sswitch_bd
    const-string v0, "cx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x32

    goto/16 :goto_1

    :sswitch_be
    const-string v0, "cv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x31

    goto/16 :goto_1

    :sswitch_bf
    const-string v0, "cu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x30

    goto/16 :goto_1

    :sswitch_c0
    const-string v0, "cr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2f

    goto/16 :goto_1

    :sswitch_c1
    const-string v0, "co"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2e

    goto/16 :goto_1

    :sswitch_c2
    const-string v0, "cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2d

    goto/16 :goto_1

    :sswitch_c3
    const-string v0, "cm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2c

    goto/16 :goto_1

    :sswitch_c4
    const-string v0, "cl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2b

    goto/16 :goto_1

    :sswitch_c5
    const-string v0, "ck"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2a

    goto/16 :goto_1

    :sswitch_c6
    const-string v0, "ci"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x29

    goto/16 :goto_1

    :sswitch_c7
    const-string v0, "ch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x28

    goto/16 :goto_1

    :sswitch_c8
    const-string v0, "cg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x27

    goto/16 :goto_1

    :sswitch_c9
    const-string v0, "cf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x26

    goto/16 :goto_1

    :sswitch_ca
    const-string v0, "cd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x25

    goto/16 :goto_1

    :sswitch_cb
    const-string v0, "cc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x24

    goto/16 :goto_1

    :sswitch_cc
    const-string v0, "ca"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x23

    goto/16 :goto_1

    :sswitch_cd
    const-string v0, "bz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x22

    goto/16 :goto_1

    :sswitch_ce
    const-string v0, "by"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x21

    goto/16 :goto_1

    :sswitch_cf
    const-string v0, "bw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x20

    goto/16 :goto_1

    :sswitch_d0
    const-string v0, "bt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1f

    goto/16 :goto_1

    :sswitch_d1
    const-string v0, "bs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1e

    goto/16 :goto_1

    :sswitch_d2
    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1d

    goto/16 :goto_1

    :sswitch_d3
    const-string v0, "bo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1c

    goto/16 :goto_1

    :sswitch_d4
    const-string v0, "bn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1b

    goto/16 :goto_1

    :sswitch_d5
    const-string v0, "bm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1a

    goto/16 :goto_1

    :sswitch_d6
    const-string v0, "bl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x19

    goto/16 :goto_1

    :sswitch_d7
    const-string v0, "bj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x18

    goto/16 :goto_1

    :sswitch_d8
    const-string v0, "bi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x17

    goto/16 :goto_1

    :sswitch_d9
    const-string v0, "bh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x16

    goto/16 :goto_1

    :sswitch_da
    const-string v0, "bg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x15

    goto/16 :goto_1

    :sswitch_db
    const-string v0, "bf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x14

    goto/16 :goto_1

    :sswitch_dc
    const-string v0, "be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x13

    goto/16 :goto_1

    :sswitch_dd
    const-string v0, "bd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x12

    goto/16 :goto_1

    :sswitch_de
    const-string v0, "bb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    goto/16 :goto_1

    :sswitch_df
    const-string v0, "ba"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    goto/16 :goto_1

    :sswitch_e0
    const-string v0, "az"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xf

    goto/16 :goto_1

    :sswitch_e1
    const-string v0, "ax"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe

    goto/16 :goto_1

    :sswitch_e2
    const-string v0, "aw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd

    goto/16 :goto_1

    :sswitch_e3
    const-string v0, "au"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto/16 :goto_1

    :sswitch_e4
    const-string v0, "at"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto/16 :goto_1

    :sswitch_e5
    const-string v0, "as"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto/16 :goto_1

    :sswitch_e6
    const-string v0, "ar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_e7
    const-string v0, "aq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_e8
    const-string v0, "ao"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_e9
    const-string v0, "am"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_ea
    const-string v0, "al"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_eb
    const-string v0, "ai"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_ec
    const-string v0, "ag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_ed
    const-string v0, "af"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_ee
    const-string v0, "ae"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_ef
    const-string v0, "ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 876
    sget p0, Lcom/hbb20/R$drawable;->flag_transparent:I

    return p0

    .line 874
    :pswitch_0
    sget p0, Lcom/hbb20/R$drawable;->flag_zimbabwe:I

    return p0

    .line 872
    :pswitch_1
    sget p0, Lcom/hbb20/R$drawable;->flag_zambia:I

    return p0

    .line 870
    :pswitch_2
    sget p0, Lcom/hbb20/R$drawable;->flag_south_africa:I

    return p0

    .line 868
    :pswitch_3
    sget p0, Lcom/hbb20/R$drawable;->flag_martinique:I

    return p0

    .line 866
    :pswitch_4
    sget p0, Lcom/hbb20/R$drawable;->flag_yemen:I

    return p0

    .line 864
    :pswitch_5
    sget p0, Lcom/hbb20/R$drawable;->flag_kosovo:I

    return p0

    .line 862
    :pswitch_6
    sget p0, Lcom/hbb20/R$drawable;->flag_samoa:I

    return p0

    .line 860
    :pswitch_7
    sget p0, Lcom/hbb20/R$drawable;->flag_wallis_and_futuna:I

    return p0

    .line 858
    :pswitch_8
    sget p0, Lcom/hbb20/R$drawable;->flag_vanuatu:I

    return p0

    .line 856
    :pswitch_9
    sget p0, Lcom/hbb20/R$drawable;->flag_vietnam:I

    return p0

    .line 854
    :pswitch_a
    sget p0, Lcom/hbb20/R$drawable;->flag_us_virgin_islands:I

    return p0

    .line 852
    :pswitch_b
    sget p0, Lcom/hbb20/R$drawable;->flag_british_virgin_islands:I

    return p0

    .line 850
    :pswitch_c
    sget p0, Lcom/hbb20/R$drawable;->flag_venezuela:I

    return p0

    .line 848
    :pswitch_d
    sget p0, Lcom/hbb20/R$drawable;->flag_saint_vicent_and_the_grenadines:I

    return p0

    .line 846
    :pswitch_e
    sget p0, Lcom/hbb20/R$drawable;->flag_vatican_city:I

    return p0

    .line 844
    :pswitch_f
    sget p0, Lcom/hbb20/R$drawable;->flag_uzbekistan:I

    return p0

    .line 842
    :pswitch_10
    sget p0, Lcom/hbb20/R$drawable;->flag_uruguay:I

    return p0

    .line 840
    :pswitch_11
    sget p0, Lcom/hbb20/R$drawable;->flag_united_states_of_america:I

    return p0

    .line 838
    :pswitch_12
    sget p0, Lcom/hbb20/R$drawable;->flag_uganda:I

    return p0

    .line 836
    :pswitch_13
    sget p0, Lcom/hbb20/R$drawable;->flag_ukraine:I

    return p0

    .line 834
    :pswitch_14
    sget p0, Lcom/hbb20/R$drawable;->flag_tanzania:I

    return p0

    .line 832
    :pswitch_15
    sget p0, Lcom/hbb20/R$drawable;->flag_taiwan:I

    return p0

    .line 830
    :pswitch_16
    sget p0, Lcom/hbb20/R$drawable;->flag_tuvalu:I

    return p0

    .line 828
    :pswitch_17
    sget p0, Lcom/hbb20/R$drawable;->flag_trinidad_and_tobago:I

    return p0

    .line 826
    :pswitch_18
    sget p0, Lcom/hbb20/R$drawable;->flag_turkey:I

    return p0

    .line 824
    :pswitch_19
    sget p0, Lcom/hbb20/R$drawable;->flag_tonga:I

    return p0

    .line 822
    :pswitch_1a
    sget p0, Lcom/hbb20/R$drawable;->flag_tunisia:I

    return p0

    .line 820
    :pswitch_1b
    sget p0, Lcom/hbb20/R$drawable;->flag_turkmenistan:I

    return p0

    .line 818
    :pswitch_1c
    sget p0, Lcom/hbb20/R$drawable;->flag_timor_leste:I

    return p0

    .line 816
    :pswitch_1d
    sget p0, Lcom/hbb20/R$drawable;->flag_tokelau:I

    return p0

    .line 814
    :pswitch_1e
    sget p0, Lcom/hbb20/R$drawable;->flag_tajikistan:I

    return p0

    .line 812
    :pswitch_1f
    sget p0, Lcom/hbb20/R$drawable;->flag_thailand:I

    return p0

    .line 810
    :pswitch_20
    sget p0, Lcom/hbb20/R$drawable;->flag_togo:I

    return p0

    .line 808
    :pswitch_21
    sget p0, Lcom/hbb20/R$drawable;->flag_chad:I

    return p0

    .line 806
    :pswitch_22
    sget p0, Lcom/hbb20/R$drawable;->flag_turks_and_caicos_islands:I

    return p0

    .line 804
    :pswitch_23
    sget p0, Lcom/hbb20/R$drawable;->flag_swaziland:I

    return p0

    .line 802
    :pswitch_24
    sget p0, Lcom/hbb20/R$drawable;->flag_syria:I

    return p0

    .line 800
    :pswitch_25
    sget p0, Lcom/hbb20/R$drawable;->flag_sint_maarten:I

    return p0

    .line 798
    :pswitch_26
    sget p0, Lcom/hbb20/R$drawable;->flag_el_salvador:I

    return p0

    .line 796
    :pswitch_27
    sget p0, Lcom/hbb20/R$drawable;->flag_sao_tome_and_principe:I

    return p0

    .line 794
    :pswitch_28
    sget p0, Lcom/hbb20/R$drawable;->flag_suriname:I

    return p0

    .line 792
    :pswitch_29
    sget p0, Lcom/hbb20/R$drawable;->flag_somalia:I

    return p0

    .line 790
    :pswitch_2a
    sget p0, Lcom/hbb20/R$drawable;->flag_senegal:I

    return p0

    .line 788
    :pswitch_2b
    sget p0, Lcom/hbb20/R$drawable;->flag_san_marino:I

    return p0

    .line 786
    :pswitch_2c
    sget p0, Lcom/hbb20/R$drawable;->flag_sierra_leone:I

    return p0

    .line 784
    :pswitch_2d
    sget p0, Lcom/hbb20/R$drawable;->flag_slovakia:I

    return p0

    .line 782
    :pswitch_2e
    sget p0, Lcom/hbb20/R$drawable;->flag_slovenia:I

    return p0

    .line 780
    :pswitch_2f
    sget p0, Lcom/hbb20/R$drawable;->flag_saint_helena:I

    return p0

    .line 778
    :pswitch_30
    sget p0, Lcom/hbb20/R$drawable;->flag_singapore:I

    return p0

    .line 776
    :pswitch_31
    sget p0, Lcom/hbb20/R$drawable;->flag_sweden:I

    return p0

    .line 774
    :pswitch_32
    sget p0, Lcom/hbb20/R$drawable;->flag_sudan:I

    return p0

    .line 772
    :pswitch_33
    sget p0, Lcom/hbb20/R$drawable;->flag_seychelles:I

    return p0

    .line 770
    :pswitch_34
    sget p0, Lcom/hbb20/R$drawable;->flag_soloman_islands:I

    return p0

    .line 768
    :pswitch_35
    sget p0, Lcom/hbb20/R$drawable;->flag_saudi_arabia:I

    return p0

    .line 766
    :pswitch_36
    sget p0, Lcom/hbb20/R$drawable;->flag_rwanda:I

    return p0

    .line 764
    :pswitch_37
    sget p0, Lcom/hbb20/R$drawable;->flag_russian_federation:I

    return p0

    .line 762
    :pswitch_38
    sget p0, Lcom/hbb20/R$drawable;->flag_serbia:I

    return p0

    .line 760
    :pswitch_39
    sget p0, Lcom/hbb20/R$drawable;->flag_romania:I

    return p0

    .line 758
    :pswitch_3a
    sget p0, Lcom/hbb20/R$drawable;->flag_martinique:I

    return p0

    .line 756
    :pswitch_3b
    sget p0, Lcom/hbb20/R$drawable;->flag_qatar:I

    return p0

    .line 754
    :pswitch_3c
    sget p0, Lcom/hbb20/R$drawable;->flag_paraguay:I

    return p0

    .line 752
    :pswitch_3d
    sget p0, Lcom/hbb20/R$drawable;->flag_palau:I

    return p0

    .line 750
    :pswitch_3e
    sget p0, Lcom/hbb20/R$drawable;->flag_portugal:I

    return p0

    .line 748
    :pswitch_3f
    sget p0, Lcom/hbb20/R$drawable;->flag_palestine:I

    return p0

    .line 746
    :pswitch_40
    sget p0, Lcom/hbb20/R$drawable;->flag_puerto_rico:I

    return p0

    .line 744
    :pswitch_41
    sget p0, Lcom/hbb20/R$drawable;->flag_pitcairn_islands:I

    return p0

    .line 742
    :pswitch_42
    sget p0, Lcom/hbb20/R$drawable;->flag_saint_pierre:I

    return p0

    .line 740
    :pswitch_43
    sget p0, Lcom/hbb20/R$drawable;->flag_poland:I

    return p0

    .line 738
    :pswitch_44
    sget p0, Lcom/hbb20/R$drawable;->flag_pakistan:I

    return p0

    .line 736
    :pswitch_45
    sget p0, Lcom/hbb20/R$drawable;->flag_philippines:I

    return p0

    .line 734
    :pswitch_46
    sget p0, Lcom/hbb20/R$drawable;->flag_papua_new_guinea:I

    return p0

    .line 732
    :pswitch_47
    sget p0, Lcom/hbb20/R$drawable;->flag_french_polynesia:I

    return p0

    .line 730
    :pswitch_48
    sget p0, Lcom/hbb20/R$drawable;->flag_peru:I

    return p0

    .line 728
    :pswitch_49
    sget p0, Lcom/hbb20/R$drawable;->flag_panama:I

    return p0

    .line 726
    :pswitch_4a
    sget p0, Lcom/hbb20/R$drawable;->flag_oman:I

    return p0

    .line 724
    :pswitch_4b
    sget p0, Lcom/hbb20/R$drawable;->flag_new_zealand:I

    return p0

    .line 722
    :pswitch_4c
    sget p0, Lcom/hbb20/R$drawable;->flag_niue:I

    return p0

    .line 720
    :pswitch_4d
    sget p0, Lcom/hbb20/R$drawable;->flag_nauru:I

    return p0

    .line 718
    :pswitch_4e
    sget p0, Lcom/hbb20/R$drawable;->flag_nepal:I

    return p0

    .line 716
    :pswitch_4f
    sget p0, Lcom/hbb20/R$drawable;->flag_norway:I

    return p0

    .line 714
    :pswitch_50
    sget p0, Lcom/hbb20/R$drawable;->flag_netherlands:I

    return p0

    .line 712
    :pswitch_51
    sget p0, Lcom/hbb20/R$drawable;->flag_nicaragua:I

    return p0

    .line 710
    :pswitch_52
    sget p0, Lcom/hbb20/R$drawable;->flag_nigeria:I

    return p0

    .line 708
    :pswitch_53
    sget p0, Lcom/hbb20/R$drawable;->flag_norfolk_island:I

    return p0

    .line 706
    :pswitch_54
    sget p0, Lcom/hbb20/R$drawable;->flag_niger:I

    return p0

    .line 704
    :pswitch_55
    sget p0, Lcom/hbb20/R$drawable;->flag_new_caledonia:I

    return p0

    .line 702
    :pswitch_56
    sget p0, Lcom/hbb20/R$drawable;->flag_namibia:I

    return p0

    .line 700
    :pswitch_57
    sget p0, Lcom/hbb20/R$drawable;->flag_mozambique:I

    return p0

    .line 698
    :pswitch_58
    sget p0, Lcom/hbb20/R$drawable;->flag_malaysia:I

    return p0

    .line 696
    :pswitch_59
    sget p0, Lcom/hbb20/R$drawable;->flag_mexico:I

    return p0

    .line 694
    :pswitch_5a
    sget p0, Lcom/hbb20/R$drawable;->flag_malawi:I

    return p0

    .line 692
    :pswitch_5b
    sget p0, Lcom/hbb20/R$drawable;->flag_maldives:I

    return p0

    .line 690
    :pswitch_5c
    sget p0, Lcom/hbb20/R$drawable;->flag_mauritius:I

    return p0

    .line 688
    :pswitch_5d
    sget p0, Lcom/hbb20/R$drawable;->flag_malta:I

    return p0

    .line 686
    :pswitch_5e
    sget p0, Lcom/hbb20/R$drawable;->flag_montserrat:I

    return p0

    .line 684
    :pswitch_5f
    sget p0, Lcom/hbb20/R$drawable;->flag_mauritania:I

    return p0

    .line 682
    :pswitch_60
    sget p0, Lcom/hbb20/R$drawable;->flag_martinique:I

    return p0

    .line 680
    :pswitch_61
    sget p0, Lcom/hbb20/R$drawable;->flag_northern_mariana_islands:I

    return p0

    .line 678
    :pswitch_62
    sget p0, Lcom/hbb20/R$drawable;->flag_macao:I

    return p0

    .line 676
    :pswitch_63
    sget p0, Lcom/hbb20/R$drawable;->flag_mongolia:I

    return p0

    .line 674
    :pswitch_64
    sget p0, Lcom/hbb20/R$drawable;->flag_myanmar:I

    return p0

    .line 672
    :pswitch_65
    sget p0, Lcom/hbb20/R$drawable;->flag_mali:I

    return p0

    .line 670
    :pswitch_66
    sget p0, Lcom/hbb20/R$drawable;->flag_macedonia:I

    return p0

    .line 668
    :pswitch_67
    sget p0, Lcom/hbb20/R$drawable;->flag_marshall_islands:I

    return p0

    .line 666
    :pswitch_68
    sget p0, Lcom/hbb20/R$drawable;->flag_madagascar:I

    return p0

    .line 664
    :pswitch_69
    sget p0, Lcom/hbb20/R$drawable;->flag_saint_martin:I

    return p0

    .line 662
    :pswitch_6a
    sget p0, Lcom/hbb20/R$drawable;->flag_of_montenegro:I

    return p0

    .line 660
    :pswitch_6b
    sget p0, Lcom/hbb20/R$drawable;->flag_moldova:I

    return p0

    .line 658
    :pswitch_6c
    sget p0, Lcom/hbb20/R$drawable;->flag_monaco:I

    return p0

    .line 656
    :pswitch_6d
    sget p0, Lcom/hbb20/R$drawable;->flag_morocco:I

    return p0

    .line 654
    :pswitch_6e
    sget p0, Lcom/hbb20/R$drawable;->flag_libya:I

    return p0

    .line 652
    :pswitch_6f
    sget p0, Lcom/hbb20/R$drawable;->flag_latvia:I

    return p0

    .line 650
    :pswitch_70
    sget p0, Lcom/hbb20/R$drawable;->flag_luxembourg:I

    return p0

    .line 648
    :pswitch_71
    sget p0, Lcom/hbb20/R$drawable;->flag_lithuania:I

    return p0

    .line 646
    :pswitch_72
    sget p0, Lcom/hbb20/R$drawable;->flag_lesotho:I

    return p0

    .line 644
    :pswitch_73
    sget p0, Lcom/hbb20/R$drawable;->flag_liberia:I

    return p0

    .line 642
    :pswitch_74
    sget p0, Lcom/hbb20/R$drawable;->flag_sri_lanka:I

    return p0

    .line 640
    :pswitch_75
    sget p0, Lcom/hbb20/R$drawable;->flag_liechtenstein:I

    return p0

    .line 638
    :pswitch_76
    sget p0, Lcom/hbb20/R$drawable;->flag_saint_lucia:I

    return p0

    .line 636
    :pswitch_77
    sget p0, Lcom/hbb20/R$drawable;->flag_lebanon:I

    return p0

    .line 634
    :pswitch_78
    sget p0, Lcom/hbb20/R$drawable;->flag_laos:I

    return p0

    .line 632
    :pswitch_79
    sget p0, Lcom/hbb20/R$drawable;->flag_kazakhstan:I

    return p0

    .line 630
    :pswitch_7a
    sget p0, Lcom/hbb20/R$drawable;->flag_cayman_islands:I

    return p0

    .line 628
    :pswitch_7b
    sget p0, Lcom/hbb20/R$drawable;->flag_kuwait:I

    return p0

    .line 626
    :pswitch_7c
    sget p0, Lcom/hbb20/R$drawable;->flag_south_korea:I

    return p0

    .line 624
    :pswitch_7d
    sget p0, Lcom/hbb20/R$drawable;->flag_north_korea:I

    return p0

    .line 622
    :pswitch_7e
    sget p0, Lcom/hbb20/R$drawable;->flag_saint_kitts_and_nevis:I

    return p0

    .line 620
    :pswitch_7f
    sget p0, Lcom/hbb20/R$drawable;->flag_comoros:I

    return p0

    .line 618
    :pswitch_80
    sget p0, Lcom/hbb20/R$drawable;->flag_kiribati:I

    return p0

    .line 616
    :pswitch_81
    sget p0, Lcom/hbb20/R$drawable;->flag_cambodia:I

    return p0

    .line 614
    :pswitch_82
    sget p0, Lcom/hbb20/R$drawable;->flag_kyrgyzstan:I

    return p0

    .line 612
    :pswitch_83
    sget p0, Lcom/hbb20/R$drawable;->flag_kenya:I

    return p0

    .line 610
    :pswitch_84
    sget p0, Lcom/hbb20/R$drawable;->flag_japan:I

    return p0

    .line 608
    :pswitch_85
    sget p0, Lcom/hbb20/R$drawable;->flag_jordan:I

    return p0

    .line 606
    :pswitch_86
    sget p0, Lcom/hbb20/R$drawable;->flag_jamaica:I

    return p0

    .line 604
    :pswitch_87
    sget p0, Lcom/hbb20/R$drawable;->flag_jersey:I

    return p0

    .line 602
    :pswitch_88
    sget p0, Lcom/hbb20/R$drawable;->flag_italy:I

    return p0

    .line 600
    :pswitch_89
    sget p0, Lcom/hbb20/R$drawable;->flag_iran:I

    return p0

    .line 598
    :pswitch_8a
    sget p0, Lcom/hbb20/R$drawable;->flag_iraq_new:I

    return p0

    .line 596
    :pswitch_8b
    sget p0, Lcom/hbb20/R$drawable;->flag_british_indian_ocean_territory:I

    return p0

    .line 594
    :pswitch_8c
    sget p0, Lcom/hbb20/R$drawable;->flag_india:I

    return p0

    .line 592
    :pswitch_8d
    sget p0, Lcom/hbb20/R$drawable;->flag_iceland:I

    return p0

    .line 590
    :pswitch_8e
    sget p0, Lcom/hbb20/R$drawable;->flag_isleof_man:I

    return p0

    .line 588
    :pswitch_8f
    sget p0, Lcom/hbb20/R$drawable;->flag_israel:I

    return p0

    .line 586
    :pswitch_90
    sget p0, Lcom/hbb20/R$drawable;->flag_ireland:I

    return p0

    .line 584
    :pswitch_91
    sget p0, Lcom/hbb20/R$drawable;->flag_indonesia:I

    return p0

    .line 582
    :pswitch_92
    sget p0, Lcom/hbb20/R$drawable;->flag_hungary:I

    return p0

    .line 580
    :pswitch_93
    sget p0, Lcom/hbb20/R$drawable;->flag_haiti:I

    return p0

    .line 578
    :pswitch_94
    sget p0, Lcom/hbb20/R$drawable;->flag_croatia:I

    return p0

    .line 576
    :pswitch_95
    sget p0, Lcom/hbb20/R$drawable;->flag_honduras:I

    return p0

    .line 574
    :pswitch_96
    sget p0, Lcom/hbb20/R$drawable;->flag_hong_kong:I

    return p0

    .line 572
    :pswitch_97
    sget p0, Lcom/hbb20/R$drawable;->flag_guyana:I

    return p0

    .line 570
    :pswitch_98
    sget p0, Lcom/hbb20/R$drawable;->flag_guinea_bissau:I

    return p0

    .line 568
    :pswitch_99
    sget p0, Lcom/hbb20/R$drawable;->flag_guam:I

    return p0

    .line 566
    :pswitch_9a
    sget p0, Lcom/hbb20/R$drawable;->flag_guatemala:I

    return p0

    .line 564
    :pswitch_9b
    sget p0, Lcom/hbb20/R$drawable;->flag_greece:I

    return p0

    .line 562
    :pswitch_9c
    sget p0, Lcom/hbb20/R$drawable;->flag_equatorial_guinea:I

    return p0

    .line 560
    :pswitch_9d
    sget p0, Lcom/hbb20/R$drawable;->flag_guadeloupe:I

    return p0

    .line 558
    :pswitch_9e
    sget p0, Lcom/hbb20/R$drawable;->flag_guinea:I

    return p0

    .line 556
    :pswitch_9f
    sget p0, Lcom/hbb20/R$drawable;->flag_gambia:I

    return p0

    .line 554
    :pswitch_a0
    sget p0, Lcom/hbb20/R$drawable;->flag_greenland:I

    return p0

    .line 552
    :pswitch_a1
    sget p0, Lcom/hbb20/R$drawable;->flag_gibraltar:I

    return p0

    .line 550
    :pswitch_a2
    sget p0, Lcom/hbb20/R$drawable;->flag_ghana:I

    return p0

    .line 548
    :pswitch_a3
    sget p0, Lcom/hbb20/R$drawable;->flag_guernsey:I

    return p0

    .line 546
    :pswitch_a4
    sget p0, Lcom/hbb20/R$drawable;->flag_guyane:I

    return p0

    .line 544
    :pswitch_a5
    sget p0, Lcom/hbb20/R$drawable;->flag_georgia:I

    return p0

    .line 542
    :pswitch_a6
    sget p0, Lcom/hbb20/R$drawable;->flag_grenada:I

    return p0

    .line 540
    :pswitch_a7
    sget p0, Lcom/hbb20/R$drawable;->flag_united_kingdom:I

    return p0

    .line 538
    :pswitch_a8
    sget p0, Lcom/hbb20/R$drawable;->flag_gabon:I

    return p0

    .line 536
    :pswitch_a9
    sget p0, Lcom/hbb20/R$drawable;->flag_france:I

    return p0

    .line 534
    :pswitch_aa
    sget p0, Lcom/hbb20/R$drawable;->flag_faroe_islands:I

    return p0

    .line 532
    :pswitch_ab
    sget p0, Lcom/hbb20/R$drawable;->flag_micronesia:I

    return p0

    .line 530
    :pswitch_ac
    sget p0, Lcom/hbb20/R$drawable;->flag_falkland_islands:I

    return p0

    .line 528
    :pswitch_ad
    sget p0, Lcom/hbb20/R$drawable;->flag_fiji:I

    return p0

    .line 526
    :pswitch_ae
    sget p0, Lcom/hbb20/R$drawable;->flag_finland:I

    return p0

    .line 524
    :pswitch_af
    sget p0, Lcom/hbb20/R$drawable;->flag_ethiopia:I

    return p0

    .line 522
    :pswitch_b0
    sget p0, Lcom/hbb20/R$drawable;->flag_spain:I

    return p0

    .line 520
    :pswitch_b1
    sget p0, Lcom/hbb20/R$drawable;->flag_eritrea:I

    return p0

    .line 518
    :pswitch_b2
    sget p0, Lcom/hbb20/R$drawable;->flag_egypt:I

    return p0

    .line 516
    :pswitch_b3
    sget p0, Lcom/hbb20/R$drawable;->flag_estonia:I

    return p0

    .line 514
    :pswitch_b4
    sget p0, Lcom/hbb20/R$drawable;->flag_ecuador:I

    return p0

    .line 512
    :pswitch_b5
    sget p0, Lcom/hbb20/R$drawable;->flag_algeria:I

    return p0

    .line 510
    :pswitch_b6
    sget p0, Lcom/hbb20/R$drawable;->flag_dominican_republic:I

    return p0

    .line 508
    :pswitch_b7
    sget p0, Lcom/hbb20/R$drawable;->flag_dominica:I

    return p0

    .line 506
    :pswitch_b8
    sget p0, Lcom/hbb20/R$drawable;->flag_denmark:I

    return p0

    .line 504
    :pswitch_b9
    sget p0, Lcom/hbb20/R$drawable;->flag_djibouti:I

    return p0

    .line 502
    :pswitch_ba
    sget p0, Lcom/hbb20/R$drawable;->flag_germany:I

    return p0

    .line 500
    :pswitch_bb
    sget p0, Lcom/hbb20/R$drawable;->flag_czech_republic:I

    return p0

    .line 498
    :pswitch_bc
    sget p0, Lcom/hbb20/R$drawable;->flag_cyprus:I

    return p0

    .line 496
    :pswitch_bd
    sget p0, Lcom/hbb20/R$drawable;->flag_christmas_island:I

    return p0

    .line 494
    :pswitch_be
    sget p0, Lcom/hbb20/R$drawable;->flag_cape_verde:I

    return p0

    .line 492
    :pswitch_bf
    sget p0, Lcom/hbb20/R$drawable;->flag_cuba:I

    return p0

    .line 490
    :pswitch_c0
    sget p0, Lcom/hbb20/R$drawable;->flag_costa_rica:I

    return p0

    .line 488
    :pswitch_c1
    sget p0, Lcom/hbb20/R$drawable;->flag_colombia:I

    return p0

    .line 486
    :pswitch_c2
    sget p0, Lcom/hbb20/R$drawable;->flag_china:I

    return p0

    .line 484
    :pswitch_c3
    sget p0, Lcom/hbb20/R$drawable;->flag_cameroon:I

    return p0

    .line 482
    :pswitch_c4
    sget p0, Lcom/hbb20/R$drawable;->flag_chile:I

    return p0

    .line 480
    :pswitch_c5
    sget p0, Lcom/hbb20/R$drawable;->flag_cook_islands:I

    return p0

    .line 478
    :pswitch_c6
    sget p0, Lcom/hbb20/R$drawable;->flag_cote_divoire:I

    return p0

    .line 476
    :pswitch_c7
    sget p0, Lcom/hbb20/R$drawable;->flag_switzerland:I

    return p0

    .line 474
    :pswitch_c8
    sget p0, Lcom/hbb20/R$drawable;->flag_republic_of_the_congo:I

    return p0

    .line 472
    :pswitch_c9
    sget p0, Lcom/hbb20/R$drawable;->flag_central_african_republic:I

    return p0

    .line 470
    :pswitch_ca
    sget p0, Lcom/hbb20/R$drawable;->flag_democratic_republic_of_the_congo:I

    return p0

    .line 468
    :pswitch_cb
    sget p0, Lcom/hbb20/R$drawable;->flag_cocos:I

    return p0

    .line 466
    :pswitch_cc
    sget p0, Lcom/hbb20/R$drawable;->flag_canada:I

    return p0

    .line 464
    :pswitch_cd
    sget p0, Lcom/hbb20/R$drawable;->flag_belize:I

    return p0

    .line 462
    :pswitch_ce
    sget p0, Lcom/hbb20/R$drawable;->flag_belarus:I

    return p0

    .line 460
    :pswitch_cf
    sget p0, Lcom/hbb20/R$drawable;->flag_botswana:I

    return p0

    .line 458
    :pswitch_d0
    sget p0, Lcom/hbb20/R$drawable;->flag_bhutan:I

    return p0

    .line 456
    :pswitch_d1
    sget p0, Lcom/hbb20/R$drawable;->flag_bahamas:I

    return p0

    .line 454
    :pswitch_d2
    sget p0, Lcom/hbb20/R$drawable;->flag_brazil:I

    return p0

    .line 452
    :pswitch_d3
    sget p0, Lcom/hbb20/R$drawable;->flag_bolivia:I

    return p0

    .line 450
    :pswitch_d4
    sget p0, Lcom/hbb20/R$drawable;->flag_brunei:I

    return p0

    .line 448
    :pswitch_d5
    sget p0, Lcom/hbb20/R$drawable;->flag_bermuda:I

    return p0

    .line 446
    :pswitch_d6
    sget p0, Lcom/hbb20/R$drawable;->flag_saint_barthelemy:I

    return p0

    .line 444
    :pswitch_d7
    sget p0, Lcom/hbb20/R$drawable;->flag_benin:I

    return p0

    .line 442
    :pswitch_d8
    sget p0, Lcom/hbb20/R$drawable;->flag_burundi:I

    return p0

    .line 440
    :pswitch_d9
    sget p0, Lcom/hbb20/R$drawable;->flag_bahrain:I

    return p0

    .line 438
    :pswitch_da
    sget p0, Lcom/hbb20/R$drawable;->flag_bulgaria:I

    return p0

    .line 436
    :pswitch_db
    sget p0, Lcom/hbb20/R$drawable;->flag_burkina_faso:I

    return p0

    .line 434
    :pswitch_dc
    sget p0, Lcom/hbb20/R$drawable;->flag_belgium:I

    return p0

    .line 432
    :pswitch_dd
    sget p0, Lcom/hbb20/R$drawable;->flag_bangladesh:I

    return p0

    .line 430
    :pswitch_de
    sget p0, Lcom/hbb20/R$drawable;->flag_barbados:I

    return p0

    .line 428
    :pswitch_df
    sget p0, Lcom/hbb20/R$drawable;->flag_bosnia:I

    return p0

    .line 426
    :pswitch_e0
    sget p0, Lcom/hbb20/R$drawable;->flag_azerbaijan:I

    return p0

    .line 424
    :pswitch_e1
    sget p0, Lcom/hbb20/R$drawable;->flag_aland:I

    return p0

    .line 422
    :pswitch_e2
    sget p0, Lcom/hbb20/R$drawable;->flag_aruba:I

    return p0

    .line 420
    :pswitch_e3
    sget p0, Lcom/hbb20/R$drawable;->flag_australia:I

    return p0

    .line 418
    :pswitch_e4
    sget p0, Lcom/hbb20/R$drawable;->flag_austria:I

    return p0

    .line 416
    :pswitch_e5
    sget p0, Lcom/hbb20/R$drawable;->flag_american_samoa:I

    return p0

    .line 414
    :pswitch_e6
    sget p0, Lcom/hbb20/R$drawable;->flag_argentina:I

    return p0

    .line 412
    :pswitch_e7
    sget p0, Lcom/hbb20/R$drawable;->flag_antarctica:I

    return p0

    .line 410
    :pswitch_e8
    sget p0, Lcom/hbb20/R$drawable;->flag_angola:I

    return p0

    .line 408
    :pswitch_e9
    sget p0, Lcom/hbb20/R$drawable;->flag_armenia:I

    return p0

    .line 406
    :pswitch_ea
    sget p0, Lcom/hbb20/R$drawable;->flag_albania:I

    return p0

    .line 404
    :pswitch_eb
    sget p0, Lcom/hbb20/R$drawable;->flag_anguilla:I

    return p0

    .line 402
    :pswitch_ec
    sget p0, Lcom/hbb20/R$drawable;->flag_antigua_and_barbuda:I

    return p0

    .line 400
    :pswitch_ed
    sget p0, Lcom/hbb20/R$drawable;->flag_afghanistan:I

    return p0

    .line 398
    :pswitch_ee
    sget p0, Lcom/hbb20/R$drawable;->flag_uae:I

    return p0

    .line 396
    :pswitch_ef
    sget p0, Lcom/hbb20/R$drawable;->flag_andorra:I

    return p0

    :sswitch_data_0
    .sparse-switch
        0xc23 -> :sswitch_ef
        0xc24 -> :sswitch_ee
        0xc25 -> :sswitch_ed
        0xc26 -> :sswitch_ec
        0xc28 -> :sswitch_eb
        0xc2b -> :sswitch_ea
        0xc2c -> :sswitch_e9
        0xc2e -> :sswitch_e8
        0xc30 -> :sswitch_e7
        0xc31 -> :sswitch_e6
        0xc32 -> :sswitch_e5
        0xc33 -> :sswitch_e4
        0xc34 -> :sswitch_e3
        0xc36 -> :sswitch_e2
        0xc37 -> :sswitch_e1
        0xc39 -> :sswitch_e0
        0xc3f -> :sswitch_df
        0xc40 -> :sswitch_de
        0xc42 -> :sswitch_dd
        0xc43 -> :sswitch_dc
        0xc44 -> :sswitch_db
        0xc45 -> :sswitch_da
        0xc46 -> :sswitch_d9
        0xc47 -> :sswitch_d8
        0xc48 -> :sswitch_d7
        0xc4a -> :sswitch_d6
        0xc4b -> :sswitch_d5
        0xc4c -> :sswitch_d4
        0xc4d -> :sswitch_d3
        0xc50 -> :sswitch_d2
        0xc51 -> :sswitch_d1
        0xc52 -> :sswitch_d0
        0xc55 -> :sswitch_cf
        0xc57 -> :sswitch_ce
        0xc58 -> :sswitch_cd
        0xc5e -> :sswitch_cc
        0xc60 -> :sswitch_cb
        0xc61 -> :sswitch_ca
        0xc63 -> :sswitch_c9
        0xc64 -> :sswitch_c8
        0xc65 -> :sswitch_c7
        0xc66 -> :sswitch_c6
        0xc68 -> :sswitch_c5
        0xc69 -> :sswitch_c4
        0xc6a -> :sswitch_c3
        0xc6b -> :sswitch_c2
        0xc6c -> :sswitch_c1
        0xc6f -> :sswitch_c0
        0xc72 -> :sswitch_bf
        0xc73 -> :sswitch_be
        0xc75 -> :sswitch_bd
        0xc76 -> :sswitch_bc
        0xc77 -> :sswitch_bb
        0xc81 -> :sswitch_ba
        0xc86 -> :sswitch_b9
        0xc87 -> :sswitch_b8
        0xc89 -> :sswitch_b7
        0xc8b -> :sswitch_b6
        0xc96 -> :sswitch_b5
        0xc9e -> :sswitch_b4
        0xca0 -> :sswitch_b3
        0xca2 -> :sswitch_b2
        0xcad -> :sswitch_b1
        0xcae -> :sswitch_b0
        0xcaf -> :sswitch_af
        0xcc3 -> :sswitch_ae
        0xcc4 -> :sswitch_ad
        0xcc5 -> :sswitch_ac
        0xcc7 -> :sswitch_ab
        0xcc9 -> :sswitch_aa
        0xccc -> :sswitch_a9
        0xcda -> :sswitch_a8
        0xcdb -> :sswitch_a7
        0xcdd -> :sswitch_a6
        0xcde -> :sswitch_a5
        0xcdf -> :sswitch_a4
        0xce0 -> :sswitch_a3
        0xce1 -> :sswitch_a2
        0xce2 -> :sswitch_a1
        0xce5 -> :sswitch_a0
        0xce6 -> :sswitch_9f
        0xce7 -> :sswitch_9e
        0xce9 -> :sswitch_9d
        0xcea -> :sswitch_9c
        0xceb -> :sswitch_9b
        0xced -> :sswitch_9a
        0xcee -> :sswitch_99
        0xcf0 -> :sswitch_98
        0xcf2 -> :sswitch_97
        0xd03 -> :sswitch_96
        0xd06 -> :sswitch_95
        0xd0a -> :sswitch_94
        0xd0c -> :sswitch_93
        0xd0d -> :sswitch_92
        0xd1b -> :sswitch_91
        0xd1c -> :sswitch_90
        0xd23 -> :sswitch_8f
        0xd24 -> :sswitch_8e
        0xd25 -> :sswitch_8d
        0xd26 -> :sswitch_8c
        0xd28 -> :sswitch_8b
        0xd29 -> :sswitch_8a
        0xd2a -> :sswitch_89
        0xd2b -> :sswitch_88
        0xd3b -> :sswitch_87
        0xd43 -> :sswitch_86
        0xd45 -> :sswitch_85
        0xd46 -> :sswitch_84
        0xd5a -> :sswitch_83
        0xd5c -> :sswitch_82
        0xd5d -> :sswitch_81
        0xd5e -> :sswitch_80
        0xd62 -> :sswitch_7f
        0xd63 -> :sswitch_7e
        0xd65 -> :sswitch_7d
        0xd67 -> :sswitch_7c
        0xd6c -> :sswitch_7b
        0xd6e -> :sswitch_7a
        0xd6f -> :sswitch_79
        0xd75 -> :sswitch_78
        0xd76 -> :sswitch_77
        0xd77 -> :sswitch_76
        0xd7d -> :sswitch_75
        0xd7f -> :sswitch_74
        0xd86 -> :sswitch_73
        0xd87 -> :sswitch_72
        0xd88 -> :sswitch_71
        0xd89 -> :sswitch_70
        0xd8a -> :sswitch_6f
        0xd8d -> :sswitch_6e
        0xd94 -> :sswitch_6d
        0xd96 -> :sswitch_6c
        0xd97 -> :sswitch_6b
        0xd98 -> :sswitch_6a
        0xd99 -> :sswitch_69
        0xd9a -> :sswitch_68
        0xd9b -> :sswitch_67
        0xd9e -> :sswitch_66
        0xd9f -> :sswitch_65
        0xda0 -> :sswitch_64
        0xda1 -> :sswitch_63
        0xda2 -> :sswitch_62
        0xda3 -> :sswitch_61
        0xda4 -> :sswitch_60
        0xda5 -> :sswitch_5f
        0xda6 -> :sswitch_5e
        0xda7 -> :sswitch_5d
        0xda8 -> :sswitch_5c
        0xda9 -> :sswitch_5b
        0xdaa -> :sswitch_5a
        0xdab -> :sswitch_59
        0xdac -> :sswitch_58
        0xdad -> :sswitch_57
        0xdb3 -> :sswitch_56
        0xdb5 -> :sswitch_55
        0xdb7 -> :sswitch_54
        0xdb8 -> :sswitch_53
        0xdb9 -> :sswitch_52
        0xdbb -> :sswitch_51
        0xdbe -> :sswitch_50
        0xdc1 -> :sswitch_4f
        0xdc2 -> :sswitch_4e
        0xdc4 -> :sswitch_4d
        0xdc7 -> :sswitch_4c
        0xdcc -> :sswitch_4b
        0xdde -> :sswitch_4a
        0xdf1 -> :sswitch_49
        0xdf5 -> :sswitch_48
        0xdf6 -> :sswitch_47
        0xdf7 -> :sswitch_46
        0xdf8 -> :sswitch_45
        0xdfb -> :sswitch_44
        0xdfc -> :sswitch_43
        0xdfd -> :sswitch_42
        0xdfe -> :sswitch_41
        0xe02 -> :sswitch_40
        0xe03 -> :sswitch_3f
        0xe04 -> :sswitch_3e
        0xe07 -> :sswitch_3d
        0xe09 -> :sswitch_3c
        0xe10 -> :sswitch_3b
        0xe33 -> :sswitch_3a
        0xe3d -> :sswitch_39
        0xe41 -> :sswitch_38
        0xe43 -> :sswitch_37
        0xe45 -> :sswitch_36
        0xe4e -> :sswitch_35
        0xe4f -> :sswitch_34
        0xe50 -> :sswitch_33
        0xe51 -> :sswitch_32
        0xe52 -> :sswitch_31
        0xe54 -> :sswitch_30
        0xe55 -> :sswitch_2f
        0xe56 -> :sswitch_2e
        0xe58 -> :sswitch_2d
        0xe59 -> :sswitch_2c
        0xe5a -> :sswitch_2b
        0xe5b -> :sswitch_2a
        0xe5c -> :sswitch_29
        0xe5f -> :sswitch_28
        0xe61 -> :sswitch_27
        0xe63 -> :sswitch_26
        0xe65 -> :sswitch_25
        0xe66 -> :sswitch_24
        0xe67 -> :sswitch_23
        0xe6f -> :sswitch_22
        0xe70 -> :sswitch_21
        0xe73 -> :sswitch_20
        0xe74 -> :sswitch_1f
        0xe76 -> :sswitch_1e
        0xe77 -> :sswitch_1d
        0xe78 -> :sswitch_1c
        0xe79 -> :sswitch_1b
        0xe7a -> :sswitch_1a
        0xe7b -> :sswitch_19
        0xe7e -> :sswitch_18
        0xe80 -> :sswitch_17
        0xe82 -> :sswitch_16
        0xe83 -> :sswitch_15
        0xe86 -> :sswitch_14
        0xe8c -> :sswitch_13
        0xe92 -> :sswitch_12
        0xe9e -> :sswitch_11
        0xea4 -> :sswitch_10
        0xea5 -> :sswitch_f
        0xeab -> :sswitch_e
        0xead -> :sswitch_d
        0xeaf -> :sswitch_c
        0xeb1 -> :sswitch_b
        0xeb3 -> :sswitch_a
        0xeb8 -> :sswitch_9
        0xebf -> :sswitch_8
        0xecf -> :sswitch_7
        0xedc -> :sswitch_6
        0xef3 -> :sswitch_5
        0xf0c -> :sswitch_4
        0xf1b -> :sswitch_3
        0xf27 -> :sswitch_2
        0xf33 -> :sswitch_1
        0xf3d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLibraryMasterCountriesEnglish()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 894
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 895
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ad"

    const-string v3, "376"

    const-string v4, "Andorra"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ae"

    const-string v3, "971"

    const-string v4, "United Arab Emirates (UAE)"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "af"

    const-string v3, "93"

    const-string v4, "Afghanistan"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ag"

    const-string v3, "1"

    const-string v4, "Antigua and Barbuda"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ai"

    const-string v3, "1"

    const-string v4, "Anguilla"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "al"

    const-string v3, "355"

    const-string v4, "Albania"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "am"

    const-string v3, "374"

    const-string v4, "Armenia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ao"

    const-string v3, "244"

    const-string v4, "Angola"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "aq"

    const-string v3, "672"

    const-string v4, "Antarctica"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ar"

    const-string v3, "54"

    const-string v4, "Argentina"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "as"

    const-string v3, "1"

    const-string v4, "American Samoa"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 906
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "at"

    const-string v3, "43"

    const-string v4, "Austria"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "au"

    const-string v3, "61"

    const-string v4, "Australia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "aw"

    const-string v3, "297"

    const-string v4, "Aruba"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "az"

    const-string v3, "358"

    const-string v4, "Aland Islands"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "az"

    const-string v3, "994"

    const-string v4, "Azerbaijan"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ba"

    const-string v3, "387"

    const-string v4, "Bosnia And Herzegovina"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "bb"

    const-string v3, "1"

    const-string v4, "Barbados"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "bd"

    const-string v3, "880"

    const-string v4, "Bangladesh"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "be"

    const-string v3, "32"

    const-string v4, "Belgium"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "bf"

    const-string v3, "226"

    const-string v4, "Burkina Faso"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "bg"

    const-string v3, "359"

    const-string v4, "Bulgaria"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "bh"

    const-string v3, "973"

    const-string v4, "Bahrain"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "bi"

    const-string v3, "257"

    const-string v4, "Burundi"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "bj"

    const-string v3, "229"

    const-string v4, "Benin"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "bl"

    const-string v3, "590"

    const-string v4, "Saint Barth\u00e9lemy"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "bm"

    const-string v3, "1"

    const-string v4, "Bermuda"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "bn"

    const-string v3, "673"

    const-string v4, "Brunei Darussalam"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "bo"

    const-string v3, "591"

    const-string v4, "Bolivia, Plurinational State Of"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "br"

    const-string v3, "55"

    const-string v4, "Brazil"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "bs"

    const-string v3, "1"

    const-string v4, "Bahamas"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "bt"

    const-string v3, "975"

    const-string v4, "Bhutan"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "bw"

    const-string v3, "267"

    const-string v4, "Botswana"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "by"

    const-string v3, "375"

    const-string v4, "Belarus"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "bz"

    const-string v3, "501"

    const-string v4, "Belize"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ca"

    const-string v3, "1"

    const-string v4, "Canada"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "cc"

    const-string v3, "61"

    const-string v4, "Cocos (keeling) Islands"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "cd"

    const-string v3, "243"

    const-string v4, "Congo, The Democratic Republic Of The"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "cf"

    const-string v3, "236"

    const-string v4, "Central African Republic"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "cg"

    const-string v3, "242"

    const-string v4, "Congo"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ch"

    const-string v3, "41"

    const-string v4, "Switzerland"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ci"

    const-string v3, "225"

    const-string v4, "C\u00f4te D\'ivoire"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ck"

    const-string v3, "682"

    const-string v4, "Cook Islands"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "cl"

    const-string v3, "56"

    const-string v4, "Chile"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "cm"

    const-string v3, "237"

    const-string v4, "Cameroon"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "cn"

    const-string v3, "86"

    const-string v4, "China"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "co"

    const-string v3, "57"

    const-string v4, "Colombia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "cr"

    const-string v3, "506"

    const-string v4, "Costa Rica"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "cu"

    const-string v3, "53"

    const-string v4, "Cuba"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "cv"

    const-string v3, "238"

    const-string v4, "Cape Verde"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "cx"

    const-string v3, "61"

    const-string v4, "Christmas Island"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "cy"

    const-string v3, "357"

    const-string v4, "Cyprus"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "cz"

    const-string v3, "420"

    const-string v4, "Czech Republic"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "de"

    const-string v3, "49"

    const-string v4, "Germany"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "dj"

    const-string v3, "253"

    const-string v4, "Djibouti"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "dk"

    const-string v3, "45"

    const-string v4, "Denmark"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "dm"

    const-string v3, "1"

    const-string v4, "Dominica"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "do"

    const-string v3, "1"

    const-string v4, "Dominican Republic"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "dz"

    const-string v3, "213"

    const-string v4, "Algeria"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ec"

    const-string v3, "593"

    const-string v4, "Ecuador"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ee"

    const-string v3, "372"

    const-string v4, "Estonia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "eg"

    const-string v3, "20"

    const-string v4, "Egypt"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "er"

    const-string v3, "291"

    const-string v4, "Eritrea"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "es"

    const-string v3, "34"

    const-string v4, "Spain"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "et"

    const-string v3, "251"

    const-string v4, "Ethiopia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "fi"

    const-string v3, "358"

    const-string v4, "Finland"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "fj"

    const-string v3, "679"

    const-string v4, "Fiji"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "fk"

    const-string v3, "500"

    const-string v4, "Falkland Islands (malvinas)"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "fm"

    const-string v3, "691"

    const-string v4, "Micronesia, Federated States Of"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "fo"

    const-string v3, "298"

    const-string v4, "Faroe Islands"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "fr"

    const-string v3, "33"

    const-string v4, "France"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ga"

    const-string v3, "241"

    const-string v4, "Gabon"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "gb"

    const-string v3, "44"

    const-string v4, "United Kingdom"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "gd"

    const-string v3, "1"

    const-string v4, "Grenada"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 969
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ge"

    const-string v3, "995"

    const-string v4, "Georgia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "gf"

    const-string v3, "594"

    const-string v4, "French Guyana"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "gh"

    const-string v3, "233"

    const-string v4, "Ghana"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "gi"

    const-string v3, "350"

    const-string v4, "Gibraltar"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "gl"

    const-string v3, "299"

    const-string v4, "Greenland"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "gm"

    const-string v3, "220"

    const-string v4, "Gambia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "gn"

    const-string v3, "224"

    const-string v4, "Guinea"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "gp"

    const-string v3, "450"

    const-string v4, "Guadeloupe"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "gq"

    const-string v3, "240"

    const-string v4, "Equatorial Guinea"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 978
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "gr"

    const-string v3, "30"

    const-string v4, "Greece"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "gt"

    const-string v3, "502"

    const-string v4, "Guatemala"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "gu"

    const-string v3, "1"

    const-string v4, "Guam"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "gw"

    const-string v3, "245"

    const-string v4, "Guinea-bissau"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "gy"

    const-string v3, "592"

    const-string v4, "Guyana"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "hk"

    const-string v3, "852"

    const-string v4, "Hong Kong"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "hn"

    const-string v3, "504"

    const-string v4, "Honduras"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "hr"

    const-string v3, "385"

    const-string v4, "Croatia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ht"

    const-string v3, "509"

    const-string v4, "Haiti"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 987
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "hu"

    const-string v3, "36"

    const-string v4, "Hungary"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "id"

    const-string v3, "62"

    const-string v4, "Indonesia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ie"

    const-string v3, "353"

    const-string v4, "Ireland"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "il"

    const-string v3, "972"

    const-string v4, "Israel"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "im"

    const-string v3, "44"

    const-string v4, "Isle Of Man"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "is"

    const-string v3, "354"

    const-string v4, "Iceland"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "in"

    const-string v3, "91"

    const-string v4, "India"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "io"

    const-string v3, "246"

    const-string v4, "British Indian Ocean Territory"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "iq"

    const-string v3, "964"

    const-string v4, "Iraq"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ir"

    const-string v3, "98"

    const-string v4, "Iran, Islamic Republic Of"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "it"

    const-string v3, "39"

    const-string v4, "Italy"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "je"

    const-string v3, "44"

    const-string v4, "Jersey "

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "jm"

    const-string v3, "1"

    const-string v4, "Jamaica"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "jo"

    const-string v3, "962"

    const-string v4, "Jordan"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "jp"

    const-string v3, "81"

    const-string v4, "Japan"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ke"

    const-string v3, "254"

    const-string v4, "Kenya"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "kg"

    const-string v3, "996"

    const-string v4, "Kyrgyzstan"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "kh"

    const-string v3, "855"

    const-string v4, "Cambodia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ki"

    const-string v3, "686"

    const-string v4, "Kiribati"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "km"

    const-string v3, "269"

    const-string v4, "Comoros"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "kn"

    const-string v3, "1"

    const-string v4, "Saint Kitts and Nevis"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "kp"

    const-string v3, "850"

    const-string v4, "North Korea"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "kr"

    const-string v3, "82"

    const-string v4, "South Korea"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "kw"

    const-string v3, "965"

    const-string v4, "Kuwait"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ky"

    const-string v3, "1"

    const-string v4, "Cayman Islands"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "kz"

    const-string v3, "7"

    const-string v4, "Kazakhstan"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "la"

    const-string v3, "856"

    const-string v4, "Lao People\'s Democratic Republic"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "lb"

    const-string v3, "961"

    const-string v4, "Lebanon"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1015
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "lc"

    const-string v3, "1"

    const-string v4, "Saint Lucia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "li"

    const-string v3, "423"

    const-string v4, "Liechtenstein"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "lk"

    const-string v3, "94"

    const-string v4, "Sri Lanka"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "lr"

    const-string v3, "231"

    const-string v4, "Liberia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ls"

    const-string v3, "266"

    const-string v4, "Lesotho"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "lt"

    const-string v3, "370"

    const-string v4, "Lithuania"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1021
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "lu"

    const-string v3, "352"

    const-string v4, "Luxembourg"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "lv"

    const-string v3, "371"

    const-string v4, "Latvia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ly"

    const-string v3, "218"

    const-string v4, "Libya"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ma"

    const-string v3, "212"

    const-string v4, "Morocco"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mc"

    const-string v3, "377"

    const-string v4, "Monaco"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "md"

    const-string v3, "373"

    const-string v4, "Moldova, Republic Of"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "me"

    const-string v3, "382"

    const-string v4, "Montenegro"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mf"

    const-string v3, "590"

    const-string v4, "Saint Martin"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mg"

    const-string v3, "261"

    const-string v4, "Madagascar"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mh"

    const-string v3, "692"

    const-string v4, "Marshall Islands"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mk"

    const-string v3, "389"

    const-string v4, "Macedonia, The Former Yugoslav Republic Of"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ml"

    const-string v3, "223"

    const-string v4, "Mali"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mm"

    const-string v3, "95"

    const-string v4, "Myanmar"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1034
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mn"

    const-string v3, "976"

    const-string v4, "Mongolia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1035
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mo"

    const-string v3, "853"

    const-string v4, "Macao"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mp"

    const-string v3, "1"

    const-string v4, "Northern Mariana Islands"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mq"

    const-string v3, "596"

    const-string v4, "Martinique"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mr"

    const-string v3, "222"

    const-string v4, "Mauritania"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ms"

    const-string v3, "1"

    const-string v4, "Montserrat"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mt"

    const-string v3, "356"

    const-string v4, "Malta"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mu"

    const-string v3, "230"

    const-string v4, "Mauritius"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mv"

    const-string v3, "960"

    const-string v4, "Maldives"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mw"

    const-string v3, "265"

    const-string v4, "Malawi"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mx"

    const-string v3, "52"

    const-string v4, "Mexico"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1045
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "my"

    const-string v3, "60"

    const-string v4, "Malaysia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "mz"

    const-string v3, "258"

    const-string v4, "Mozambique"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "na"

    const-string v3, "264"

    const-string v4, "Namibia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "nc"

    const-string v3, "687"

    const-string v4, "New Caledonia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ne"

    const-string v3, "227"

    const-string v4, "Niger"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "nf"

    const-string v3, "672"

    const-string v4, "Norfolk Islands"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ng"

    const-string v3, "234"

    const-string v4, "Nigeria"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ni"

    const-string v3, "505"

    const-string v4, "Nicaragua"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "nl"

    const-string v3, "31"

    const-string v4, "Netherlands"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "no"

    const-string v3, "47"

    const-string v4, "Norway"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "np"

    const-string v3, "977"

    const-string v4, "Nepal"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "nr"

    const-string v3, "674"

    const-string v4, "Nauru"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "nu"

    const-string v3, "683"

    const-string v4, "Niue"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "nz"

    const-string v3, "64"

    const-string v4, "New Zealand"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "om"

    const-string v3, "968"

    const-string v4, "Oman"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "pa"

    const-string v3, "507"

    const-string v4, "Panama"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "pe"

    const-string v3, "51"

    const-string v4, "Peru"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "pf"

    const-string v3, "689"

    const-string v4, "French Polynesia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1063
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "pg"

    const-string v3, "675"

    const-string v4, "Papua New Guinea"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ph"

    const-string v3, "63"

    const-string v4, "Philippines"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "pk"

    const-string v3, "92"

    const-string v4, "Pakistan"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "pl"

    const-string v3, "48"

    const-string v4, "Poland"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1067
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "pm"

    const-string v3, "508"

    const-string v4, "Saint Pierre And Miquelon"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "pn"

    const-string v3, "870"

    const-string v4, "Pitcairn"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1069
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "pr"

    const-string v3, "1"

    const-string v4, "Puerto Rico"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ps"

    const-string v3, "970"

    const-string v4, "Palestine"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "pt"

    const-string v3, "351"

    const-string v4, "Portugal"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "pw"

    const-string v3, "680"

    const-string v4, "Palau"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "py"

    const-string v3, "595"

    const-string v4, "Paraguay"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "qa"

    const-string v3, "974"

    const-string v4, "Qatar"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "re"

    const-string v3, "262"

    const-string v4, "R\u00e9union"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1076
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ro"

    const-string v3, "40"

    const-string v4, "Romania"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1077
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "rs"

    const-string v3, "381"

    const-string v4, "Serbia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1078
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ru"

    const-string v3, "7"

    const-string v4, "Russian Federation"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "rw"

    const-string v3, "250"

    const-string v4, "Rwanda"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "sa"

    const-string v3, "966"

    const-string v4, "Saudi Arabia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "sb"

    const-string v3, "677"

    const-string v4, "Solomon Islands"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "sc"

    const-string v3, "248"

    const-string v4, "Seychelles"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "sd"

    const-string v3, "249"

    const-string v4, "Sudan"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "se"

    const-string v3, "46"

    const-string v4, "Sweden"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "sg"

    const-string v3, "65"

    const-string v4, "Singapore"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "sh"

    const-string v3, "290"

    const-string v4, "Saint Helena, Ascension And Tristan Da Cunha"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "si"

    const-string v3, "386"

    const-string v4, "Slovenia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "sk"

    const-string v3, "421"

    const-string v4, "Slovakia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "sl"

    const-string v3, "232"

    const-string v4, "Sierra Leone"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "sm"

    const-string v3, "378"

    const-string v4, "San Marino"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "sn"

    const-string v3, "221"

    const-string v4, "Senegal"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "so"

    const-string v3, "252"

    const-string v4, "Somalia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "sr"

    const-string v3, "597"

    const-string v4, "Suriname"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "st"

    const-string v3, "239"

    const-string v4, "Sao Tome And Principe"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "sv"

    const-string v3, "503"

    const-string v4, "El Salvador"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "sx"

    const-string v3, "1"

    const-string v4, "Sint Maarten"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "sy"

    const-string v3, "963"

    const-string v4, "Syrian Arab Republic"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "sz"

    const-string v3, "268"

    const-string v4, "Swaziland"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "tc"

    const-string v3, "1"

    const-string v4, "Turks and Caicos Islands"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "td"

    const-string v3, "235"

    const-string v4, "Chad"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "tg"

    const-string v3, "228"

    const-string v4, "Togo"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "th"

    const-string v3, "66"

    const-string v4, "Thailand"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1103
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "tj"

    const-string v3, "992"

    const-string v4, "Tajikistan"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "tk"

    const-string v3, "690"

    const-string v4, "Tokelau"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "tl"

    const-string v3, "670"

    const-string v4, "Timor-leste"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1106
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "tm"

    const-string v3, "993"

    const-string v4, "Turkmenistan"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1107
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "tn"

    const-string v3, "216"

    const-string v4, "Tunisia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "to"

    const-string v3, "676"

    const-string v4, "Tonga"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1109
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "tr"

    const-string v3, "90"

    const-string v4, "Turkey"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1110
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "tt"

    const-string v3, "1"

    const-string v4, "Trinidad &amp; Tobago"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "tv"

    const-string v3, "688"

    const-string v4, "Tuvalu"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "tw"

    const-string v3, "886"

    const-string v4, "Taiwan"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1113
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "tz"

    const-string v3, "255"

    const-string v4, "Tanzania, United Republic Of"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ua"

    const-string v3, "380"

    const-string v4, "Ukraine"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ug"

    const-string v3, "256"

    const-string v4, "Uganda"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1116
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "us"

    const-string v3, "1"

    const-string v4, "United States"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "uy"

    const-string v3, "598"

    const-string v4, "Uruguay"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "uz"

    const-string v3, "998"

    const-string v4, "Uzbekistan"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "va"

    const-string v3, "379"

    const-string v4, "Holy See (vatican City State)"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "vc"

    const-string v3, "1"

    const-string v4, "Saint Vincent &amp; The Grenadines"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ve"

    const-string v3, "58"

    const-string v4, "Venezuela, Bolivarian Republic Of"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "vg"

    const-string v3, "1"

    const-string v4, "British Virgin Islands"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "vi"

    const-string v3, "1"

    const-string v4, "US Virgin Islands"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "vn"

    const-string v3, "84"

    const-string v4, "Viet Nam"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1125
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "vu"

    const-string v3, "678"

    const-string v4, "Vanuatu"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "wf"

    const-string v3, "681"

    const-string v4, "Wallis And Futuna"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ws"

    const-string v3, "685"

    const-string v4, "Samoa"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1128
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "xk"

    const-string v3, "383"

    const-string v4, "Kosovo"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1129
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "ye"

    const-string v3, "967"

    const-string v4, "Yemen"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "yt"

    const-string v3, "262"

    const-string v4, "Mayotte"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1131
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "za"

    const-string v3, "27"

    const-string v4, "South Africa"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "zm"

    const-string v3, "260"

    const-string v4, "Zambia"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    new-instance v1, Lcom/hbb20/CCPCountry;

    const-string v2, "zw"

    const-string v3, "263"

    const-string v4, "Zimbabwe"

    sget v5, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getLibraryMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker$Language;",
            ")",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 887
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 888
    :cond_0
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->loadDataFromXML(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)V

    .line 890
    :cond_1
    sget-object p0, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    return-object p0
.end method

.method static getLoadedLibraryMasterListLanguage()Lcom/hbb20/CountryCodePicker$Language;
    .locals 1

    .line 71
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    return-object v0
.end method

.method public static getLoadedLibraryMaterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    return-object v0
.end method

.method public static getNoResultFoundAckMessage(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;
    .locals 1

    .line 167
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/hbb20/CCPCountry;->noResultFoundAckMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hbb20/CCPCountry;->noResultFoundAckMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->loadDataFromXML(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)V

    .line 170
    :cond_1
    sget-object p0, Lcom/hbb20/CCPCountry;->noResultFoundAckMessage:Ljava/lang/String;

    return-object p0
.end method

.method public static getSearchHintMessage(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;
    .locals 1

    .line 160
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/hbb20/CCPCountry;->searchHintMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hbb20/CCPCountry;->searchHintMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->loadDataFromXML(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)V

    .line 163
    :cond_1
    sget-object p0, Lcom/hbb20/CCPCountry;->searchHintMessage:Ljava/lang/String;

    return-object p0
.end method

.method static loadDataFromXML(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)V
    .locals 9

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    .line 96
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 97
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 99
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker$Language;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "raw"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-virtual {v6, v7, v8, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    const-string v5, "UTF-8"

    .line 100
    invoke-interface {v4, p0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 101
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    :goto_0
    const/4 v5, 0x1

    if-eq p0, v5, :cond_4

    .line 103
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p0, "country"

    .line 108
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    .line 109
    new-instance p0, Lcom/hbb20/CCPCountry;

    invoke-direct {p0}, Lcom/hbb20/CCPCountry;-><init>()V

    const-string v5, "name_code"

    .line 110
    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/hbb20/CCPCountry;->setNameCode(Ljava/lang/String;)V

    const-string v5, "phone_code"

    .line 111
    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/hbb20/CCPCountry;->setPhoneCode(Ljava/lang/String;)V

    const-string v5, "english_name"

    .line 112
    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/hbb20/CCPCountry;->setEnglishName(Ljava/lang/String;)V

    const-string v5, "name"

    .line 113
    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/hbb20/CCPCountry;->setName(Ljava/lang/String;)V

    .line 114
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string p0, "ccp_dialog_title"

    .line 115
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "translation"

    .line 116
    invoke-interface {v4, v6, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    goto :goto_1

    :cond_1
    const-string p0, "ccp_dialog_search_hint_message"

    .line 117
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "translation"

    .line 118
    invoke-interface {v4, v6, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    goto :goto_1

    :cond_2
    const-string p0, "ccp_dialog_no_result_ack_message"

    .line 119
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "translation"

    .line 120
    invoke-interface {v4, v6, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v3, p0

    .line 124
    :cond_3
    :goto_1
    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    .line 126
    :cond_4
    sput-object p1, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    .line 132
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception p0

    .line 128
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_5

    .line 139
    sget-object p0, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    sput-object p0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    .line 140
    invoke-static {}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountriesEnglish()Ljava/util/List;

    move-result-object v0

    .line 143
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, "Select a country"

    :goto_3
    sput-object v1, Lcom/hbb20/CCPCountry;->dialogTitle:Ljava/lang/String;

    .line 144
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_7

    goto :goto_4

    :cond_7
    const-string v2, "Search..."

    :goto_4
    sput-object v2, Lcom/hbb20/CCPCountry;->searchHintMessage:Ljava/lang/String;

    .line 145
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_8

    goto :goto_5

    :cond_8
    const-string v3, "Results not found"

    :goto_5
    sput-object v3, Lcom/hbb20/CCPCountry;->noResultFoundAckMessage:Ljava/lang/String;

    .line 146
    sput-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    .line 149
    sget-object p0, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    .line 133
    :goto_6
    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setDialogTitle(Ljava/lang/String;)V
    .locals 0

    .line 174
    sput-object p0, Lcom/hbb20/CCPCountry;->dialogTitle:Ljava/lang/String;

    return-void
.end method

.method static setLoadedLibraryMasterListLanguage(Lcom/hbb20/CountryCodePicker$Language;)V
    .locals 0

    .line 75
    sput-object p0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    return-void
.end method

.method static setLoadedLibraryMaterList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;)V"
        }
    .end annotation

    .line 83
    sput-object p0, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    return-void
.end method

.method public static setNoResultFoundAckMessage(Ljava/lang/String;)V
    .locals 0

    .line 182
    sput-object p0, Lcom/hbb20/CCPCountry;->noResultFoundAckMessage:Ljava/lang/String;

    return-void
.end method

.method public static setSearchHintMessage(Ljava/lang/String;)V
    .locals 0

    .line 178
    sput-object p0, Lcom/hbb20/CCPCountry;->searchHintMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/hbb20/CCPCountry;)I
    .locals 2
    .param p1    # Lcom/hbb20/CCPCountry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1201
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    check-cast p1, Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, p1}, Lcom/hbb20/CCPCountry;->compareTo(Lcom/hbb20/CCPCountry;)I

    move-result p1

    return p1
.end method

.method public getEnglishName()Ljava/lang/String;
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/hbb20/CCPCountry;->englishName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlagID()I
    .locals 2

    .line 1146
    iget v0, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_0

    .line 1147
    invoke-static {p0}, Lcom/hbb20/CCPCountry;->getFlagMasterResID(Lcom/hbb20/CCPCountry;)I

    move-result v0

    iput v0, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    .line 1149
    :cond_0
    iget v0, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameCode()Ljava/lang/String;
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneCode()Ljava/lang/String;
    .locals 1

    .line 1161
    iget-object v0, p0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    return-object v0
.end method

.method isEligibleForQuery(Ljava/lang/String;)Z
    .locals 1

    .line 1195
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1196
    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getEnglishName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public log()V
    .locals 3

    .line 1178
    :try_start_0
    sget-object v0, Lcom/hbb20/CCPCountry;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Country->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1180
    :catch_0
    sget-object v0, Lcom/hbb20/CCPCountry;->TAG:Ljava/lang/String;

    const-string v1, "Null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method logString()Ljava/lang/String;
    .locals 2

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEnglishName(Ljava/lang/String;)V
    .locals 0

    .line 1142
    iput-object p1, p0, Lcom/hbb20/CCPCountry;->englishName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1173
    iput-object p1, p0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    return-void
.end method

.method public setNameCode(Ljava/lang/String;)V
    .locals 0

    .line 1157
    iput-object p1, p0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    return-void
.end method

.method public setPhoneCode(Ljava/lang/String;)V
    .locals 0

    .line 1165
    iput-object p1, p0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    return-void
.end method
