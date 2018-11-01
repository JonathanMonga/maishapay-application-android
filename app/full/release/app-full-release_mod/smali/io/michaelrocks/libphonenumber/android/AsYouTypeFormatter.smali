.class public Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;
.super Ljava/lang/Object;
.source "AsYouTypeFormatter.java"


# static fields
.field private static final CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

.field private static final DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DIGIT_PLACEHOLDER:Ljava/lang/String; = "\u2008"

.field private static final ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final EMPTY_METADATA:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

.field private static final MIN_LEADING_DIGITS_LENGTH:I = 0x3

.field private static final NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_BEFORE_NATIONAL_NUMBER:C = ' '

.field private static final STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private ableToFormat:Z

.field private accruedInput:Ljava/lang/StringBuilder;

.field private accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

.field private currentFormattingPattern:Ljava/lang/String;

.field private currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

.field private currentOutput:Ljava/lang/String;

.field private defaultCountry:Ljava/lang/String;

.field private defaultMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

.field private extractedNationalPrefix:Ljava/lang/String;

.field private formattingTemplate:Ljava/lang/StringBuilder;

.field private inputHasFormatting:Z

.field private isCompleteNumber:Z

.field private isExpectingCountryCallingCode:Z

.field private lastMatchPosition:I

.field private nationalNumber:Ljava/lang/StringBuilder;

.field private originalPosition:I

.field private final phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

.field private positionToRemember:I

.field private possibleFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

.field private regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

