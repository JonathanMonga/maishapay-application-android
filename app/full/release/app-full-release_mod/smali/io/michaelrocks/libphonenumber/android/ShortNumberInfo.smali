.class public Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;
.super Ljava/lang/Object;
.source "ShortNumberInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;
    }
.end annotation


# static fields
.field private static final REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final countryCallingCodeToRegionCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final matcherApi:Lio/michaelrocks/libphonenumber/android/internal/MatcherApi;

.field private final metadataSource:Lio/michaelrocks/libphonenumber/android/MetadataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-class v0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->logger:Ljava/util/logging/Logger;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    .line 51
    sget-object v0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    const-string v1, "BR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    const-string v1, "CL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    const-string v1, "NI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Lio/michaelrocks/libphonenumber/android/MetadataSource;Lio/michaelrocks/libphonenumber/android/internal/MatcherApi;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->metadataSource:Lio/michaelrocks/libphonenumber/android/MetadataSource;

    .line 79
    iput-object p2, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->matcherApi:Lio/michaelrocks/libphonenumber/android/internal/MatcherApi;

    .line 82
    invoke-static {}, Lio/michaelrocks/libphonenumber/android/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    return-void
.end method

.method private static getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 3

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    new-array v1, v1, [C

    const/16 v2, 0x30

    .line 538
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 539
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    :cond_0
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRegionCodeForShortNumberFromRegionList(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 317
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 319
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 p1, 0x0

    .line 320
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 322
    :cond_1
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->metadataSource:Lio/michaelrocks/libphonenumber/android/MetadataSource;

    invoke-interface {v2, v0}, Lio/michaelrocks/libphonenumber/android/MetadataSource;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 326
    invoke-virtual {v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getShortCode()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_3
    return-object v1
.end method

.method private getRegionCodesForCountryCode(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private matchesEmergencyNumberHelper(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z
    .locals 3

    .line 433
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 434
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 440
    :cond_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->metadataSource:Lio/michaelrocks/libphonenumber/android/MetadataSource;

    invoke-interface {v0, p2}, Lio/michaelrocks/libphonenumber/android/MetadataSource;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 441
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasEmergency()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 445
    :cond_1
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_2

    .line 446
    sget-object p3, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    .line 447
    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 v1, 0x1

    .line 448
    :cond_2
    iget-object p2, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->matcherApi:Lio/michaelrocks/libphonenumber/android/internal/MatcherApi;

    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getEmergency()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object p3

    invoke-interface {p2, p1, p3, v1}, Lio/michaelrocks/libphonenumber/android/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Z
    .locals 3

    .line 549
    invoke-virtual {p2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 550
    invoke-virtual {p2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 553
    :cond_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->matcherApi:Lio/michaelrocks/libphonenumber/android/internal/MatcherApi;

    invoke-interface {v0, p1, p2, v1}, Lio/michaelrocks/libphonenumber/android/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result p1

    return p1
.end method

.method private regionDialingFromMatchesNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 0

    .line 102
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result p1

    invoke-direct {p0, p1}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object p1

    .line 103
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 412
    invoke-direct {p0, p1, p2, v0}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->matchesEmergencyNumberHelper(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method getExampleShortNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->metadataSource:Lio/michaelrocks/libphonenumber/android/MetadataSource;

    invoke-interface {v0, p1}, Lio/michaelrocks/libphonenumber/android/MetadataSource;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 355
    :cond_0
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getShortCode()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object p1

    .line 356
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method getExampleShortNumberForCost(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;)Ljava/lang/String;
    .locals 2

    .line 372
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->metadataSource:Lio/michaelrocks/libphonenumber/android/MetadataSource;

    invoke-interface {v0, p1}, Lio/michaelrocks/libphonenumber/android/MetadataSource;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 377
    sget-object v1, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$1;->$SwitchMap$io$michaelrocks$libphonenumber$android$ShortNumberInfo$ShortNumberCost:[I

    invoke-virtual {p2}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 379
    :pswitch_0
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getTollFree()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 382
    :pswitch_1
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getStandardRate()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getPremiumRate()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 391
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 392
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getExpectedCost(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;
    .locals 7

    .line 281
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 283
    sget-object p1, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;

    return-object p1

    .line 285
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 286
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getExpectedCostForRegion(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;

    move-result-object p1

    return-object p1

    .line 288
    :cond_1
    sget-object v1, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 290
    invoke-virtual {p0, p1, v2}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getExpectedCostForRegion(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;

    move-result-object v2

    .line 291
    sget-object v3, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$1;->$SwitchMap$io$michaelrocks$libphonenumber$android$ShortNumberInfo$ShortNumberCost:[I

    invoke-virtual {v2}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 306
    sget-object v3, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognised cost for region: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :pswitch_1
    sget-object v2, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;

    if-eq v1, v2, :cond_2

    .line 299
    sget-object v1, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;

    goto :goto_0

    .line 295
    :pswitch_2
    sget-object v1, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;

    goto :goto_0

    .line 293
    :pswitch_3
    sget-object p1, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;

    return-object p1

    :cond_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getExpectedCostForRegion(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;
    .locals 3

    .line 222
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->regionDialingFromMatchesNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    sget-object p1, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;

    return-object p1

    .line 226
    :cond_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->metadataSource:Lio/michaelrocks/libphonenumber/android/MetadataSource;

    invoke-interface {v0, p2}, Lio/michaelrocks/libphonenumber/android/MetadataSource;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    if-nez v0, :cond_1

    .line 229
    sget-object p1, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;

    return-object p1

    .line 232
    :cond_1
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 238
    sget-object p1, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;

    return-object p1

    .line 243
    :cond_2
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getPremiumRate()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 244
    sget-object p1, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;

    return-object p1

    .line 246
    :cond_3
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getStandardRate()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    sget-object p1, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;

    return-object p1

    .line 249
    :cond_4
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getTollFree()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 250
    sget-object p1, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;

    return-object p1

    .line 252
    :cond_5
    invoke-virtual {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 254
    sget-object p1, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;

    return-object p1

    .line 256
    :cond_6
    sget-object p1, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lio/michaelrocks/libphonenumber/android/ShortNumberInfo$ShortNumberCost;

    return-object p1
.end method

.method getSupportedRegions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 339
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isCarrierSpecific(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Z
    .locals 2

    .line 464
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 465
    invoke-direct {p0, p1, v0}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getRegionCodeForShortNumberFromRegionList(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 467
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->metadataSource:Lio/michaelrocks/libphonenumber/android/MetadataSource;

    invoke-interface {v1, v0}, Lio/michaelrocks/libphonenumber/android/MetadataSource;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getCarrierSpecific()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 469
    invoke-direct {p0, p1, v0}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCarrierSpecificForRegion(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 2

    .line 487
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->regionDialingFromMatchesNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 490
    :cond_0
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 491
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->metadataSource:Lio/michaelrocks/libphonenumber/android/MetadataSource;

    .line 492
    invoke-interface {v0, p2}, Lio/michaelrocks/libphonenumber/android/MetadataSource;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 495
    invoke-virtual {p2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getCarrierSpecific()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object p2

    .line 494
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 428
    invoke-direct {p0, p1, p2, v0}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->matchesEmergencyNumberHelper(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isPossibleShortNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Z
    .locals 3

    .line 137
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 138
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->metadataSource:Lio/michaelrocks/libphonenumber/android/MetadataSource;

    invoke-interface {v2, v1}, Lio/michaelrocks/libphonenumber/android/MetadataSource;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isPossibleShortNumberForRegion(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 2

    .line 115
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->regionDialingFromMatchesNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 118
    :cond_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->metadataSource:Lio/michaelrocks/libphonenumber/android/MetadataSource;

    .line 119
    invoke-interface {v0, p2}, Lio/michaelrocks/libphonenumber/android/MetadataSource;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object p2

    if-nez p2, :cond_1

    return v1

    .line 123
    :cond_1
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 124
    invoke-virtual {p2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object p2

    invoke-virtual {p2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSmsServiceForRegion(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 2

    .line 512
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->regionDialingFromMatchesNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 515
    :cond_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->metadataSource:Lio/michaelrocks/libphonenumber/android/MetadataSource;

    .line 516
    invoke-interface {v0, p2}, Lio/michaelrocks/libphonenumber/android/MetadataSource;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 518
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 519
    invoke-virtual {p2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getSmsServices()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object p2

    .line 518
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isValidShortNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Z
    .locals 3

    .line 188
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-direct {p0, p1, v0}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getRegionCodeForShortNumberFromRegionList(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    if-eqz v1, :cond_0

    return v2

    .line 195
    :cond_0
    invoke-virtual {p0, p1, v1}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->isValidShortNumberForRegion(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isValidShortNumberForRegion(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 2

    .line 161
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->regionDialingFromMatchesNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 164
    :cond_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->metadataSource:Lio/michaelrocks/libphonenumber/android/MetadataSource;

    .line 165
    invoke-interface {v0, p2}, Lio/michaelrocks/libphonenumber/android/MetadataSource;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object p2

    if-nez p2, :cond_1

    return v1

    .line 169
    :cond_1
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-virtual {p2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 171
    invoke-direct {p0, p1, v0}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 174
    :cond_2
    invoke-virtual {p2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getShortCode()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    move-result-object p2

    .line 175
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Z

    move-result p1

    return p1
.end method