.field private shouldAddSpaceAfterNationalPrefix:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;-><init>()V

    const-string v1, "NA"

    .line 67
    invoke-virtual {v0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->EMPTY_METADATA:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    const-string v0, "\\[([^\\[\\]])*\\]"

    .line 73
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\d(?=[^,}][^,}])"

    .line 79
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*(\\$\\d[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*)+"

    .line 87
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[- ]"

    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\u2008"

    .line 101
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Ljava/lang/String;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 58
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 59
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 102
    iput v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    .line 105
    iput v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->originalPosition:I

    .line 108
    iput v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->positionToRemember:I

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    .line 113
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    const-string v0, ""

    .line 116
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    .line 121
    new-instance v0, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;-><init>(I)V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    .line 131
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    .line 132
    iput-object p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    .line 133
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object p1

    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 134
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->defaultMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    return-void
.end method

.method private ableToExtractLongerNdd()Z
    .locals 3

    .line 413
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 415
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 420
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 422
    :cond_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 475
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 476
    iget-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    .line 477
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private attemptToChooseFormattingPattern()Ljava/lang/String;
    .locals 2

    .line 496
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 498
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->getAvailableFormats(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    .line 504
    :cond_0
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 506
    :cond_2
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 398
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 399
    iput v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    .line 400
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, ""

    .line 401
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 402
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private attemptToExtractCountryCallingCode()Z
    .locals 4

    .line 603
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 606
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 611
    :cond_1
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 612
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 613
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v0, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "001"

    .line 614
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 615
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v0, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 616
    :cond_2
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 617
    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 619
    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ""

    .line 623
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method private attemptToExtractIdd()Z
    .locals 5

    .line 575
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\+|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 577
    invoke-virtual {v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-virtual {v0, v1}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 580
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 581
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 582
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 583
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 585
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    .line 588
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method private createFormattingTemplate(Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)Z
    .locals 4

    .line 224
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7c

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    return v2

    .line 233
    :cond_0
    sget-object v1, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "\\\\d"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    sget-object v1, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "\\\\d"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 238
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 240
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method private getAvailableFormats(Ljava/lang/String;)V
    .locals 4

    .line 180
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 181
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 182
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 183
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v0

    .line 184
    :goto_0
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefix()Z

    move-result v1

    .line 185
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    if-eqz v1, :cond_2

    .line 186
    iget-boolean v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    if-nez v3, :cond_2

    .line 188
    invoke-virtual {v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v3

    if-nez v3, :cond_2

    .line 190
    invoke-virtual {v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-static {v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    :cond_2
    invoke-virtual {v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isFormatEligible(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    :cond_3
    invoke-direct {p0, p1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    return-void
.end method

.method private getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "999999999999999"

    .line 252
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 254
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string p1, ""

    return-object p1

    .line 261
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "9"

    const-string v0, "\u2008"

    .line 263
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 140
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result p1

    .line 141
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 148
    :cond_0
    sget-object p1, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->EMPTY_METADATA:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    return-object p1
.end method

.method private inputAccruedNationalNumber()Ljava/lang/String;
    .locals 3

    .line 515
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 519
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    :cond_0
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 523
    :cond_2
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private inputDigitHelper(C)Ljava/lang/String;
    .locals 5

    .line 652
    sget-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 653
    iget v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 654
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 655
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    iput p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    .line 657
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    iget v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 659
    :cond_0
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 662
    iput-boolean v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    :cond_1
    const-string p1, ""

    .line 664
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 665
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;
    .locals 3

    .line 320
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 322
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->originalPosition:I

    .line 326
    :cond_0
    invoke-direct {p0, p1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isDigitOrLeadingPlusSign(C)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 327
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    .line 328
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputHasFormatting:Z

    goto :goto_0

    .line 330
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->normalizeAndAccrueDigitsAndPlusSign(CZ)C

    move-result p1

    .line 332
    :goto_0
    iget-boolean p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    if-nez p2, :cond_5

    .line 336
    iget-boolean p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputHasFormatting:Z

    if-eqz p1, :cond_2

    .line 337
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 338
    :cond_2
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 339
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 340
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 342
    :cond_3
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToExtractLongerNdd()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 346
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 349
    :cond_4
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 354
    :cond_5
    iget-object p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 360
    :pswitch_0
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 361
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    goto :goto_1

    .line 363
    :cond_6
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 364
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 358
    :pswitch_1
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 368
    :goto_1
    iget-boolean p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    if-eqz p2, :cond_8

    .line 369
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 370
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 372
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 374
    :cond_8
    iget-object p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_c

    .line 375
    invoke-direct {p0, p1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object p2

    .line 379
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    return-object p2

    .line 382
    :cond_9
    iget-object p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 383
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 384
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 386
    :cond_a
    iget-boolean p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz p2, :cond_b

    .line 387
    invoke-direct {p0, p1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    .line 390
    :cond_c
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDigitOrLeadingPlusSign(C)Z
    .locals 2

    .line 426
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 428
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isFormatEligible(Ljava/lang/String;)Z
    .locals 1

    .line 200
    sget-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private isNanpaNumberWithNationalPrefix()Z
    .locals 5

    .line 536
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v3, 0x31

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private maybeCreateNewTemplate()Z
    .locals 5

    .line 155
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 156
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 158
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v3

    .line 159
    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    .line 162
    :cond_0
    invoke-direct {p0, v1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->createFormattingTemplate(Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    iput-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 164
    sget-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 166
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 169
    iput v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    const/4 v0, 0x1

    return v0

    .line 172
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 175
    :cond_2
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    return v2
.end method

.method private narrowDownPossibleFormats(Ljava/lang/String;)V
    .locals 5

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 205
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 208
    invoke-virtual {v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 214
    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    .line 215
    invoke-virtual {v2, v3}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {v4, v2}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 216
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private normalizeAndAccrueDigitsAndPlusSign(CZ)C
    .locals 1

    const/16 v0, 0x2b

    if-ne p1, v0, :cond_0

    .line 636
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 639
    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result p1

    .line 640
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 641
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz p2, :cond_1

    .line 644
    iget-object p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    iput p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->positionToRemember:I

    :cond_1
    return p1
.end method

.method private removeNationalPrefixFromNationalNumber()Ljava/lang/String;
    .locals 4

    .line 543
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isNanpaNumberWithNationalPrefix()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v3, 0x31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    goto :goto_0

    .line 547
    :cond_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 549
    invoke-virtual {v3}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 550
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    if-lez v3, :cond_1

    .line 557
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 558
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 559
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    move v1, v2

    .line 562
    :goto_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 563
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method attemptToFormatAccruedDigits()Ljava/lang/String;
    .locals 4

    .line 436
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 437
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 438
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 439
    sget-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 441
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 442
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public clear()V
    .locals 2

    const-string v0, ""

    .line 271
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 273
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 274
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 275
    iput v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    const-string v0, ""

    .line 276
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, ""

    .line 278
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    .line 281
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 282
    iput v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->positionToRemember:I

    .line 283
    iput v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->originalPosition:I

    .line 284
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 285
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 286
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 287
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 288
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->defaultMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    :cond_0
    return-void
.end method

.method getExtractedNationalPrefix()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRememberedPosition()I
    .locals 4

    .line 454
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v0, :cond_0

    .line 455
    iget v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->originalPosition:I

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 459
    :goto_0
    iget v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->positionToRemember:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 460
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 461
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public inputDigit(C)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 303
    invoke-direct {p0, p1, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 304
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    return-object p1
.end method

.method public inputDigitAndRememberPosition(C)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 314
    invoke-direct {p0, p1, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 315
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    return-object p1
.end method
